package helperland_springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import helperland_springmvc.dao.ServiceRequestDao;
import helperland_springmvc.model.Rating;
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
	@Override
	public void addServiceRating(Rating ratings) {
		// TODO Auto-generated method stub
		serviceRequestDao.addServiceRating(ratings);
		
	}
	@Override
	public List<Rating> getRatingsByServiceRequestId(int service_req_id) {
		// TODO Auto-generated method stub
		return serviceRequestDao.getRatingsByServiceRequestId(service_req_id);
	}
	
	@Override
	public List<Rating> getRatingsByRatingTo(int service_provider_id) {
		// TODO Auto-generated method stub
		return serviceRequestDao.getRatingsByRatingTo(service_provider_id);
	}
	@Override
	public List<ServiceRequest> getAllServiceRequestByPostalCode(String postalcode) {
		// TODO Auto-generated method stub
		return serviceRequestDao.getAllServiceRequestByPostalCode(postalcode);
	}
	@Override
	public List<ServiceRequest> getAllServiceRequestByPostalCodeHavingNoPets(String postalcode) {
		// TODO Auto-generated method stub
		return serviceRequestDao.getAllServiceRequestByPostalCodeHavingNoPets(postalcode);
	}
	@Override
	public List<ServiceRequest> getServiceRequestBySPIdAndStatus(int user_id, int status) {
		// TODO Auto-generated method stub
		return serviceRequestDao.getServiceRequestBySPIdAndStatus(user_id , status);
	}
	@Override
	public void updateServiceRequestStatus(ServiceRequest sr) {
		// TODO Auto-generated method stub
		serviceRequestDao.updateServiceRequestStatus(sr);
	}
	
	
}
