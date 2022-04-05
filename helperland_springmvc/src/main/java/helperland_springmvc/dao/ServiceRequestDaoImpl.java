package helperland_springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import helperland_springmvc.model.Rating;
import helperland_springmvc.model.ServiceRequest;
import helperland_springmvc.model.ServiceRequestAddress;
import helperland_springmvc.model.ServiceRequestExtra;
import helperland_springmvc.model.User;

public class ServiceRequestDaoImpl implements ServiceRequestDao {

	@Autowired
	DataSource dataSource;
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	//status 0 pending
	//status 1 completed
	//status 2 cancelled
	//status 3 accepted
	//status 4 rescheduled
	
	public List<ServiceRequest> getAllPendingRequestByUserId(int userid) {
		// TODO Auto-generated method stub
		String sql = "select * from service_request where user_id='"+userid+"'and (status='"+0+"' or status='"+3+"')";
		List<ServiceRequest> sr = jdbcTemplate.query(sql, new ServiceRequestMapper());
		System.out.println(sr.size());
		return sr.size()>0 ? sr : null;
	}
	
	public ServiceRequestAddress getServiceRequestAddressByServiceRequestId(int service_req_id) {
		// TODO Auto-generated method stub
		System.out.println(service_req_id);
		String sql = "select * from service_request_address where service_req_id='"+ service_req_id+"'";
		List<ServiceRequestAddress> sra = jdbcTemplate.query(sql, new ServiceRequestAddressMapper() );
		return sra.size() > 0 ? sra.get(0):null;
	}
	
	@Override
	public ServiceRequest getServiceRequestById(int service_req_id) {
		// TODO Auto-generated method stub
		String sql = "select * from service_request where service_req_id='"+service_req_id+"'";
		List<ServiceRequest> sr = jdbcTemplate.query(sql, new ServiceRequestMapper() );
		return sr.size() > 0 ? sr.get(0):null;
	}

	@Override
	public List<ServiceRequestExtra> getServiceRequestExtraByServiceRequestId(int service_req_id) {
		// TODO Auto-generated method stub
		String sql = "select * from service_req_extra where service_req_id='"+ service_req_id+"'";
		List<ServiceRequestExtra> sre = jdbcTemplate.query(sql, new ServiceRequestExtraMapper() );
		return sre;
	}
	
	@Override
	public void rescheduleService(int service_req_id, ServiceRequest serviceRequest) {
		// TODO Auto-generated method stub
		java.util.Date dt = new java.util.Date();

		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String currentdate = sdf.format(dt);
		String service_start_date = sdf.format(serviceRequest.getService_start_date());
		String sql = "update service_request set service_start_date='"+service_start_date+"',service_start_time='"+serviceRequest.getService_start_time()+"',modified_by='"+serviceRequest.getModified_by()+"',modified_date='"+currentdate+"'where service_req_id='"+service_req_id+"'";
		jdbcTemplate.update(sql);
		System.out.println("rescheduled successfully...");
	}
	
	@Override
	public void cancelService(int service_req_id, ServiceRequest serviceRequest) {
		// TODO Auto-generated method stub
		java.util.Date dt = new java.util.Date();

		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String currentdate = sdf.format(dt);
		System.out.println("cancel-service:- "+ serviceRequest.toString());
		String sql = "update service_request set status='"+serviceRequest.getStatus()+"',modified_by='"+serviceRequest.getModified_by()+"',modified_date='"+currentdate+"',has_issues='"+serviceRequest.getHas_issues()+"'where service_req_id='"+service_req_id+"'";
		jdbcTemplate.update(sql);
		System.out.println("cancelled successfully...");
	}
	
	@Override
	public List<ServiceRequest> getServiceRequestHistoryByUserId(int userid) {
		// TODO Auto-generated method stub
		String sql = "select * from service_request where user_id='"+userid+"'and (status='"+1+"'or status='"+2+"')";
		List<ServiceRequest> sr = jdbcTemplate.query(sql, new ServiceRequestMapper());
		System.out.println(sr.size());
		return sr.size()>0 ? sr : null;
	}
	
