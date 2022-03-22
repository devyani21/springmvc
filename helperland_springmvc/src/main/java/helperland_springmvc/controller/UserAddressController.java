package helperland_springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import helperland_springmvc.model.User;
import helperland_springmvc.model.UserAddress;
import helperland_springmvc.service.UserService;

@Controller
public class UserAddressController {
	@Autowired
	UserService userService;
	
	 @RequestMapping(value="/user-address", method = RequestMethod.POST)
	  public @ResponseBody String addNewAddress(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("userAddress") UserAddress userAddress) {
		  HttpSession session = request.getSession();
		  if(session.getAttribute("userinfo") != null) {
			  User userinfo = (User)session.getAttribute("userinfo");
			  List<UserAddress> checkUserAddress = userService.getAllUserAddressByUserId(userinfo.getUser_id());
			  System.out.println(checkUserAddress.toString());
			  if(checkUserAddress.isEmpty()) {
				  userAddress.setUser_id(userinfo.getUser_id());
				  userAddress.setEmail(userinfo.getEmail());
				  userAddress.setType(userinfo.getUser_type_id());
				  userAddress.setIs_default(1);
				  userAddress.setIs_deleted(0);
				  System.out.println(userAddress.toString());
				  userService.saveUserAddress(userAddress);
				  return "true";
			  }
			  else {
				  userAddress.setUser_id(userinfo.getUser_id());
				  userAddress.setEmail(userinfo.getEmail());
				  userAddress.setType(userinfo.getUser_type_id());
				  userAddress.setIs_default(0);
				  userAddress.setIs_deleted(0);
				  userService.saveUserAddress(userAddress);
				  return "true";
			  }
		  }
		  else {
			  return "false";
		  }
	  }
	 
//	 @RequestMapping(value="/readaddress")
//	 public @ResponseBody String readAddress(HttpServletRequest request, HttpServletResponse response,ModelAndView mav){
//		 HttpSession session = request.getSession();
//		 if(session.getAttribute("userinfo") != null) {
//			 User userinfo = (User)session.getAttribute("userinfo");
//			 List<UserAddress> useraddress = userService.getAllUserAddressByUserId(userinfo.getUser_id());
//			 for(int i=0; i<useraddress.size(); i++) {
//				 System.out.println(useraddress.get(i).getAddress_id());
//			 }
//			 mav.addObject("useraddress", useraddress);
//			 return "true";
//		 }
//		 else {
//			 return "false";
//		 }
//	 }
//	 
	 @RequestMapping(value = "/showaddress")
		
		public @ResponseBody List<UserAddress> ajaxshowAddress(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {

			HttpSession session = request.getSession();
			if(session.getAttribute("userinfo") != null) {
				User userinfo = (User)session.getAttribute("userinfo");
				List<UserAddress> useraddress = new ArrayList<UserAddress>();
				useraddress = userService.getAllUserAddressByUserId(userinfo.getUser_id());
				for(int i=0; i<useraddress.size(); i++) {
					 System.out.println(useraddress.get(i).getAddress_id());
				 }
				model.addAttribute("useraddress", useraddress);
				return useraddress;
			}
			else {
				return null;
			}

		}
	 
	 @RequestMapping(value="/readaddress/{address_id}", method=RequestMethod.GET)
	 public @ResponseBody UserAddress readAddress(@PathVariable("address_id") String address_id, HttpServletRequest request) throws Exception {
				System.out.println("address_id is" + Integer.parseInt(address_id));
				UserAddress useraddress = userService.getAllUserAddressByAddressId(Integer.parseInt(address_id));
				System.out.println(useraddress.toString());
				return useraddress;
			}

	 @RequestMapping(value="/edit-address/{address_line1},{address_line2},{postal_code},{city},{mobile},{address_id}", method = RequestMethod.GET)
	 public @ResponseBody void editAddress(@PathVariable("address_line1") String address_line1,
				@PathVariable("address_line2") String address_line2,
				@PathVariable("postal_code") String postal_code,
				@PathVariable("city") String city,
				@PathVariable("mobile") String phone,
				@PathVariable("address_id") String address_id,
				@ModelAttribute("useraddress") UserAddress useraddress, 
				BindingResult br , Model model,
				HttpServletRequest request) {
		 HttpSession session = request.getSession();
			if(session.getAttribute("userinfo") != null) {
				User userinfo = (User)session.getAttribute("userinfo");
				//System.out.println(useraddress.toString());
				useraddress.setUser_id(userinfo.getUser_id());
				useraddress.setEmail(userinfo.getEmail());
				useraddress.setIs_default(Integer.parseInt("0"));
				useraddress.setIs_deleted(Integer.parseInt("0"));
				useraddress.setAddress_id(Integer.parseInt(address_id));
				System.out.println("controller:- "+useraddress.toString());
				userService.updateCustomerAddress(useraddress);
				System.out.println("useraddress controller");
			}
			
	 }
	 
	 @RequestMapping(value="/delete-address/{address_id}", method=RequestMethod.GET)
	 public @ResponseBody void deleteAddress(@PathVariable("address_id") String address_id, HttpServletRequest request) {
		 System.out.println("delete address" + Integer.parseInt(address_id));
		 userService.deleteCustomerAddress(Integer.parseInt(address_id));
	 }

}
