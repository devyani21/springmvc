package helperland_springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class controller {
	@RequestMapping("/")
	public String index() {
		return "index";
    }
	
	@RequestMapping("/home")
	public String home() {
		return "index";
	}
	
	@RequestMapping("/prices")
    public String prices() {
    	return "prices";
	}
	
	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}

	@RequestMapping("/faq")
	public String faq() {
		return "faq";
	}
	
	@RequestMapping("/about")
	public String about() {
		return "about";
	}
	
	@RequestMapping("/customer-register")
	public String customer_register() {
		return "customer-register";
	}
}
