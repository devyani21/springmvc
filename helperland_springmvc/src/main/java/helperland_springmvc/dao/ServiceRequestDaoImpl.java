package helperland_springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import helperland_springmvc.model.ServiceRequest;
import helperland_springmvc.model.ServiceRequestAddress;

public class ServiceRequestDaoImpl implements ServiceRequestDao {

	@Autowired
	DataSource dataSource;
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public List<ServiceRequest> getAllPendingRequestByUserId(int userid) {
		// TODO Auto-generated method stub
		String sql = "select * from service_request where user_id='"+userid+"'and status='"+0+"'";
		List<ServiceRequest> sr = jdbcTemplate.query(sql, new ServiceRequestMapper());
		System.out.println(sr.size());
		return sr;
	}
	
	public ServiceRequestAddress getServiceRequestAddressByServiceRequestId(int service_req_id) {
		// TODO Auto-generated method stub
		System.out.println(service_req_id);
		String sql = "select * from service_request_address where service_req_id='"+ service_req_id+"'";
		List<ServiceRequestAddress> sra = jdbcTemplate.query(sql, new ServiceRequestAddressMapper() );
		return sra.size() > 0 ? sra.get(0):null;
	}
	
	class ServiceRequestMapper implements RowMapper<ServiceRequest>{
		public ServiceRequest mapRow(ResultSet rs, int args1) throws SQLException{
			ServiceRequest servicerequest = new ServiceRequest();
			servicerequest.setService_req_id(rs.getInt("service_req_id"));
			servicerequest.setAddress_id(rs.getInt("address_id"));
			servicerequest.setComments(rs.getString("comments"));
			servicerequest.setCreated_date(rs.getDate("created_date"));
			servicerequest.setExtra_hours(rs.getFloat("extra_hours"));
			servicerequest.setHas_pets(rs.getBoolean("has_pets"));
			servicerequest.setService_hours(rs.getFloat("service_hours"));
			servicerequest.setService_id(rs.getInt("service_id"));
			servicerequest.setService_provider_id(rs.getInt("service_provider_id"));
			servicerequest.setService_start_date(rs.getDate("service_start_date"));
			servicerequest.setService_start_time(rs.getString("service_start_time"));
			servicerequest.setTotal_cost(rs.getFloat("total_cost"));
			return servicerequest;
		}
	}
	
	class ServiceRequestAddressMapper implements RowMapper<ServiceRequestAddress>{
		public ServiceRequestAddress mapRow(ResultSet rs, int args1) throws SQLException{
			ServiceRequestAddress sra = new ServiceRequestAddress();
			sra.setService_req_id(rs.getInt("service_req_id"));
			sra.setId(rs.getInt("id"));
			sra.setAddress_line1(rs.getString("address_line1"));
			sra.setAddress_line2(rs.getString("address_line2"));
			sra.setCity(rs.getString("city"));
			sra.setEmail(rs.getString("email"));
			sra.setMobile(rs.getString("mobile"));
			sra.setPostal_code(rs.getString("postal_code"));
			return sra;
		}
		
	}



	

}
