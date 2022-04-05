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
import helperland_springmvc.model.FavouriteBlocked;
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
	public String showSPDashboard(HttpServletRequest request, HttpServletResponse response, Model model,@RequestParam(value="pets",defaultValue="1") int pets) {
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
	public @ResponseBody String acceptServiceRequest(@PathVariable int service_req_id, HttpServletRequest request) throws ParseException {
		System.out.println("accept-service :- " + service_req_id);
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			User userinfo = (User)session.getAttribute("userinfo");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			ServiceRequest sr = serviceRequestService.getServiceRequestById(service_req_id);
			sr.setService_start_date(sdf.parse(sr.getService_start_date() + " " + sr.getService_start_time()));
			System.out.println("sr:- "+ sr.getService_start_date());
			List<ServiceRequest> allRequestsOfSp = serviceRequestService.getServiceRequestBySPIdWhichArePending(userinfo.getUser_id() , 0);
			System.out.println("allRequestsofSP:- "+ allRequestsOfSp);
			if(allRequestsOfSp != null) {
				System.out.println("if condition");
				
				Date todayDate = new Date();
				for(ServiceRequest i: allRequestsOfSp) {
						String s = i.getService_start_date() + " " + i.getService_start_time();
						Date sdate = sdf.parse(s);
						System.out.println(sdate);
						long a = sdate.getTime();
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
							return "conflict" + i.getService_id();
						}
						
				}
				if(sr.getService_start_date().before(todayDate)) {
					return "expired";
				}
				if(sr.getStatus() == 3) {
					return "already accepted";
				}
				else {
					Date dateToday = new Date();
					
					sr.setService_provider_id(userinfo.getUser_id());
					sr.setSp_accepted_date(dateToday);
					sr.setModified_by(userinfo.getUser_type_id());
					sr.setModified_date(dateToday);
					sr.setStatus(3);
					serviceRequestService.updateServiceRequestStatus(sr);
					
					//User user = this.userService.getUserByUserId(sr.getUser_id());
//					sendMail(user.getEmail() , "Your Service Request #"+sr.getService_req_id()+" is accepted by " + currentUser.getFirst_name() + " " + currentUser.getLast_name() + " ." );
					
					return "updated";
				}
			}
			
		}
		return "false";
		
	}
	
	@RequestMapping(value="/sp-service-history")
	public String showSPServiceHistory(HttpServletRequest request, HttpServletResponse response, Model model) {
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			User userinfo = (User)session.getAttribute("userinfo");
			System.out.println("sp service history controller...");
			int sp_id = userinfo.getUser_id();
			List<ServiceRequest> sr = serviceRequestService.getServiceRequestHistoryBySPId(sp_id);
			System.out.println(sr);
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
			System.out.println(users);
			model.addAttribute("servicerequests", sr);
			model.addAttribute("users" , users);
			model.addAttribute("srAddress" , srAddress);
			return "/sp/sp-service-history";
		}
		else {
			return "redirect:/";
		}
	}
	
	@RequestMapping(value="/upcoming-services")
	public String showUpcomingServices(HttpServletRequest request, HttpServletResponse response, Model model) {
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			User userinfo = (User)session.getAttribute("userinfo");
			

			List<ServiceRequest> sr = serviceRequestService.getServiceRequestBySPIdAndStatus(userinfo.getUser_id() , 3);
			
			Set<User> users = new HashSet<User>();
			List<ServiceRequestAddress> srAddress = new ArrayList<ServiceRequestAddress>();
			
			users.add(userinfo);
			
			for(ServiceRequest i : sr) {
				ServiceRequestAddress a = this.serviceRequestService.getServiceRequestAddressByServiceRequestId(i.getService_req_id());
				srAddress.add(a);
				User userCust = this.userService.getUserByUserId(i.getUser_id());
				users.add(userCust);
			}
			
			List<Integer> completeId = new ArrayList<Integer>();
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			
			Date dtToday = new Date();
			
			for(ServiceRequest i : sr) {
				String a = i.getService_start_date() +" "+ i.getService_start_time();
				System.out.println(a);
				try {
					Date sdate = sdf.parse(a);
					float totalTime = i.getService_hours() + i.getExtra_hours();
					long k = (long) (sdate.getTime() + (totalTime*3600*1000));
					
					Date dcomplete = new Date(k);
					if(dcomplete.before(dtToday)) {
						completeId.add(i.getService_req_id());
					}
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			model.addAttribute("servicerequests", sr);
			model.addAttribute("users" , users);
			model.addAttribute("srAddress" , srAddress);
			model.addAttribute("completeId" , completeId);
			return "sp/upcoming-services";
		}
		return "redirect:/";
	}
	
	@RequestMapping(value="/service-complete/{service_req_id}", method=RequestMethod.POST)
	public @ResponseBody String completeServiceRequest(@PathVariable int service_req_id, HttpServletRequest request, HttpServletResponse response){
		System.out.println(service_req_id);
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			User userinfo = (User)session.getAttribute("userinfo");
			serviceRequestService.serviceRequestComplete(userinfo, service_req_id);
			System.out.println("service-complete");
			return "true";
		}
		return "false";
	}
	
	@RequestMapping("/my-ratings")
	public String spMyRating(Model model , @RequestParam(value="ratingType" , defaultValue = "all") String ratingType, HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			User userinfo = (User)session.getAttribute("userinfo");
			List<Rating> ratings = serviceRequestService.getRatingsByRatingTo(userinfo.getUser_id());
			System.out.println(ratings);
			Set<User> users = new HashSet<User>();
			List<ServiceRequest> sr = new ArrayList<ServiceRequest>();
			users.add(userinfo);
			
			for(Rating r : ratings) {
				User userFrom = userService.getUserByUserId(r.getRating_from());
				users.add(userFrom);
				
				ServiceRequest s = serviceRequestService.getServiceRequestById(r.getService_req_id());
				sr.add(s);
			}
			System.out.println(sr);
			System.out.println(users);
			model.addAttribute("service_requests" , sr);
			model.addAttribute("users" , users);
			
			List<Rating> ratingsFilteredVeryGood = new ArrayList<Rating>();		
			List<Rating> ratingsFilteredGood = new ArrayList<Rating>();		
			List<Rating> ratingsFilteredAverage = new ArrayList<Rating>();		
			List<Rating> ratingsFilteredPoor = new ArrayList<Rating>();
			
			for(Rating r : ratings) {
				if(r.getRatings() == 5) {
					ratingsFilteredVeryGood.add(r);
				}
				if(r.getRatings() == 4) {
					ratingsFilteredGood.add(r);
				}
				if(r.getRatings() == 3) {
					ratingsFilteredAverage.add(r);
				}
				if(r.getRatings() == 2) {
					ratingsFilteredPoor.add(r);
				}
			}
			
			if(ratingType.equals("all")) {
				model.addAttribute("ratings", ratings);
				model.addAttribute("typeSelect" , "all");
			}
			if(ratingType.equals("verygood")) {
				model.addAttribute("ratings", ratingsFilteredVeryGood);
				model.addAttribute("typeSelect" , "verygood");
			}
			if(ratingType.equals("good")) {
				model.addAttribute("ratings", ratingsFilteredGood);
				model.addAttribute("typeSelect" , "good");
			}
			if(ratingType.equals("average")) {
				model.addAttribute("ratings", ratingsFilteredAverage);
				model.addAttribute("typeSelect" , "average");
			}
			if(ratingType.equals("poor")) {
				model.addAttribute("ratings", ratingsFilteredPoor);
				model.addAttribute("typeSelect" , "poor");
			}
			return "sp/myRatings";

			
		}
		return "redirect:/";
		
	}
	
	@RequestMapping("/block-customer")
	public String spBlockCustomer(HttpServletRequest request , HttpServletResponse response, Model model) {
		
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			User userinfo = (User)session.getAttribute("userinfo");
			List<ServiceRequest> sr = serviceRequestService.getServiceRequestBySPId(userinfo.getUser_id());
			Set<User> users = new HashSet<User>();
			List<FavouriteBlocked> favBlocked = userService.getFavBlockByUserId(userinfo.getUser_id()); 
			List<Integer> blockedId = new ArrayList<Integer>();
			Set<Integer> usersId = new HashSet<Integer>();
			List<User> usersList = new ArrayList<User>();
			if(sr != null) {
				for(ServiceRequest i: sr) {
					User u = userService.getUserByUserId(i.getUser_id());
					users.add(u);
				}
			}
			if(favBlocked != null) {
				for(FavouriteBlocked i: favBlocked) {
					blockedId.add(i.getTarget_user_id());
				}
			}
			if(users != null) {
				for(User i: users) {
					usersId.add(i.getUser_id());
					usersList.add(i);
				}
			}
			System.out.println(users);
			System.out.println(favBlocked);
			System.out.println(usersId);
			System.out.println(blockedId);
			model.addAttribute("blocked",favBlocked);
			model.addAttribute("usersId",usersId);
			model.addAttribute("blockedId",blockedId);
			model.addAttribute("users", users);
			return "sp/block-customer";
		}
		return "redirect:/";
	}
	
	@RequestMapping(value = "/block-customer" , method=RequestMethod.POST)
	public @ResponseBody String blockCustomer(@RequestBody int id, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			User userinfo = (User)session.getAttribute("userinfo");
			FavouriteBlocked alreadyAdded = userService.getFavBlockByUserIdAndTargetUserId(userinfo.getUser_id(), id);
			if(alreadyAdded == null) {
				FavouriteBlocked newFavBlock = new FavouriteBlocked();
				newFavBlock.setIs_blocked(true);
				newFavBlock.setTarget_user_id(id);
				newFavBlock.setUser_id(userinfo.getUser_id());
				newFavBlock.setIs_favourite(false);
				userService.addFavBlock(newFavBlock);
			}
			else {
				FavouriteBlocked favBlock = userService.getFavBlockById(alreadyAdded.getId());
				favBlock.setIs_blocked(true);
				userService.updateFavBlock(favBlock);
			}
			return "true";
		}
		return "false";
	}
	
	@RequestMapping(value = "/unblock-customer" , method=RequestMethod.POST)
	public @ResponseBody String unblockCustomer(@RequestBody int id, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			User userinfo = (User)session.getAttribute("userinfo");
			FavouriteBlocked favBlock = userService.getFavBlockByUserIdAndTargetUserId(userinfo.getUser_id(), id);
			favBlock.setIs_blocked(false);
			
			userService.updateFavBlock(favBlock);
			return "true";
		}
		
		return "false";
	}
	
	/*@RequestMapping(value="/customer-settings")
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


