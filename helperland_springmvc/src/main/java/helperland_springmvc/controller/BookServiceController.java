package helperland_springmvc.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import helperland_springmvc.model.Login;
import helperland_springmvc.model.ServiceRequest;
import helperland_springmvc.model.User;
import helperland_springmvc.model.Zipcode;
import helperland_springmvc.service.BookService;

@Controller
public class BookServiceController {
	
	@Autowired
	BookService bookservice;
	
	@RequestMapping(value = "/book-service", method = RequestMethod.GET)
	  public ModelAndView showBookService(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("book-service");
//	    mav.addObject("zipcode", new Zipcode());

	    return mav;
	  }

	  @RequestMapping(value = "/setup-service", method = RequestMethod.POST)
	  public @ResponseBody String ajaxSearch(HttpServletRequest request, HttpServletResponse response,@RequestBody String zip_code_value) {
	    System.out.println(zip_code_value);
	    System.out.println(request.getParameter("zip_code_value"));
	    
	    String s = zip_code_value.substring(0,zip_code_value.length()-1);
	    
	    Boolean zipcode = bookservice.validateZipcode(s);
	    
	    return zipcode.toString();
	    }
	  
//	  @RequestMapping(value = "/setup-service", method = RequestMethod.GET)
//	  public ModelAndView showScheduleForm(HttpServletRequest request, HttpServletResponse response) {
//	    ModelAndView mav = new ModelAndView("book-service");
//	    mav.addObject("servicerequest", new ServiceRequest());
//
//	    return mav;
//	  }
	  
	  @RequestMapping(value = "/details", method = RequestMethod.POST)
	  public String handleServiceRequest(@ModelAttribute("serviceRequest") ServiceRequest serviceRequest,HttpServletRequest request) {
		  System.out.println(serviceRequest);
		  return "book-service";
	  }
	  
//	  @RequestMapping(value="/setup-service", method = RequestMethod.POST)
//	  public @ResponseBody List<ServiceRequest> ajaxSearch(HttpServletRequest request, HttpServletResponse response, @RequestBody ServiceRequest servicerequest){
//		  
//	  }
	
}