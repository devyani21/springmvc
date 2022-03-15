package helperland_springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;

import helperland_springmvc.dao.ContactusDao;
import helperland_springmvc.model.Contactus;

public class ContactusServiceImpl implements ContactusService {
	
	@Autowired
	ContactusDao contactusDao;

	public void SaveContact(Contactus contactus) {
		// TODO Auto-generated method stub
		contactusDao.SaveContact(contactus);
	}
}
