package helperland_springmvc.service;

import java.util.List;

import helperland_springmvc.model.ServiceRequest;
import helperland_springmvc.model.ServiceRequestAddress;
import helperland_springmvc.model.ServiceRequestExtra;

public interface ServiceRequestService {
	 
	List<ServiceRequest> getAllPendingRequestByUserId(int userid);
	ServiceRequestAddress getServiceRequestAddressByServiceRequestId(int service_req_id);
	ServiceRequest getServiceRequestById(int service_req_id);
	List<ServiceRequestExtra> getServiceRequestExtraByServiceRequestId(int service_req_id);
	void rescheduleService(int service_req_id, ServiceRequest serviceRequest);
	void cancelService(int service_req_id, ServiceRequest serviceRequest);
	List<ServiceRequest> getServiceRequestHistoryByUserId(int userid);
}
