package helperland_springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class controller {
	@RequestMapping({"/","/home"})
	public String index() {
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
	
	@RequestMapping("/become-service-provider")
	public String become_service_provider() {
		return "become-service-provider";
	}
	
	

}
