package helperland_springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.*;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sun.xml.bind.Util;

import net.bytebuddy.utility.*;
import helperland_springmvc.controller.Utility;
import helperland_springmvc.model.Login;
import helperland_springmvc.service.EmailService;
import helperland_springmvc.service.UserService;
import helperland_springmvc.model.User;
import helperland_springmvc.dao.*;

@Controller
public class ForgotPassword {
	@Autowired
	  UserService userService;
	@Autowired
	EmailService emailService;

	@RequestMapping(value="/forgotPassword", method = RequestMethod.GET)
	public ModelAndView showForgotPassword(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("showForgotPassword..");
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("user", new User());
		return mav;
	}
	
	
	@RequestMapping(value = "/forgotPassword", method = RequestMethod.POST)
	
	public @ResponseBody String forgotPassword(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("user") User user) {
		//ModelAndView mav = null;

//		String custString=cust.toString();
		
		if(userService.preventDuplicateEmail(user)) {
			System.out.println("forgotPassword...");
			return "false";
		}
		else {
			String token = RandomString.make(36);
			user.setReset_token(token);
			userService.updateResetPasswordToken(user);
			String resetPasswordLink = Utility.getSiteURL(request) + "/resetPassword?token=" + token;
//			String url = "http://localhost:8082/registration_and_login/forgotPassword";
			String message = "Hello,"
		            + "You have requested to reset your password."
		            + "Click the link below to change your password: "
		            + "<a href=\"" + resetPasswordLink + "\">Change my password</a>"
		            + "<br>"
		            + "Ignore this email if you do remember your password, "
		            + "or you have not made the request.";
			String subject = "Reset Password";
			String to = user.getEmail();
			String from = "helperlandproject@gmail.com";
			emailService.sendEmail(message, subject, to, from);
			System.out.println("email sent");
			return "true";
		}
		
				
	}
	
	@RequestMapping(value="/resetPassword", method=RequestMethod.GET)
	public String showResetPassword(HttpServletRequest request, HttpServletResponse response,@Param(value="token") String token,Model model) {
		User user = userService.getByResetPasswordToken(token);
		model.addAttribute("token", token);
		
		if(user == null) {
			model.addAttribute("msg", "Invalid token");
			return "msg";
		}
		
		return "resetPassword";
	}
	
	@RequestMapping(value="/resetPassword", method=RequestMethod.POST)
	public String resetPassword(HttpServletRequest request, HttpServletResponse response, Model model) {
	    String token = request.getParameter("token");
	    String password = request.getParameter("new_password");
	     
	    User user = userService.getByResetPasswordToken(token);
	    model.addAttribute("msg", "Reset your password");
	     
	    if (user == null) {
	        model.addAttribute("msg", "Invalid Token");
	        return "resetPassword";
	    } else {           
	        userService.updatePassword(user, password);
	         
	        model.addAttribute("msg", "You have successfully changed your password.");
	    }
	     
	    return "resetPassword";
	}
}

 class Utility {
    public static String getSiteURL(HttpServletRequest request) {
        String siteURL = request.getRequestURL().toString();
        return siteURL.replace(request.getServletPath(), "");
    }
}
