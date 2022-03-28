package helperland_springmvc.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sun.istack.logging.Logger;

import helperland_springmvc.model.User;
import helperland_springmvc.model.Rating;
import helperland_springmvc.model.ServiceRequest;
import helperland_springmvc.model.ServiceRequestAddress;
import helperland_springmvc.model.ServiceRequestExtra;
import helperland_springmvc.service.ServiceRequestService;
import helperland_springmvc.service.UserService;

@Controller
public class SPController {
	@Autowired
	UserService userService;
	@Autowired
	ServiceRequestService serviceRequestService;
	
	  // Replace with KK:mma if you want 0-11 interval
	  private static final DateFormat TWELVE_TF = new SimpleDateFormat("hh:mma");
	  // Replace with kk:mm if you want 1-24 interval
	  private static final DateFormat TWENTY_FOUR_TF = new SimpleDateFormat("HH:mm");
	  private static final DateFormat outFormat = new SimpleDateFormat( "HH:mm");

	
	public static String convertTo24HoursFormat(String twelveHourTime)
	        throws ParseException {
	    return TWENTY_FOUR_TF.format(
	            TWELVE_TF.parse(twelveHourTime));
	  }
	
	public static Date convertToDate(String twentyfourhourtime) throws ParseException{
		return outFormat.parse(twentyfourhourtime);
	}
	
	public int avgRatingCount(int service_provider_id) {
		
		List<Rating> ratings = serviceRequestService.getRatingsByRatingTo(service_provider_id);
		
		
		int avgRating = 0; 
		
		for(Rating i : ratings) {
			   avgRating = (int) (avgRating + i.getRatings());
		}
		
		if(ratings.size() == 0) {
			avgRating = avgRating / 1;
		}
		else {
			avgRating = avgRating / ratings.size();
		}			
		
		return avgRating;
}
	