	@Override
	public void addServiceRating(Rating ratings) {
		// TODO Auto-generated method stub
		System.out.println(ratings.toString());
		String sql = "insert into rating(service_req_id,rating_from,rating_to,ratings,comments,rating_date,is_approved,visible_on_homescreen,on_time_arrival,friendly,quality_of_service) values(?,?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql, new Object[] {ratings.getService_req_id(), ratings.getRating_from(),ratings.getRating_to(),ratings.getRatings(),ratings.getComments(),ratings.getRating_date(),ratings.isIs_approved(),ratings.isVisible_on_homescreen(),ratings.getOn_time_arrival(),ratings.getFriendly(),ratings.getQuality_of_service()});
		System.out.println("inserted successfully..");
	}
	
	@Override
	public List<Rating> getRatingsByServiceRequestId(int service_req_id) {
		// TODO Auto-generated method stub
		String sql = "select * from rating where service_req_id='"+ service_req_id+"'";
		List<Rating> ratings = jdbcTemplate.query(sql, new RatingMapper());
		return ratings;
	}
	
	@Override
	public List<Rating> getRatingsByRatingTo(int service_provider_id) {
		// TODO Auto-generated method stub
		String sql = "select * from rating where rating_to='"+ service_provider_id+"'";
		List<Rating> ratings = jdbcTemplate.query(sql, new RatingMapper());
		return ratings.size() >0 ? ratings : null;
	}
	
	@Override
	public List<ServiceRequest> getAllServiceRequestByPostalCode(String postalcode) {
		// TODO Auto-generated method stub
		System.out.println(postalcode);
		String query = "select * from service_request where (zip_code='"+postalcode+"'and has_pets='"+1+"') and (status='"+0+"'or status='"+3+"')";
		List<ServiceRequest> sr = jdbcTemplate.query(query, new ServiceRequestMapper());
		System.out.println("ServiceRequestDaoImpl"+ sr.toString());
		return sr.size()>0 ? sr : null;
	}
	
	@Override
	public List<ServiceRequest> getAllServiceRequestByPostalCodeHavingNoPets(String postalcode) {
		// TODO Auto-generated method stub
		System.out.println(postalcode);
		String query = "select * from service_request where (zip_code='"+postalcode+"'and has_pets='"+0+"') and (status='"+0+"'or status='"+3+"')";
		List<ServiceRequest> sr = jdbcTemplate.query(query, new ServiceRequestMapper());
		System.out.println("ServiceRequestDaoImpl"+ sr.toString());
		return sr.size()>0 ? sr : null;
	}

	@Override
	public List<ServiceRequest> getServiceRequestBySPIdAndStatus(int user_id, int status) {
		// TODO Auto-generated method stub
		String query = "select * from service_request where service_provider_id='"+user_id+"'and status='"+status+"'";
		List<ServiceRequest> sr = jdbcTemplate.query(query, new ServiceRequestMapper());
		return sr.size()>0 ? sr:null;
	}
	
	@Override
	public void updateServiceRequestStatus(ServiceRequest sr) {
		// TODO Auto-generated method stub
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String sp_accepted_date = sdf.format(sr.getSp_accepted_date());
		String modified_date = sdf.format(sr.getModified_date());
		System.out.println(sr.toString());
		String query = "update service_request set service_provider_id='"+sr.getService_provider_id()+"',sp_accepted_date='"+sp_accepted_date+"',status='"+sr.getStatus()+"',modified_date='"+modified_date+"',modified_by='"+sr.getModified_by()+"' where service_req_id='"+sr.getService_req_id()+"'";
		jdbcTemplate.update(query);
		System.out.println("Status updated successfully..");
	}
	

	public void serviceRequestComplete(User userinfo, int service_req_id) {
		// TODO Auto-generated method stub
				java.util.Date dt = new java.util.Date();

				java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

				String currentdate = sdf.format(dt);
				//System.out.println("serviceRequestDaoImpl:- "+serviceRequest.toString());
				String sql = "update service_request set status='"+1+"',modified_by='"+userinfo.getUser_type_id()+"',modified_date='"+currentdate+"'where service_req_id='"+service_req_id+"'and status='"+3+"'";
				jdbcTemplate.update(sql);
				System.out.println("completed successfully...");
	}

