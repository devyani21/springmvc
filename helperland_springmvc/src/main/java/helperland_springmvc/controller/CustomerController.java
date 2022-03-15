package helperland_springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerController {
	@RequestMapping(value="/customer-dashboard")
	public String showCustomerDashboard(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			return "customer-dashboard";
		}
		else {
			return "index";
		}
	}
}
