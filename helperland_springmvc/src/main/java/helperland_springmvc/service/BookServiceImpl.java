package helperland_springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;

import helperland_springmvc.dao.BookServiceDao;
import helperland_springmvc.model.Zipcode;

public class BookServiceImpl implements BookService {
	
	@Autowired
	BookServiceDao bookservicedao;

	public boolean validateZipcode(String zipcode) {
		// TODO Auto-generated method stub
		return bookservicedao.validateZipcode(zipcode);
	}

}