	@Override
	public List<ServiceRequest> getServiceRequestBySPIdWhichArePending(int user_id, int status) {
		// TODO Auto-generated method stub
		String query = "select * from service_request where service_provider_id='"+user_id+"'and (status='"+status+"' or status='"+3+"')";
		List<ServiceRequest> sr = jdbcTemplate.query(query, new ServiceRequestMapper());
		return sr.size()>0 ? sr:null;
	}
	
	@Override
	public List<ServiceRequest> getServiceRequestHistoryBySPId(int sp_id) {
		// TODO Auto-generated method stub
		String sql = "select * from service_request where service_provider_id='"+sp_id+"'and (status='"+1+"'or status='"+2+"')";
		List<ServiceRequest> sr = jdbcTemplate.query(sql, new ServiceRequestMapper());
		System.out.println(sr.size());
		return sr.size()>0 ? sr : null;
	}
	
	@Override
	public List<ServiceRequest> getServiceRequestBySPId(int sp_id) {
		// TODO Auto-generated method stub
		String sql = "select * from service_request where service_provider_id='"+sp_id+"'";
		List<ServiceRequest> sr = jdbcTemplate.query(sql, new ServiceRequestMapper());
		System.out.println(sr.size());
		return sr.size()>0 ? sr : null;
	}

	@Override
	public List<ServiceRequest> getAllServiceRequests() {
		// TODO Auto-generated method stub
		String sql = "select * from service_request";
		List<ServiceRequest> allsr = jdbcTemplate.query(sql, new ServiceRequestMapper());
		return allsr.size()>0?allsr:null;
	}
	
	@Override
	public void updateServiceRequestAddress(ServiceRequestAddress srAddress) {
		// TODO Auto-generated method stub
		String sql = "update service_request_address set address_line1='"+srAddress.getAddress_line1()+"',address_line2='"+srAddress.getAddress_line2()+"',postal_code='"+srAddress.getPostal_code()+"',city='"+srAddress.getCity()+"'where service_req_id='"+srAddress.getService_req_id()+"'";
		jdbcTemplate.update(sql);
		System.out.println("SR Address updated successfully");
	}

	
	class ServiceRequestMapper implements RowMapper<ServiceRequest>{
		public ServiceRequest mapRow(ResultSet rs, int args1) throws SQLException{
			ServiceRequest servicerequest = new ServiceRequest();
			servicerequest.setUser_id(rs.getInt("user_id"));
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
			servicerequest.setStatus(rs.getInt("status"));
			servicerequest.setZip_code_value(rs.getString("zip_code"));
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
	
	class ServiceRequestExtraMapper implements RowMapper<ServiceRequestExtra>{
		public ServiceRequestExtra mapRow(ResultSet rs, int args1) throws SQLException {
			ServiceRequestExtra serviceRequestExtra = new ServiceRequestExtra();
			serviceRequestExtra.setService_req_extra_id(rs.getInt("service_req_extra_id"));
			serviceRequestExtra.setService_req_id(rs.getInt("service_req_id"));
			serviceRequestExtra.setService_extra_id(rs.getInt("service_extra_id"));
			return serviceRequestExtra;
		}
		
		
	}

	class RatingMapper implements RowMapper<Rating>{
		public Rating mapRow(ResultSet rs, int args1) throws SQLException{
			Rating rating = new Rating();
			rating.setRating_id(rs.getInt("rating_id"));
			rating.setService_req_id(rs.getInt("service_req_id"));
			rating.setRating_from(rs.getInt("rating_from"));
			rating.setRating_to(rs.getInt("rating_to"));
			rating.setRating_date(rs.getDate("rating_date"));
			rating.setIs_approved(rs.getBoolean("is_approved"));
			rating.setVisible_on_homescreen(rs.getBoolean("visible_on_homescreen"));
			rating.setComments(rs.getString("comments"));
			rating.setRatings(rs.getFloat("ratings"));
			rating.setFriendly(rs.getInt("friendly"));
			rating.setOn_time_arrival(rs.getInt("on_time_arrival"));
			rating.setQuality_of_service(rs.getInt("quality_of_service"));
			return rating;
		}
	}

	

	
	

	
	
	
	
	
	

	
	
	

	

	
	

	
	



	

}
