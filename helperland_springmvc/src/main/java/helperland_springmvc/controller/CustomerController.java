package helperland_springmvc.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import helperland_springmvc.model.User;
import helperland_springmvc.model.ServiceRequest;
import helperland_springmvc.model.ServiceRequestAddress;
import helperland_springmvc.service.ServiceRequestService;
import helperland_springmvc.service.UserService;

@Controller
public class CustomerController {
	@Autowired
	UserService userService;
	@Autowired
	ServiceRequestService serviceRequestService;
	
	@RequestMapping(value="/customer-dashboard")
	public String showCustomerDashboard(HttpServletRequest request, HttpServletResponse response, Model model) {
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			User userinfo = (User)session.getAttribute("userinfo");
			System.out.println("customer dashboard controller...");
			int userid = userinfo.getUser_id();
			List<ServiceRequest> sr = serviceRequestService.getAllPendingRequestByUserId(userid);
			Set<User> users = new HashSet<User>();
			List<ServiceRequestAddress> srAddress = new ArrayList<ServiceRequestAddress>();
			//Map<Integer, Integer> spRating = new HashMap<Integer, Integer>();
			users.add(userinfo);
			for(ServiceRequest i : sr) {
				System.out.println("service_req_id is");
				ServiceRequestAddress a = serviceRequestService.getServiceRequestAddressByServiceRequestId(i.getService_req_id());
				srAddress.add(a);
				if(i.getUser_id() != i.getService_provider_id()) {
					User userSP = this.userService.getUserByUserId(i.getService_provider_id());
					users.add(userSP);
					//int avgRating = avgRatingCount(i.getService_provider_id());
					//spRating.put(i.getService_provider_id(), avgRating);
				}
			}
			
//			for(ServiceRequest i:sr) {
//				String str = i.getService_start_time();
//				str = str.replaceAll("\\s.*", "");
//				str = str.replaceAll(":", ".");
//				i.setService_start_time(str);
//				System.out.println("str:-" +str);
//				float service_start_time = Float.parseFloat(str);
//				System.out.println("service_start_time:-" + service_start_time);
//				float total_service_time = service_start_time + i.getService_hours() + i.getExtra_hours();
//				System.out.println("total_service_time:- "+total_service_time);
//				String newstr = String.valueOf(total_service_time);
//				System.out.println("newstr= " + newstr);
//				newstr = newstr.replace(".", ":");
//				System.out.println("newstr:- " + newstr);
//				i.setTotal_service_time(newtotalservicetime);	
//			}
			model.addAttribute("servicerequests", sr);
			model.addAttribute("users" , users);
			model.addAttribute("srAddress" , srAddress);
			return "/customer/customer-dashboard";
		}
		else {
			return "index";
		}
	}
	
	@RequestMapping(value="/customer-settings")
	public String showCustomerSettings(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			return "/customer/customer-profile";
		}
		else {
			return "index";
		}
	}
	
	@RequestMapping(value="/personal-details", method=RequestMethod.POST)
	public @ResponseBody String updatePersonalDetails(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("user") User user) {
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			
			User userinfo = (User)session.getAttribute("userinfo");
			int userid =  userinfo.getUser_id();
			user.setModified_by(userinfo.getUser_id());
			System.out.println(user.toString());
			userService.updateCustomerDetails(user,userid);
			System.out.println("details updated successfully...");
			return "true";
			
		}
		else {
			return "false";
		}
	}
	
	@RequestMapping(value="/change-password", method=RequestMethod.POST)
	public @ResponseBody String changePassword(HttpServletRequest request, HttpServletResponse response,@RequestParam String oldpassword, @RequestParam String newpassword) {
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			User userinfo = (User)session.getAttribute("userinfo");
			System.out.println(oldpassword );
			int userid =  userinfo.getUser_id();
			User user = new User();
			user.setUser_id(userinfo.getUser_id());
			user.setModified_by(userinfo.getUser_type_id());
			user.setEmail(userinfo.getEmail());
			String oldpassword2 = (String)userService.getUserPasswordByUserId(userid);
			System.out.println("oldpassword2 is "+ oldpassword2);
			if(oldpassword.equals(oldpassword2)) {
				userService.changeUserPassword(user, userid, newpassword);
				return "true";
			}
			else {
				return "false";
			}
			
		}
		else {
			return "false";
		}
	}
}
