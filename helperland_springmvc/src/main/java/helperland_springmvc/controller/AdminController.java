package helperland_springmvc.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import helperland_springmvc.model.Rating;
import helperland_springmvc.model.ServiceRequest;
import helperland_springmvc.model.ServiceRequestAddress;
import helperland_springmvc.model.ServiceRequestExtra;
import helperland_springmvc.model.User;
import helperland_springmvc.model.UserAddress;
import helperland_springmvc.service.ServiceRequestService;
import helperland_springmvc.service.UserService;

@Controller
public class AdminController {
	@Autowired
	UserService userService;
	@Autowired
	ServiceRequestService serviceRequestService;

	@RequestMapping(value = "/service-requests")
	public String showAdminDashboard(HttpServletRequest request, HttpServletResponse response, Model model) {
		HttpSession session = request.getSession();
		if (session.getAttribute("userinfo") != null) {
			User userinfo = (User) session.getAttribute("userinfo");
			List<User> allUsers = this.userService.getAllUser();
			Set<User> usersCust = new HashSet<User>();
			Set<User> usersSP = new HashSet<User>();
			List<ServiceRequest> sr = this.serviceRequestService.getAllServiceRequests();
			Set<User> users = new HashSet<User>();
			List<ServiceRequestAddress> srAddress = new ArrayList<ServiceRequestAddress>();
			Map<Integer, Integer> spRating = new HashMap<Integer, Integer>();

			if(sr != null) {
				for (ServiceRequest i : sr) {
					User uCust = this.userService.getUserByUserId(i.getUser_id());
					users.add(uCust);
					User uSP = this.userService.getUserByUserId(i.getService_provider_id());
					users.add(uSP);
	
					ServiceRequestAddress address = this.serviceRequestService.getServiceRequestAddressByServiceRequestId(i.getService_req_id());
					srAddress.add(address);
	
					List<Rating> ratings = this.serviceRequestService.getRatingsByRatingTo(i.getService_provider_id());
					int avgRating = 0;
					
					if(ratings != null) {
	
						for (Rating j : ratings) {
							avgRating = (int) (avgRating + j.getRatings());
						}
		
						if (ratings.size() == 0) {
							avgRating = avgRating / 1;
						} else {
							avgRating = avgRating / ratings.size();
						}
						spRating.put(i.getService_provider_id(), avgRating);
					}
				}
			}
			if(allUsers != null) {
				for (User u : allUsers) {
					if (u.getUser_type_id() == 1) {
						usersCust.add(u);
					} else if (u.getUser_type_id() == 2) {
						usersSP.add(u);
					}
				}
			}

			model.addAttribute("service_requests", sr);
			model.addAttribute("users", users);
			model.addAttribute("srAddress", srAddress);
			model.addAttribute("spRating", spRating);
			model.addAttribute("usersCust", usersCust);
			model.addAttribute("usersSP", usersSP);
			return "/admin/admin-dashboard";
		}
		return "redirect:/";

	}

	public boolean checkDate(Date from, Date to, Date check) {
		if (check.after(from) && check.before(to)) {
			return true;
		} else {
			return false;
		}
	}
	
	@RequestMapping(value = "/edit-details-data/{serviceReqId}" , method = RequestMethod.GET)
	public @ResponseBody List<Object> editDetailsData(@PathVariable int serviceReqId, HttpServletRequest request, HttpServletResponse response) throws ParseException {
		System.out.println("ServiceReqId:- "+serviceReqId);
		ServiceRequest sr = serviceRequestService.getServiceRequestById(serviceReqId);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		sr.setService_start_date(sdf.parse(sr.getService_start_date() + " " + sr.getService_start_time()));
		ServiceRequestAddress srAddress = serviceRequestService.getServiceRequestAddressByServiceRequestId(serviceReqId);
		List<Object> srList = new ArrayList<Object>();
		
		srList.add(sr);
		srList.add(srAddress);
		System.out.println("srList:- "+srList);
		return srList;	
	}
	
