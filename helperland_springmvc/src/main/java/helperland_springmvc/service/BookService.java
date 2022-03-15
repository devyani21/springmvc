package helperland_springmvc.service;

import java.sql.SQLException;

import helperland_springmvc.model.ServiceRequest;
import helperland_springmvc.model.ServiceRequestAddress;
import helperland_springmvc.model.ServiceRequestExtra;
import helperland_springmvc.model.Zipcode;

public interface BookService {
	
	boolean validateZipcode(String zipcode);
	int addNewServiceRequest(ServiceRequest serviceRequest) throws SQLException;
	int getServiceReqIdByServiceId(int service_id);
	void saveServiceRequestAddress(ServiceRequestAddress serviceRequestAddress);
	void saveServiceRequestExtra(ServiceRequestExtra serviceRequestExtra);
}
