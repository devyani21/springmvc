package helperland_springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import helperland_springmvc.dao.ServiceRequestDao;
import helperland_springmvc.model.ServiceRequest;
import helperland_springmvc.model.ServiceRequestAddress;

public class ServiceRequestServiceImpl implements ServiceRequestService {

	@Autowired
	ServiceRequestDao serviceRequestDao;
	public List<ServiceRequest> getAllPendingRequestByUserId(int userid) {
		// TODO Auto-generated method stub
		return serviceRequestDao.getAllPendingRequestByUserId(userid);
		
	}
	@Override
	public ServiceRequestAddress getServiceRequestAddressByServiceRequestId(int service_req_id) {
		// TODO Auto-generated method stub
		return serviceRequestDao.getServiceRequestAddressByServiceRequestId(service_req_id);
	}
	

}
