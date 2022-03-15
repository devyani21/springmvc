package helperland_springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import helperland_springmvc.model.Contactus;
import helperland_springmvc.model.User;
import helperland_springmvc.service.ContactusService;
import helperland_springmvc.service.UserService;

@Controller
public class ContactusController {
	
	@Autowired
	UserService userService;
	@Autowired
	ContactusService contactusService;
	
	@RequestMapping(value="/contact", method = RequestMethod.GET)
	public ModelAndView ShowContact(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("contact");
		mav.addObject("contactus", new Contactus());
		return mav;
		
	}
	
	@RequestMapping(value="/contact", method = RequestMethod.POST)
	public String ProcessContact(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("contactus") Contactus contactus,Model model){
		System.out.println("process contact");
		User user = userService.getUserByEmail(contactus.getEmail());
		if(user != null) {
			
			contactus.setCreated_by(user.getUser_type_id());
			contactusService.SaveContact(contactus);
		}
		else {
			model.addAttribute("errmsg","User does not exists!");
		}
		return "contact";

}
}
