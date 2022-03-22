package helperland_springmvc.service;

import java.util.List;

import helperland_springmvc.model.ServiceRequest;
import helperland_springmvc.model.ServiceRequestAddress;

public interface ServiceRequestService {
	 
	List<ServiceRequest> getAllPendingRequestByUserId(int userid);
	ServiceRequestAddress getServiceRequestAddressByServiceRequestId(int service_req_id);
	
}
