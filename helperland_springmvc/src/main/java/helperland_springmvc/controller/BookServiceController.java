package helperland_springmvc.controller;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import helperland_springmvc.model.Login;
import helperland_springmvc.model.ServiceRequest;
import helperland_springmvc.model.ServiceRequestAddress;
import helperland_springmvc.model.ServiceRequestExtra;
import helperland_springmvc.model.User;
import helperland_springmvc.model.UserAddress;
import helperland_springmvc.model.Zipcode;
import helperland_springmvc.service.BookService;
import helperland_springmvc.service.UserService;

@Controller
public class BookServiceController {
	
	@Autowired
	BookService bookservice;
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/book-service")
	  public String showBookService(HttpServletRequest request, HttpServletResponse response) {
	   
	    return "book-service";
	  }

	  @RequestMapping(value = "/setup-service", method = RequestMethod.POST)
	  public @ResponseBody String ajaxSearch(HttpServletRequest request, HttpServletResponse response,@RequestBody String zip_code_value) {
	    System.out.println(zip_code_value);
	    System.out.println(request.getParameter("zip_code_value"));
	    
	    String s = zip_code_value.substring(0,zip_code_value.length()-1);
	    
	    Boolean zipcode = bookservice.validateZipcode(s);
	    
	    return zipcode.toString();
	    }
	  
	  
	  @RequestMapping(value = "/details", method = RequestMethod.POST)
	  public @ResponseBody String handleServiceRequest(HttpServletRequest request,HttpServletResponse response, Model model) {
		  HttpSession session = request.getSession();
		  if(session.getAttribute("userinfo") != null) {
			  return "true";
		  }
		  else {
			  return "false";
		  }
	  }
	  
	  @RequestMapping(value="/service-request-address", method = RequestMethod.POST)
	  public @ResponseBody String serviceRequestAddress(HttpServletRequest request, HttpServletResponse response,@RequestBody int address_id ) {
		  HttpSession session = request.getSession();
		  if(session.getAttribute("userinfo") != null) {
			  System.out.println(address_id);
			  return "true";
		  }
		  else {
			  return "false";
		  }
	  }
	  
	  @RequestMapping(value="/add-new-service-request", method = RequestMethod.POST)
	  public @ResponseBody int addNewServiceRequest(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("serviceRequest") ServiceRequest serviceRequest) throws SQLException {
		  HttpSession session = request.getSession();
		  if(session.getAttribute("userinfo") != null) {
			  System.out.println(serviceRequest.toString());
			  User userinfo = (User)session.getAttribute("userinfo");
			  serviceRequest.setUser_id(userinfo.getUser_id());
			  serviceRequest.setService_hourly_rate(50);
			  serviceRequest.setStatus(0);
			  
			  UserAddress useraddress = userService.getAllUserAddressByAddressId(serviceRequest.getAddress_id());
			  
			  int service_id = bookservice.addNewServiceRequest(serviceRequest);
			  System.out.println("Service id is " + service_id);
			  
			  int service_req_id = bookservice.getServiceReqIdByServiceId(service_id);
			  System.out.println("Service Request id is " + service_req_id);
			  
			  ServiceRequestAddress serviceRequestAddress = new ServiceRequestAddress();
			  serviceRequestAddress.setService_req_id(service_req_id);
			  serviceRequestAddress.setAddress_line1(useraddress.getAddress_line1());
			  serviceRequestAddress.setAddress_line2(useraddress.getAddress_line2());
			  serviceRequestAddress.setCity(useraddress.getCity());
			  serviceRequestAddress.setState(useraddress.getState());
			  serviceRequestAddress.setEmail(useraddress.getEmail());
			  serviceRequestAddress.setMobile(useraddress.getMobile());
			  serviceRequestAddress.setPostal_code(useraddress.getPostal_code());
			  
			  bookservice.saveServiceRequestAddress(serviceRequestAddress);
			  
			  ServiceRequestExtra serviceRequestExtra = new ServiceRequestExtra();
			  serviceRequestExtra.setService_req_id(service_req_id);
			  if(serviceRequest.getInsidecabinets() == 1) {
				  serviceRequestExtra.setService_extra_id(1);
				  bookservice.saveServiceRequestExtra(serviceRequestExtra);
			  }
			  if(serviceRequest.getInsidefridge() == 1) {
				  serviceRequestExtra.setService_extra_id(2);
				  bookservice.saveServiceRequestExtra(serviceRequestExtra);
			  }
			  if(serviceRequest.getInsideoven() == 1) {
				  serviceRequestExtra.setService_extra_id(3);
				  bookservice.saveServiceRequestExtra(serviceRequestExtra);
			  }
			  if(serviceRequest.getLaundary() == 1) {
				  serviceRequestExtra.setService_extra_id(4);
				  bookservice.saveServiceRequestExtra(serviceRequestExtra);
			  }
			  if(serviceRequest.getInteriorwindows() == 1) {
				  serviceRequestExtra.setService_extra_id(5);
				  bookservice.saveServiceRequestExtra(serviceRequestExtra);
			  }
			  
			  return service_id;
		  }
		  else {
			  return 0;
		  } 
	  }
	  
	  @RequestMapping("/success")
	  public String success(HttpServletRequest request, HttpServletResponse response) {
		  return "redirect:/customer-dashboard";
	  }
	  
//	  @RequestMapping(value="/service-request", method = RequestMethod.POST)
//	  public String bookServiceRequest(HttpServletRequest request, HttpServletResponse response) {
//		  return "book-service";
//	  }
	  
		
}