package helperland_springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import helperland_springmvc.model.User;
import helperland_springmvc.service.UserService;

@Controller
public class controller {
	
	@Autowired
	public UserService userService;
	
	@RequestMapping({"/","/home"})
	public String index(HttpServletRequest request, HttpServletResponse response, Model model) {
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			User userinfo = (User)session.getAttribute("userinfo");
			//model.addAttribute("usertypeid", userinfo.getUser_type_id());
			//request.setAttribute("userid", userinfo.getUser_id());
			return "index";
		}
		else {
			//model.addAttribute("usertypeid",5);
			return "index";
		}

		
    }
	
	@RequestMapping("/prices")
	
    public String prices() {
    	return "prices";
	}

	@RequestMapping("/faq")
	public String faq() {
		return "faq";
	}
	
	@RequestMapping("/about")
	public String about() {
		return "about";
	}
	
	

}