	@RequestMapping(value="/sp-dashboard")
	public String showCustomerDashboard(HttpServletRequest request, HttpServletResponse response, Model model,@RequestParam(value="pets",defaultValue="1") int pets) {
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			User userinfo = (User)session.getAttribute("userinfo");
			System.out.println("SP dashboard controller...");
			int userid = userinfo.getUser_id();
			if(pets == 1) {
				List<ServiceRequest> sr = serviceRequestService.getAllServiceRequestByPostalCode(userinfo.getPostal_code());
				Set<User> users = new HashSet<User>();
				List<ServiceRequestAddress> srAddress = new ArrayList<ServiceRequestAddress>();
				users.add(userinfo);
				if(sr != null) {
					for(ServiceRequest i : sr) {
						System.out.println("service_req_id is"+i.getService_req_id());
						ServiceRequestAddress a = serviceRequestService.getServiceRequestAddressByServiceRequestId(i.getService_req_id());
						srAddress.add(a);
						System.out.println("user_id is"+i.getUser_id());
						User customer = userService.getUserByUserId(i.getUser_id());
						users.add(customer);
					}
					
					
				}
				model.addAttribute("servicerequests", sr);
				model.addAttribute("users" , users);
				model.addAttribute("srAddress" , srAddress);
			}
			else {
				List<ServiceRequest> sr = serviceRequestService.getAllServiceRequestByPostalCodeHavingNoPets(userinfo.getPostal_code());
				Set<User> users = new HashSet<User>();
				List<ServiceRequestAddress> srAddress = new ArrayList<ServiceRequestAddress>();
				users.add(userinfo);
				if(sr != null) {
					for(ServiceRequest i : sr) {
						System.out.println("service_req_id is"+i.getService_req_id());
						ServiceRequestAddress a = serviceRequestService.getServiceRequestAddressByServiceRequestId(i.getService_req_id());
						srAddress.add(a);
						System.out.println("user_id is"+i.getUser_id());
						User customer = userService.getUserByUserId(i.getUser_id());
						users.add(customer);
					}
					
				}
				model.addAttribute("servicerequests", sr);
				model.addAttribute("users" , users);
				model.addAttribute("srAddress" , srAddress);
			}
			
			
			if(pets == 1) {
				model.addAttribute("sr_type", 1);
			}
			else {
				model.addAttribute("sr_type", 0);
			}
			
			//System.out.println(users);
			//System.out.println(srAddress);
			
			return "/sp/sp-dashboard";
			
		}
		else {
			return "redirect:/";
		}
	}
	
	@SuppressWarnings("deprecation")
	@RequestMapping(value="/accept-service/{service_req_id}", method=RequestMethod.GET)
	public @ResponseBody String acceptServiceRequest(@PathVariable int service_req_id, HttpServletRequest request) {
		System.out.println("accept-service :- " + service_req_id);
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			User userinfo = (User)session.getAttribute("userinfo");
			ServiceRequest sr = serviceRequestService.getServiceRequestById(service_req_id);
			List<ServiceRequest> allRequestsOfSp = serviceRequestService.getServiceRequestBySPIdAndStatus(userinfo.getUser_id() , 0);
			if(allRequestsOfSp != null) {
				System.out.println("if condition");
				Date todayDate = new Date();
				for(ServiceRequest i: allRequestsOfSp) {
						Date startdate = new Date(i.getService_start_time());
						System.out.println(startdate);
						long a = startdate.getTime();
						Date startDate = new Date(a);
						Date endDate = new Date(a);
						
						float totalTime = i.getService_hours() + i.getExtra_hours();
						if(totalTime == (int)totalTime) {
							endDate.setHours(endDate.getHours() + (int)totalTime + 2);
							startDate.setHours(startDate.getHours() - 2);
							System.out.println(startDate);
							System.out.println(endDate);
						}
						else {	
							endDate.setHours(endDate.getHours() + (int)totalTime + 2);
							endDate.setMinutes(endDate.getMinutes() + 30);
							startDate.setHours(startDate.getHours() - 2);
							System.out.println(startDate);
							System.out.println(endDate);
						}	
						
						if(sr.getService_start_date().after(startDate) && sr.getService_start_date().before(endDate)) {
							return "conflict" + i.getService_req_id();
						}
						
				}
				if(sr.getService_start_date().before(todayDate)) {
					return "expired";
				}
				if(sr.getStatus() == 3) {
					return "already accepted";
				}
			}
			else {
					Date dateToday = new Date();
					
					sr.setService_provider_id(userinfo.getUser_id());
					sr.setSp_accepted_date(dateToday);
					sr.setModified_by(userinfo.getUser_id());
					sr.setModified_date(dateToday);
					sr.setStatus(3);
					serviceRequestService.updateServiceRequestStatus(sr);
					
					//User user = this.userService.getUserByUserId(sr.getUser_id());
//					sendMail(user.getEmail() , "Your Service Request #"+sr.getService_req_id()+" is accepted by " + currentUser.getFirst_name() + " " + currentUser.getLast_name() + " ." );
					
					return "updated";
				}
		}
		return "false";
		
	}
	
	/*@RequestMapping(value="/customer-service-history")
	public String showCustomerServiceHistory(HttpServletRequest request, HttpServletResponse response, Model model) {
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			User userinfo = (User)session.getAttribute("userinfo");
			System.out.println("customer dashboard controller...");
			int userid = userinfo.getUser_id();
			List<ServiceRequest> sr = serviceRequestService.getServiceRequestHistoryByUserId(userid);
			Set<User> users = new HashSet<User>();
			List<ServiceRequestAddress> srAddress = new ArrayList<ServiceRequestAddress>();
			Map<Integer, Integer> spRating = new HashMap<Integer, Integer>();
			users.add(userinfo);
			if(sr != null) {
				for(ServiceRequest i : sr) {
					System.out.println("service_req_id is");
					ServiceRequestAddress a = serviceRequestService.getServiceRequestAddressByServiceRequestId(i.getService_req_id());
					srAddress.add(a);
					if(i.getUser_id() != i.getService_provider_id()) {
						User userSP = userService.getUserByUserId(i.getService_provider_id());
						users.add(userSP);
						int avgRating = avgRatingCount(i.getService_provider_id());
						spRating.put(i.getService_provider_id(), avgRating);
					}
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
			model.addAttribute("spRating", spRating);
			return "/customer/customer-service-history";
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
	
	@RequestMapping(value="/readservicerequestdetails/{service_req_id}", method=RequestMethod.GET)
	public @ResponseBody List<Object> showServiceRequestDetails(@PathVariable int service_req_id, HttpServletRequest request){
		ServiceRequest sr = serviceRequestService.getServiceRequestById(service_req_id);
		ServiceRequestAddress srAddress = serviceRequestService.getServiceRequestAddressByServiceRequestId(service_req_id);
		List<ServiceRequestExtra> srExtra = serviceRequestService.getServiceRequestExtraByServiceRequestId(service_req_id);
		User sp = userService.getUserByUserId(sr.getService_provider_id());
		List<Integer> sre = new ArrayList<Integer>();
		ServiceRequestExtra nsre = new ServiceRequestExtra();
		for(ServiceRequestExtra i: srExtra) {
			if(i.getService_extra_id() == 1) {
				nsre.setInsidecabinets(1);
			}
			if(i.getService_extra_id() == 2) {
				nsre.setInsidefridge(1);
			}
			if(i.getService_extra_id() == 3) {
				nsre.setInsideoven(1);
			}
			if(i.getService_extra_id() == 4) {
				nsre.setLaundary(1);
			}
			if(i.getService_extra_id() == 5) {
				nsre.setInteriorwindows(1);
			}
		}
		
		List<Object> srList = new ArrayList<Object>();
		srList.add(sr);
		srList.add(srAddress);
		srList.add(nsre);
		srList.add(sp);
		return srList;
		
	}
	
	@RequestMapping(value="/service-reschedule/{service_req_id}", method=RequestMethod.POST)
	public @ResponseBody String rescheduleServiceRequest(@PathVariable int service_req_id, HttpServletRequest request, HttpServletResponse response,@ModelAttribute("serviceRequest") ServiceRequest serviceRequest) {
		System.out.println(service_req_id);
		System.out.println(serviceRequest.toString());
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			User userinfo = (User)session.getAttribute("userinfo");
			serviceRequest.setModified_by(userinfo.getUser_type_id());
			
			serviceRequestService.rescheduleService(service_req_id, serviceRequest);
			System.out.println("service-reschedule");
			return "true";
		}
		return "false";
	}
	
	@RequestMapping(value="/service-cancel/{service_req_id}", method=RequestMethod.POST)
	public @ResponseBody String cancelServiceRequest(@PathVariable int service_req_id, HttpServletRequest request, HttpServletResponse response,@ModelAttribute("serviceRequest") ServiceRequest serviceRequest){
		System.out.println(service_req_id);
		System.out.println(serviceRequest.toString());
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			User userinfo = (User)session.getAttribute("userinfo");
			serviceRequest.setModified_by(userinfo.getUser_type_id());
			serviceRequest.setStatus(2);
			
			serviceRequestService.cancelService(service_req_id, serviceRequest);
			System.out.println("service-cancel");
			return "true";
		}
		return "false";
	}
	
	@RequestMapping(value = "/service-rating-data/{service_req_id}")
	public @ResponseBody List<Object> serviceRatingData(@PathVariable int service_req_id) {
		System.out.println("service-rating-data");
		List<Rating> existingRatings = serviceRequestService.getRatingsByServiceRequestId(service_req_id);
		
		if(existingRatings.size() == 0) {
			ServiceRequest sr = serviceRequestService.getServiceRequestById(service_req_id);
			List<Rating> ratings = serviceRequestService.getRatingsByRatingTo(sr.getService_provider_id());
			
			int avgRating = 0; 
			for(Rating i : ratings) {
				   avgRating =  (int) (avgRating + i.getRatings());
			}
			
			if(ratings.size() == 0) {
				avgRating = avgRating / 1;
			}
			else {
				avgRating = avgRating / ratings.size();
			}
			List<Object> srList = new ArrayList<Object>();
			
			User sp = userService.getUserByUserId(sr.getService_provider_id());
			Object avg = avgRating;
			
			srList.add(sp);
			srList.add(avg);
			
			return srList;
		}
		else {
			return null;
		}
	}
	
	@RequestMapping(value = "/rate-sp" , method=RequestMethod.POST)
	public @ResponseBody String  rateSP(@ModelAttribute("ratings") Rating ratings,HttpServletRequest request, HttpServletResponse response) {
		System.out.println("rate sp...");
		System.out.println(ratings.toString());
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			User userinfo = (User)session.getAttribute("userinfo");
			
			int averageRating = (int) Math.ceil((ratings.getFriendly() + ratings.getOn_time_arrival() + ratings.getQuality_of_service()) / 3);  
		    Date dateToday = new Date();  
		    
		    ratings.setIs_approved(true);
		    ratings.setRating_date(dateToday);
		    ratings.setRating_from(userinfo.getUser_id());
		    ratings.setRatings(averageRating);
		    ratings.setVisible_on_homescreen(true);
		    
		    serviceRequestService.addServiceRating(ratings);
		    System.out.println("ratings added successfully..");
		    
		    return "true";
		}
	return "false";
	}*/
	
}


