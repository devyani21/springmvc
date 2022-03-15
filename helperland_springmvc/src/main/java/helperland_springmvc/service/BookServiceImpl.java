package helperland_springmvc.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;

import helperland_springmvc.dao.BookServiceDao;
import helperland_springmvc.model.ServiceRequest;
import helperland_springmvc.model.ServiceRequestAddress;
import helperland_springmvc.model.ServiceRequestExtra;
import helperland_springmvc.model.Zipcode;

public class BookServiceImpl implements BookService {
	
	@Autowired
	BookServiceDao bookservicedao;

	public boolean validateZipcode(String zipcode) {
		// TODO Auto-generated method stub
		return bookservicedao.validateZipcode(zipcode);
	}

	public int addNewServiceRequest(ServiceRequest serviceRequest) throws SQLException {
		// TODO Auto-generated method stub
		return bookservicedao.addNewServiceRequest(serviceRequest);
	}

	public int getServiceReqIdByServiceId(int service_id) {
		// TODO Auto-generated method stub
		return bookservicedao.getServiceReqIdByServiceId(service_id);
	}

	public void saveServiceRequestAddress(ServiceRequestAddress serviceRequestAddress) {
		// TODO Auto-generated method stub
		bookservicedao.saveServiceRequestAddress(serviceRequestAddress);
	}

	public void saveServiceRequestExtra(ServiceRequestExtra serviceRequestExtra) {
		// TODO Auto-generated method stub
		bookservicedao.saveServiceRequestExtra(serviceRequestExtra);
	}
	
	
	
	

}
