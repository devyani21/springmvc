package helperland_springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import helperland_springmvc.dao.ServiceRequestDao;
import helperland_springmvc.model.ServiceRequest;
import helperland_springmvc.model.ServiceRequestAddress;
import helperland_springmvc.model.ServiceRequestExtra;

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
	@Override
	public ServiceRequest getServiceRequestById(int service_req_id) {
		// TODO Auto-generated method stub
		return serviceRequestDao.getServiceRequestById(service_req_id);
	}
	@Override
	public List<ServiceRequestExtra> getServiceRequestExtraByServiceRequestId(int service_req_id) {
		// TODO Auto-generated method stub
		return serviceRequestDao.getServiceRequestExtraByServiceRequestId(service_req_id);
	}
	@Override
	public void rescheduleService(int service_req_id, ServiceRequest serviceRequest) {
		// TODO Auto-generated method stub
		serviceRequestDao.rescheduleService(service_req_id, serviceRequest);
	}
	@Override
	public void cancelService(int service_req_id, ServiceRequest serviceRequest) {
		// TODO Auto-generated method stub
		serviceRequestDao.cancelService(service_req_id,serviceRequest);
	}
	@Override
	public List<ServiceRequest> getServiceRequestHistoryByUserId(int userid) {
		// TODO Auto-generated method stub
		return serviceRequestDao.getServiceRequestHistoryByUserId(userid);
	}
	
	
}
