package helperland_springmvc.dao;

import java.util.List;

import helperland_springmvc.model.Rating;
import helperland_springmvc.model.ServiceRequest;
import helperland_springmvc.model.ServiceRequestAddress;
import helperland_springmvc.model.ServiceRequestExtra;
import helperland_springmvc.model.User;

public interface ServiceRequestDao {
	
	List<ServiceRequest> getAllPendingRequestByUserId(int userid);
	ServiceRequestAddress getServiceRequestAddressByServiceRequestId(int service_req_id);
	ServiceRequest getServiceRequestById(int service_req_id);
	List<ServiceRequestExtra> getServiceRequestExtraByServiceRequestId(int service_req_id);
	void rescheduleService(int service_req_id, ServiceRequest serviceRequest);
	void cancelService(int service_req_id, ServiceRequest serviceRequest);
	List<ServiceRequest> getServiceRequestHistoryByUserId(int userid);
	void addServiceRating(Rating ratings);
	List<Rating> getRatingsByServiceRequestId(int service_req_id);
	List<Rating> getRatingsByRatingTo(int service_provider_id);
	List<ServiceRequest> getAllServiceRequestByPostalCode(String postalcode);
	List<ServiceRequest> getAllServiceRequestByPostalCodeHavingNoPets(String postalcode);
	List<ServiceRequest> getServiceRequestBySPIdAndStatus(int user_id , int status);
	void updateServiceRequestStatus(ServiceRequest sr);
	void serviceRequestComplete(User userinfo,int service_req_id);
	List<ServiceRequest> getServiceRequestBySPIdWhichArePending(int user_id , int status);
	List<ServiceRequest> getServiceRequestHistoryBySPId(int sp_id);
	List<ServiceRequest> getServiceRequestBySPId(int sp_id);
	List<ServiceRequest> getAllServiceRequests();
	void updateServiceRequestAddress(ServiceRequestAddress srAddress);
}

