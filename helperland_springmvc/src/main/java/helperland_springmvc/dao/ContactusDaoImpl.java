package helperland_springmvc.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import helperland_springmvc.model.Contactus;

public class ContactusDaoImpl implements ContactusDao {
	
	@Autowired
	DataSource dataSource;
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public void SaveContact(Contactus contactus) {
		// TODO Auto-generated method stub
		java.util.Date dt = new java.util.Date();

		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String currentTime = sdf.format(dt);
		
		String sql = "insert into contact_us(first_name,last_name,email,phone_no,subject_type,message,created_on,created_by) values(?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql, new Object[] { contactus.getFirst_name(), contactus.getLast_name(), contactus.getEmail(),
				contactus.getPhone_no(),contactus.getSubject_type(),contactus.getMessage() ,currentTime,contactus.getCreated_by() });
	}
	
}