	@SuppressWarnings("deprecation")
	@RequestMapping(value = "/edit-service" , method=RequestMethod.POST)
	public @ResponseBody String editService(HttpServletRequest request, @RequestParam("service_req_id") int service_req_id,@RequestParam("service_start_date") Date service_start_date ,@RequestParam("service_start_time") String service_start_time, @RequestParam("address_line1") String address_line1 , @RequestParam("address_line2") String address_line2 , @RequestParam("postal_code") String postal_code , @RequestParam("city") String city) throws ParseException {
		System.out.println("service_req_id:- "+ service_req_id);
		System.out.println("service_start_date = "+ service_start_date );
		System.out.println("service_start_time = "+ service_start_time);
		System.out.println("address_line1 = "+ address_line1);
		System.out.println("address_line2 = "+ address_line2);
		System.out.println("postal_code = "+ postal_code);
		System.out.println("city = "+ city);
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			User userinfo = (User)session.getAttribute("userinfo");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			ServiceRequest sr = serviceRequestService.getServiceRequestById(service_req_id);
			sr.setService_start_date(sdf.parse(sr.getService_start_date() + " " + sr.getService_start_time()));
			System.out.println("sr:- "+ sr.getService_start_date());
			List<ServiceRequest> allRequestsOfSp = serviceRequestService.getServiceRequestBySPIdWhichArePending(sr.getService_provider_id(), 0);
			System.out.println("allrequestsofsp"+ allRequestsOfSp);
			Date todayDate = new Date();
			if(allRequestsOfSp != null) {
				System.out.println("if condition");
				for(ServiceRequest i: allRequestsOfSp) {
						String s = i.getService_start_date() + " " + i.getService_start_time();
						Date sdate = sdf.parse(s);
						System.out.println(sdate);
						long a = sdate.getTime();
						Date startDate = new Date(a);
						Date endDate = new Date(a);
						
						float totalTime = i.getService_hours() + i.getExtra_hours();
						System.out.println("total time:- "+ totalTime);
						if(totalTime == (int)totalTime) {
							System.out.println("running if...");
							endDate.setHours(endDate.getHours() + (int)totalTime + 2);
							startDate.setHours(startDate.getHours() - 2);
						}
						else {	
							System.out.println("running else...");
							endDate.setHours(endDate.getHours() + (int)totalTime + 2);
							endDate.setMinutes(endDate.getMinutes() + 30);
							startDate.setHours(startDate.getHours() - 2);
						}	
						
						System.out.println("startDate:- "+ startDate + " endDate:- "+ endDate +" sr service_start_date:- "+sr.getService_start_date());
						if(service_start_date.after(startDate) && service_start_date.before(endDate)) {
							return "conflict";
						}
						
				}
				
				sr.setService_start_date(service_start_date);
				sr.setModified_by(userinfo.getUser_type_id());
				sr.setService_start_time(service_start_time);
				
				ServiceRequestAddress srAddress = serviceRequestService.getServiceRequestAddressByServiceRequestId(service_req_id);
				srAddress.setAddress_line1(address_line1);
				srAddress.setAddress_line2(address_line2);
				srAddress.setCity(city);
				srAddress.setPostal_code(postal_code);
				
				serviceRequestService.rescheduleService(service_req_id, sr);
				serviceRequestService.updateServiceRequestAddress(srAddress);
				
				List<User> srUsers = new ArrayList<User>();
				
				User u = userService.getUserByUserId(sr.getUser_id());
				srUsers.add(u);
				
				if(sr.getUser_id() != sr.getService_provider_id()) {
					User uSP = userService.getUserByUserId(sr.getService_provider_id());
					srUsers.add(uSP);
					
				//	for(UserModel i: srUsers) {
//						sendMail(i.getEmail(), "Your service request #" + sr.getService_req_id() + " is rescheduled on "+ service_start_date + " .");
				//	}
				}
				return "updated";
			}
			
		}
		return "error";
	}
	
	@RequestMapping(value = "/service-details-data" , method = RequestMethod.POST)
	public @ResponseBody List<Object> serviceDetailsData(@RequestBody int serviceReqId, HttpServletRequest reqquest, HttpServletResponse response) throws ParseException {
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		ServiceRequest sr = serviceRequestService.getServiceRequestById(serviceReqId);
		sr.setService_start_date(sdf.parse(sr.getService_start_date() + " " + sr.getService_start_time()));
		ServiceRequestAddress srAddress = serviceRequestService.getServiceRequestAddressByServiceRequestId(serviceReqId);
		List<ServiceRequestExtra> srExtra = serviceRequestService.getServiceRequestExtraByServiceRequestId(serviceReqId);
		User sp = userService.getUserByUserId(sr.getService_provider_id());
		List<Rating> ratings = serviceRequestService.getRatingsByRatingTo(sr.getService_provider_id());
		int avgRating = 0; 
		
		if(ratings != null) {
			for(Rating i : ratings) {
				   avgRating = (int) (avgRating + i.getRatings());
			}
			
			if(ratings.size() == 0) {
				avgRating = avgRating / 1;
			}
			else {
				avgRating = avgRating / ratings.size();
			}	
		}
		
		List<ServiceRequest> totalCleanings = serviceRequestService.getServiceRequestBySPId(sr.getService_provider_id());
		List<Object> srList = new ArrayList<Object>();
		srList.add(sr);
		srList.add(srAddress);
		srList.add(srExtra);
		srList.add(sp);
		srList.add(avgRating);
		if(totalCleanings != null) {
			srList.add(totalCleanings.size());
		}
		return srList;	
	}
	
	@RequestMapping(value = "/service-requests" , method=RequestMethod.POST)
	public String serviceRequestsSearch(HttpServletRequest request,Model model , @RequestParam(value = "service_id" , defaultValue = "null") String sr_id , @RequestParam(value = "customer" , defaultValue = "null") String custId , @RequestParam(value = "sp" , defaultValue = "null") String spId , @RequestParam(value= "status" , defaultValue = "null") String status , @RequestParam(value = "from_date" , defaultValue = "null") String fromDate , @RequestParam(value = "to_date" , defaultValue = "null") String toDate,@RequestParam(value="has_issues", defaultValue="0") String has_issues) throws ParseException {
		
		System.out.println("service_req_id:- "+ sr_id);
		System.out.println("customer:- "+ custId);
		System.out.println("service_provider:- "+ spId);
		System.out.println("status:- "+ status);
		System.out.println("from date:- "+ fromDate);
		System.out.println("to Date:- "+ toDate);
		System.out.println("has_issues:- "+ has_issues);
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
		List<User> allUsers = this.userService.getAllUser();
		Set<User> usersCust = new HashSet<User>();
		Set<User> usersSP = new HashSet<User>();
		List<ServiceRequest> sr1 = this.serviceRequestService.getAllServiceRequests();
		Set<User> users = new HashSet<User>();
		List<ServiceRequestAddress> srAddress = new ArrayList<ServiceRequestAddress>();
		Map<Integer, Integer> spRating = new HashMap<Integer, Integer>();
		
		List<ServiceRequest> sr = new ArrayList<ServiceRequest>();
		
		System.out.println(sr_id + " " + custId + " " + spId + " " + status);
		
		for(ServiceRequest i: sr1) {
			String id = String.valueOf(i.getService_id());
			System.out.println("id:- "+id);
			String cid = String.valueOf(i.getUser_id());
			String sid = String.valueOf(i.getService_provider_id());
			String sts = String.valueOf(i.getStatus());
			
			
			if(sr_id.equals(id) || spId.equals(sid)  || custId.equals(cid) || status.equals(sts)) {
				if(sr_id.equals(id) && custId.equals("null") && spId.equals("null") && status.equals("null")) {
					sr.add(i);
					System.out.println(i);
				}
				else if(sr_id.equals(cid) && custId.equals("null") && spId.equals("null") && status.equals("null")) {
					sr.add(i);
					System.out.println("1");
				}
				else if(sr_id.equals("null") && custId.equals(cid) && spId.equals("null") && status.equals("null")) {
					sr.add(i);
					System.out.println("2");
				}
				else if(sr_id.equals("null") && custId.equals("null") && spId.equals(sid) && status.equals("null")) {
					sr.add(i);
					System.out.println("3");
				}
				else if(sr_id.equals("null") && custId.equals("null") && spId.equals("null") && status.equals(sts)) {
					sr.add(i);
					System.out.println("4");
				}
				else if(sr_id.equals(id) && custId.equals(cid) && spId.equals("null") && status.equals("null")) {
					sr.add(i);
					System.out.println("5");
				}
				else if(sr_id.equals(id) && custId.equals("null") && spId.equals(sid) && status.equals("null")) {
					sr.add(i);
					System.out.println("6");
				}
				else if(sr_id.equals(id) && custId.equals("null") && spId.equals("null") && status.equals(sts)) {
					sr.add(i);
					System.out.println("7");
				}
				else if(sr_id.equals("null") && custId.equals(cid) && spId.equals(sid) && status.equals("null")) {
					sr.add(i);
					System.out.println("8");
				}
				else if(sr_id.equals("null") && custId.equals(cid) && spId.equals("null") && status.equals(sts)) {
					sr.add(i);
					System.out.println("9");
				}
				else if(sr_id.equals("null") && custId.equals("null") && spId.equals(sid) && status.equals(sts)) {
					sr.add(i);
					System.out.println("10");
				}
				else if(sr_id.equals(id) && custId.equals(cid) && spId.equals(sid) && status.equals("null")) {
					sr.add(i);
					System.out.println("11");
				}
				else if(sr_id.equals(id) && custId.equals(cid) && spId.equals("null") && status.equals(sts)) {
					sr.add(i);
					System.out.println("12");
				}
				else if(sr_id.equals(id) && custId.equals("null") && spId.equals(sid) && status.equals(sts)) {
					sr.add(i);
					System.out.println("13");
				}
				else if(sr_id.equals("null") && custId.equals(cid) && spId.equals(sid) && status.equals(sts)) {
					sr.add(i);
					System.out.println("14");
				}
				else if(sr_id.equals(id) && custId.equals(cid) && spId.equals(sid) && status.equals(sts)) {
					sr.add(i);
					System.out.println("15");
				}
			}
			else if(sr_id.equals("null") && custId.equals("null") && spId.equals("null") && status.equals("null")) {
				sr.add(i);
				System.out.println("17");
			}
		}

		List<ServiceRequest> srIds = new ArrayList<ServiceRequest>();
		if(sr != null) {
			for(ServiceRequest i: sr) {
				if(!fromDate.equals("null") && !fromDate.equals("null")) {
					Date fromdt = new SimpleDateFormat("yyyy-MM-dd").parse(fromDate);
					Date todt = new SimpleDateFormat("yyyy-MM-dd").parse(toDate);
					if(!checkDate(fromdt , todt , i.getService_start_date())) {
						srIds.add(i);
						System.out.println("18");
					}
				}
			}
		}
		if(srIds != null) {
			for(ServiceRequest i: srIds) {
				sr.remove(i);
				System.out.println("19");
			}
		}
		
		if(sr != null) {
			for(ServiceRequest i: sr) {
				User uCust = this.userService.getUserByUserId(i.getUser_id());
				users.add(uCust);
				
				User uSP = this.userService.getUserByUserId(i.getService_provider_id());
				users.add(uSP);
				
				ServiceRequestAddress address = this.serviceRequestService.getServiceRequestAddressByServiceRequestId(i.getService_req_id());
				srAddress.add(address);
				
				List<Rating> ratings = this.serviceRequestService.getRatingsByRatingTo(i.getService_provider_id());
				int avgRating = 0; 
				if(ratings != null) {
					for(Rating j : ratings) {
						   avgRating = (int) (avgRating + j.getRatings());
					}
				
					if(ratings.size() == 0) {
						avgRating = avgRating / 1;
					}
					else {
						avgRating = avgRating / ratings.size();
					}
				}
				spRating.put(i.getService_provider_id(), avgRating);
			}
		}
		
		if(allUsers != null) {
			for(User u:allUsers) {
				if(u.getUser_type_id() == 1) {
					usersCust.add(u);
				}
				else if(u.getUser_type_id() == 2) {
					usersSP.add(u);
				}				
			}
		}
		System.out.println("service_requests:-"+ sr);
		model.addAttribute("service_requests" , sr);
		model.addAttribute("users" , users);
		model.addAttribute("srAddress" , srAddress);
		model.addAttribute("spRating" , spRating);
		model.addAttribute("usersCust" , usersCust);
		model.addAttribute("usersSP" , usersSP);
		return "admin/admin-dashboard";
		}
		return "redirect:/";
	}
	
	@RequestMapping("/admin-user-management")
	public String userManagement(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			List<User> users = this.userService.getAllUser();
			List<User> u = new ArrayList<User>();
			for(User i : users) {
				if(i.getUser_type_id() == 1 || i.getUser_type_id() == 2) {
					u.add(i);
				}
			}
			List<UserAddress> addresses = this.userService.getAllUserAddress();
			
			model.addAttribute("users" , u);
			model.addAttribute("addresses" , addresses);
			return "admin/admin-user-management";
		}
		return "redirect:/";
	}
	
	@RequestMapping(value = "/admin-user-management" , method =RequestMethod.POST)
	public String userManagementSerach(HttpServletRequest request, Model model ,@RequestParam(value = "username" , defaultValue = "null") String username , @RequestParam(value = "userrole" , defaultValue = "null") String userrole ,@RequestParam(value = "mobile" , defaultValue = "null") String mobile ,@RequestParam(value = "postalcode",  defaultValue = "null" ) String postalcode) {
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null ) {
			List<User> users = this.userService.getAllUser();
			List<User> users2 = new ArrayList<User>();
			for(User i : users) {
				if(i.getUser_type_id() == 1 || i.getUser_type_id() == 2) {
					users2.add(i);
				}
			}
			
			List<UserAddress> addresses = this.userService.getAllUserAddress();
			List<User> userAdd = new ArrayList<User>();
			
			System.out.println(username + " " + userrole + " " + mobile + " " + postalcode);
			
			if(users != null) {
			for(User u: users2) {
				String type_id = String.valueOf(u.getUser_type_id());
				String cid = String.valueOf(u.getUser_id());
				if(u.getEmail() == null) {
					u.setEmail("");
				}
				if(u.getPostal_code() == null) {
					u.setPostal_code("");
				}
				if(username.equals(cid) || u.getMobile().equals(mobile) || u.getPostal_code().equals(postalcode) || type_id.equals(userrole)) {
					if(username.equals(cid) && mobile.equals("null") && userrole.equals("null") && postalcode.equals("null")) {
						userAdd.add(u);
					}
					else if(username.equals("null") && mobile.equals(u.getMobile()) && userrole.equals("null") && postalcode.equals("null")) {
						userAdd.add(u);
					}
					else if(username.equals("null") && mobile.equals("null") && userrole.equals(type_id) && postalcode.equals("null")) {
						userAdd.add(u);
					}
					else if(username.equals("null") && mobile.equals("null") && userrole.equals("null") && postalcode.equals(u.getPostal_code())) {
						userAdd.add(u);
					}
					else if(username.equals(cid) && mobile.equals(u.getMobile()) && userrole.equals("null") && postalcode.equals("null")) {
						userAdd.add(u);
					}
					else if(username.equals(cid) && mobile.equals("null") && userrole.equals(type_id) && postalcode.equals("null")) {
						userAdd.add(u);
					}
					else if(username.equals(cid) && mobile.equals("null") && userrole.equals("null") && postalcode.equals(u.getPostal_code())) {
						userAdd.add(u);
					}
					else if(username.equals("null") && mobile.equals(u.getMobile()) && userrole.equals(type_id) && postalcode.equals("null")) {
						userAdd.add(u);
					}
					else if(username.equals("null") && mobile.equals(u.getMobile()) && userrole.equals("null") && postalcode.equals(u.getPostal_code())) {
						userAdd.add(u);
					}
					else if(username.equals("null") && mobile.equals("null") && userrole.equals(type_id) && postalcode.equals(u.getPostal_code())) {
						userAdd.add(u);
					}
					else if(username.equals(cid) && mobile.equals(u.getMobile()) && userrole.equals(type_id) && postalcode.equals("null")) {
						userAdd.add(u);
					}
					else if(username.equals(cid) && mobile.equals("null") && userrole.equals(type_id) && postalcode.equals(u.getPostal_code())) {
						userAdd.add(u);
					}
					else if(username.equals(cid) && mobile.equals(u.getMobile()) && userrole.equals("null") && postalcode.equals(u.getPostal_code())) {
						userAdd.add(u);
					}
					else if(username.equals("null") && mobile.equals(u.getMobile()) && userrole.equals(type_id) && postalcode.equals(u.getPostal_code())) {
						userAdd.add(u);
					}
					else if(username.equals(cid) && mobile.equals(u.getMobile()) && userrole.equals(type_id) && postalcode.equals(u.getPostal_code())) {
						userAdd.add(u);
					}
					
				}
				else if(username.equals("null") && mobile.equals("null") && userrole.equals("null") && postalcode.equals("null")){
					userAdd.add(u);
				}
			}
			}
			
			model.addAttribute("users" , userAdd);
			model.addAttribute("addresses" , addresses);
			return "admin/admin-user-management";
		}
		return "redirect:/";
		
		
	}
	
	@RequestMapping(value = "/update-user" , method=RequestMethod.POST)
	public String updateUser(HttpServletRequest request, @RequestBody int user_id) {
		
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			User userinfo = (User)session.getAttribute("userinfo");
			Date dtToday = new Date();
			User userToModify = this.userService.getUserByUserId(user_id);
			int status = userToModify.getIs_active();
			
			if(status == 0) {
				userToModify.setIs_active(1);;
			}
			if(status == 1) {
				userToModify.setIs_active(0);;
			}
			
			userToModify.setModified_by(userinfo.getUser_type_id());
			userToModify.setModified_date(dtToday);
			this.userService.updateUser(userToModify);
			
			return "redirect:admin-user-management";
		}
		return "redirect:/";
		
	}
	
	@RequestMapping(value = "/approve-user" , method=RequestMethod.POST)
	public String approveUser(HttpServletRequest request, @RequestBody int user_id) {
		
		HttpSession session = request.getSession();
		if(session.getAttribute("userinfo") != null) {
			User userinfo = (User)session.getAttribute("userinfo");
			Date dtToday = new Date();
			User userToModify = this.userService.getUserByUserId(user_id);
			int is_approved = userToModify.getIs_approved();
			
			if(is_approved == 0) {
				userToModify.setIs_approved(1);
			}
			if(is_approved == 1) {
				userToModify.setIs_approved(0);
			}
			
			userToModify.setModified_by(userinfo.getUser_type_id());
			this.userService.approveUser(userToModify);
			
			return "redirect:admin-user-management";
		}
		return "redirect:/";
		
	}

}
