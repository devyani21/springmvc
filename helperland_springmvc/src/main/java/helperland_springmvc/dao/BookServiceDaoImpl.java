package helperland_springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import helperland_springmvc.model.ServiceRequest;
import helperland_springmvc.model.ServiceRequestAddress;
import helperland_springmvc.model.ServiceRequestExtra;
import helperland_springmvc.model.User;
import helperland_springmvc.model.Zipcode;

public class BookServiceDaoImpl implements BookServiceDao {
	
	@Autowired
	DataSource dataSource;
	@Autowired
	JdbcTemplate jdbcTemplate;

	public boolean validateZipcode(String zipcode) {
		// TODO Auto-generated method stub
		System.out.println("validate zipcode...");
		System.out.println(zipcode);
		String query = "select * from zipcode where zip_code_value ='" + zipcode + "'";
		List<Zipcode> zipcodes = jdbcTemplate.query(query, new ZipcodeMapper());
		return zipcodes.size() > 0;
		
	}
	
	public int addNewServiceRequest(ServiceRequest serviceRequest){
		System.out.println(serviceRequest.toString());
		Random random = new Random();
		int service_id = random.nextInt(100000);
		Date dt = new Date();
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String currentTime = sdf.format(dt);
		String query = "insert into service_request(user_id,service_id,service_start_date,service_start_time,zip_code,service_hourly_rate,service_hours,extra_hours,total_cost,comments,has_pets,status,created_date,address_id) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(query, new Object[] {serviceRequest.getUser_id(),service_id,serviceRequest.getService_start_date(),serviceRequest.getService_start_time(),serviceRequest.getZip_code_value(),serviceRequest.getService_hourly_rate(),
				serviceRequest.getService_hours(),serviceRequest.getExtra_hours(),serviceRequest.getTotal_cost() , serviceRequest.getComments(),serviceRequest.getHas_pets(),serviceRequest.getStatus(),currentTime,serviceRequest.getAddress_id()});
		System.out.println(service_id);
		return service_id;
	}
	
	public int getServiceReqIdByServiceId(int service_id) {
		String query = "select service_req_id from service_request where service_id = '" + service_id + "'";
		List<ServiceRequest> servicerequest = jdbcTemplate.query(query, new ServiceRequestMapper());
		return servicerequest.get(0).getService_req_id();
	}
	
	public void saveServiceRequestAddress(ServiceRequestAddress serviceRequestAddress) {
		String sql = "insert into service_request_address(service_req_id,address_line1,address_line2,city,postal_code,mobile,email) values(?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql, new Object[] { serviceRequestAddress.getService_req_id(), serviceRequestAddress.getAddress_line1(), serviceRequestAddress.getAddress_line2(),
				serviceRequestAddress.getCity(), serviceRequestAddress.getPostal_code(), serviceRequestAddress.getMobile() ,serviceRequestAddress.getEmail() });

	}
	
	public void saveServiceRequestExtra(ServiceRequestExtra serviceRequestExtra) {
		String sql = "insert into service_req_extra(service_req_id,service_extra_id)values(?,?)";
		jdbcTemplate.update(sql, new Object[] { serviceRequestExtra.getService_req_id(),serviceRequestExtra.getService_extra_id() });	
	}
	
	
	
	class ZipcodeMapper implements RowMapper<Zipcode> {
		public Zipcode mapRow(ResultSet rs, int args1) throws SQLException {
			Zipcode zipcode = new Zipcode();
			zipcode.setZip_code_value(rs.getString("zip_code_value"));	
			return zipcode;
		}
	}
		
	class ServiceRequestMapper implements RowMapper<ServiceRequest>{
		public ServiceRequest mapRow(ResultSet rs, int args1) throws SQLException{
			ServiceRequest servicerequest = new ServiceRequest();
			servicerequest.setService_req_id(rs.getInt("service_req_id"));
			return servicerequest;
		}
	}
	
	class ServiceRequestExtraMapper implements RowMapper<ServiceRequestExtra>{
		public ServiceRequestExtra mapRow(ResultSet rs, int args1) throws SQLException {
			ServiceRequestExtra serviceRequestExtra = new ServiceRequestExtra();
			serviceRequestExtra.setService_req_extra_id(rs.getInt("service_req_extra_id"));
			serviceRequestExtra.setService_req_id(rs.getInt("service_req_id"));
			serviceRequestExtra.setService_extra_id(rs.getInt("service_extra_id"));
			return serviceRequestExtra;
		}
	}

	
}
