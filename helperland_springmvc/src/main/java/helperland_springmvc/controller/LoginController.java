package helperland_springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
  public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
  @ModelAttribute("login") Login login) {
    ModelAndView mav = null;

    User user = userService.validateUser(login);

    if (user != null) {
    	HttpSession session = request.getSession();
    	session.setAttribute("userinfo", user);
        mav = new ModelAndView("customer-dashboard");
        mav.addObject("first_name", user.getFirst_name());
        } else {
        	System.out.println("Running else condition...");
        mav = new ModelAndView("loginProcess");
        mav.addObject("invalid_login", "Username or Password is wrong!!");
        }

        return mav;
      }
  
  @RequestMapping(value="/logout")
  public String Logout(HttpServletRequest request, HttpServletResponse response) {
	  HttpSession session = request.getSession();
	  session.invalidate();
	  return "redirect:/";
  }

    }
