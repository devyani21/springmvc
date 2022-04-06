package helperland_springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import helperland_springmvc.model.User;
import helperland_springmvc.service.EmailService;
import helperland_springmvc.service.UserService;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class RegistrationController {
	@Autowired
	public UserService userService;
	@Autowired
	EmailService emailService;
	
	@RequestMapping(value="/customer-register", method = RequestMethod.GET)
	public ModelAndView register(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("register...");
		ModelAndView mav = new ModelAndView("customer-register");
		mav.addObject("user", new User());
		return mav;
	}
	
	@RequestMapping(value="/customer-register", method = RequestMethod.POST)
	public @ResponseBody String addUser(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("user") User user) {
		if(userService.preventDuplicateEmail(user)) {
			user.setUser_type_id(1);
			user.setIs_active(1);
			user.setIs_approved(1);
			user.setIs_deleted(0);
			userService.register(user);
			System.out.println("addUser..");
			//return new ModelAndView("registerProcess", "first_name", user.getFirst_name());
			return "true";
		}
		else {
			//return new ModelAndView("customer-register", "error_msg", "User already exists with this email!");
			return "false";
		}
	}
	
	@RequestMapping(value="/become-service-provider", method = RequestMethod.GET)
	public ModelAndView serviceProviderRegister(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("register...");
		ModelAndView mav = new ModelAndView("become-service-provider");
		mav.addObject("user", new User());
		return mav;
	}
	
	@RequestMapping(value="/become-service-provider", method = RequestMethod.POST)
	public @ResponseBody String addServiceProvider(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("user") User user) {
		if(userService.preventDuplicateEmail(user)) {
			user.setUser_type_id(2);
			user.setIs_active(0);
			user.setIs_approved(0);
			user.setIs_deleted(0);
			userService.register(user);
			String message = "Hello, New Service Provider Registered with "+user.getEmail()+" email id!!";
			String subject = "New Service Provider";
			String to = "helperlandproject@gmail.com";
			String from = "helperlandproject@gmail.com";
			emailService.sendEmail(message, subject, to, from);
			System.out.println("addUser..");
			//return new ModelAndView("registerProcess", "first_name", user.getFirst_name());
			return "true";
		}
		else {
			return "false";
			//return new ModelAndView("become-service-provider", "error_msg", "User already exists with this email!");
		}
		
		
	}
	
}
	
	