package helperland_springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import helperland_springmvc.model.Login;
import helperland_springmvc.service.UserService;
import helperland_springmvc.model.User;

@Controller
public class LoginController {

  @Autowired
  UserService userService;

  @RequestMapping(value = "/loginProcess", method = RequestMethod.GET)
  public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView mav = new ModelAndView("loginProcess");
    mav.addObject("login", new Login());

    return mav;
  }

  @RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
  public @ResponseBody String loginProcess(HttpServletRequest request, HttpServletResponse response,
  @ModelAttribute("login") Login login,Model model) {
   // ModelAndView mav = null;

    User user = userService.validateUser(login);

    if (user != null) {
    	HttpSession session = request.getSession();
    	
    	if(user.getUser_type_id() == 1) {
    		session.setAttribute("userinfo", user);
    		return "customer";
	        //return "redirect:/customer-dashboard";
	        //mav.addObject("first_name", user.getFirst_name());
    	}
    	else if(user.getUser_type_id() == 2) {
    		if(user.getIs_approved() == 1 && user.getIs_active() == 1) {
    			session.setAttribute("userinfo", user);
    			return "service-provider";
    			//return "redirect:/sp-dashboard";
    		}
    		else {
    			//model.addAttribute("errmsg","Please wait for the admin to approve and activate your account!");
    			return "false";
    		}
    		
	        //mav.addObject("first_name", user.getFirst_name());
    	}
    	else if(user.getUser_type_id() == 0) {
    		session.setAttribute("userinfo", user);
    		return "admin";
    		//mav = new ModelAndView("redirect:/service-requests");
    	}
    	else {
    		return "home";
    		//mav = new ModelAndView("redirect:/");
    	}
    	
     } else {
        	System.out.println("Running else condition...");
        //mav = new ModelAndView("loginProcess");
        //model.addAttribute("errmsg", "Invalid Username or Password");
        return "invalid";
        }

      }
  
  @RequestMapping(value="/logout")
  public String Logout(HttpServletRequest request, HttpServletResponse response) {
	  HttpSession session = request.getSession();
	  session.invalidate();
	  return "redirect:/";
  }

    }
