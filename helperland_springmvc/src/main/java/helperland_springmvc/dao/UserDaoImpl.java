package helperland_springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Date;
import java.text.SimpleDateFormat;

import javax.sound.midi.Soundbank;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import helperland_springmvc.model.FavouriteBlocked;
import helperland_springmvc.model.Login;
import helperland_springmvc.model.User;
import helperland_springmvc.model.UserAddress;
import helperland_springmvc.model.Zipcode;

public class UserDaoImpl implements UserDao {

	@Autowired
	DataSource dataSource;
	@Autowired
	JdbcTemplate jdbcTemplate;

	public void register(User user) {
		// TODO Auto-generated method stub
		java.util.Date dt = new java.util.Date();

		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String currentTime = sdf.format(dt);
		String sql = "insert into user(first_name,last_name,email,password,mobile,user_type_id,created_date,is_active,is_approved,is_deleted) values(?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql, new Object[] { user.getFirst_name(), user.getLast_name(), user.getEmail(),
				user.getPassword(), user.getMobile(), user.getUser_type_id() ,currentTime, user.getIs_active(),user.getIs_approved(),user.getIs_deleted() });

	}

	public User validateUser(Login login) {
		// TODO Auto-generated method stub
		System.out.println("calling validateUser method...");
		String sql = "select * from user where email='" + login.getEmail() + "' and password='" + login.getPassword()
				+ "'";
		List<User> users = jdbcTemplate.query(sql, new UserMapper());
		System.out.println(users);
		return users.size() > 0 ? users.get(0) : null;
	}

	public boolean preventDuplicateEmail(User user) {
		String sql = "select * from user where email='" + user.getEmail() + "'";
		List<User> users = jdbcTemplate.query(sql, new UserMapper());
		return users.size() != 0 ? false : true;

	}
	
	public User getUserByEmail(String email){
		String sql = "select * from user where email='" + email + "'";
		List<User> users = jdbcTemplate.query(sql, new UserMapper());
		return users.size() > 0 ? users.get(0) : null;
	}
	
	public void updateResetPasswordToken(User user) {
		// TODO Auto-generated method stub
		System.out.println(user.getEmail() + " " + user.getReset_token());
		String query = "update user set reset_token='"+user.getReset_token()+ "' where email='"+user.getEmail()+"'";
		jdbcTemplate.update(query);
		System.out.println("reset token updated...");
	}
	
	public User getByResetPasswordToken(String token) {
		// TODO Auto-generated method stub
		String sql = "select * from user where reset_token='" + token + "'";
		List<User> users = jdbcTemplate.query(sql, new UserMapper());
		System.out.println(users);
		return users.size() > 0 ? users.get(0) : null;
	}

	public void updatePassword(User user, String new_password) {
		System.out.println(new_password);
		System.out.println(user.getPassword() + user.getEmail());
		java.util.Date dt = new java.util.Date();

		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String current_date = sdf.format(dt);
		String query = "update user set password='" + new_password + "',modified_date='"+current_date+"',modified_by='"+user.getModified_by()+"' where email='" + user.getEmail() + "' and user_id='"+user.getUser_id()+"' ";
		jdbcTemplate.update(query);
		System.out.println(user.getPassword() + user.getEmail());
	}
	
	public void saveUserAddress(UserAddress userAddress) {
		// TODO Auto-generated method stub
		String sql = "insert into user_address(user_id,address_line1,address_line2,city,postal_code,mobile,email,type,is_deleted,is_default) values(?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql, new Object[] { userAddress.getUser_id(), userAddress.getAddress_line1(), userAddress.getAddress_line2(),
				userAddress.getCity(), userAddress.getPostal_code(), userAddress.getMobile() ,userAddress.getEmail(), userAddress.getType(), userAddress.getIs_deleted(), userAddress.getIs_default() });
		String q2 = "update user set postal_code='"+userAddress.getPostal_code()+"'where user_id='"+userAddress.getUser_id()+"'";
		jdbcTemplate.update(q2);
		String q1 = "select * from zipcode where zip_code_value='"+userAddress.getPostal_code()+"'";
		List<Zipcode> zipcodes = jdbcTemplate.query(q1,new ZipcodeMapper());
		for(Zipcode z : zipcodes) {
			if(z.getZip_code_value() != userAddress.getPostal_code()) {
				String query = "insert into zipcode(zip_code_value) values(?)";
				jdbcTemplate.update(query, new Object[] {userAddress.getPostal_code()});
			}
		}
		
	}
	
	public List<UserAddress> getAllUserAddressByUserId(int user_id){
		String sql = "select * from user_address where user_id = '" + user_id + "' and is_deleted = '" + 0 + "'";
		List<UserAddress> userAddresses = jdbcTemplate.query(sql, new UserAddressMapper());
		return userAddresses;
	}
	
	
	public UserAddress getAllUserAddressByAddressId(int address_id){
		String sql = "select * from user_address where address_id = '" + address_id + "' and is_deleted = '" + 0 + "'";
		List<UserAddress> userAddresses = jdbcTemplate.query(sql, new UserAddressMapper());
		return userAddresses.get(0);
	}
	
	public void updateCustomerDetails(User user, int userid) {
		java.util.Date dt = new java.util.Date();

		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String current_date = sdf.format(dt);
		
		java.text.SimpleDateFormat sf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dob = sf.format(user.getDate_of_birth());
		System.out.println(dob);
		
		String sql="update user set first_name='"+ user.getFirst_name() +"',last_name='"+ user.getLast_name() +"',mobile='"+ user.getMobile() +"',date_of_birth='"+ dob +"',modified_by='"+ user.getModified_by() +"',modified_date='"+ current_date + "',email='"+user.getEmail()+ "'where user_id='"+ userid +"' ";  
		jdbcTemplate.update(sql);
	}
	
	public String getUserPasswordByUserId(int userid) {
		String sql = "select * from user where user_id='"+userid +"'";
		List<User> users = jdbcTemplate.query(sql, new UserMapper());
		System.out.println("old password is " + users.get(0).getPassword());
		return users.get(0).getPassword();
	}
	
	public void changeUserPassword(User user, int userid, String newpassword) {
		java.util.Date dt = new java.util.Date();

		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String current_date = sdf.format(dt);
		String sql="update user set password='"+ newpassword +"',modified_by='"+ user.getModified_by() +"',modified_date='"+ current_date + "'where user_id='"+ userid +"' ";  
		jdbcTemplate.update(sql);
	}
	
	public void updateCustomerAddress(UserAddress useraddress) {
		// TODO Auto-generated method stub
		System.out.println("userDaoImpl:- "+ useraddress.toString());
		String sql ="update user_address set address_line1='"+ useraddress.getAddress_line1()+"',address_line2='"+useraddress.getAddress_line2()+"',postal_code='"+useraddress.getPostal_code()+"',city='"+useraddress.getCity()+"',mobile='"+useraddress.getMobile()+"' where address_id='"+useraddress.getAddress_id()+"'";
		jdbcTemplate.update(sql);
		System.out.println("address updated successfully...");
	}
	
	public void deleteCustomerAddress(int address_id) {
		// TODO Auto-generated method stub
		System.out.println("userDaoImpl:- " + address_id);
		String sql = "delete from user_address where address_id='"+address_id+"'";
		jdbcTemplate.update(sql);
		System.out.println("address deleted successfully...");
	}
	
	public User getUserByUserId(int userid) {
		// TODO Auto-generated method stub
		String sql = "select * from user where user_id='"+ userid +"'";
		List<User> users = jdbcTemplate.query(sql, new UserMapper());
		return users.size()>0 ? users.get(0) : null;
	}
	
	@Override
	public List<FavouriteBlocked> getFavBlockByUserId(int user_id) {
		// TODO Auto-generated method stub
		String sql = "select * from favourite_blocked where user_id='"+ user_id + "'";
		List<FavouriteBlocked> fb = jdbcTemplate.query(sql, new FavouriteBlockedMapper());
		return fb.size()>0?fb:null;
	}
	
	@Override
	public FavouriteBlocked getFavBlockByUserIdAndTargetUserId(int user_id, int id) {
		// TODO Auto-generated method stub
		String sql = "select * from favourite_blocked where user_id='"+ user_id + "'and target_user_id='"+ id+ "'";
		List<FavouriteBlocked> fb = jdbcTemplate.query(sql, new FavouriteBlockedMapper());
		return fb.size()>0? fb.get(0):null;
	}

	@Override
	public void addFavBlock(FavouriteBlocked newFavBlock) {
		// TODO Auto-generated method stub
		String sql = "insert into favourite_blocked(user_id,target_user_id,is_favourite,is_blocked) values(?,?,?,?)";
		jdbcTemplate.update(sql, new Object[] {newFavBlock.getUser_id(), newFavBlock.getTarget_user_id(),newFavBlock.getIs_favourite(),newFavBlock.getIs_blocked()});
	}
	
	@Override
	public FavouriteBlocked getFavBlockById(int id) {
		// TODO Auto-generated method stub
		String sql = "select * from favourite_blocked where id='"+ id +"'";
		List<FavouriteBlocked> fb = jdbcTemplate.query(sql, new FavouriteBlockedMapper());
		return fb.size()>0? fb.get(0):null;
	}

	@Override
	public void updateFavBlock(FavouriteBlocked favBlock) {
		// TODO Auto-generated method stub
		System.out.println(favBlock.getIs_blocked());
			String sql = "update favourite_blocked set is_blocked='"+favBlock.getIs_blocked()+"'where id='"+favBlock.getId()+"'";
			jdbcTemplate.update(sql);
		
	}
	
	@Override
	public void updateFavouriteFavBlock(FavouriteBlocked favBlock) {
		// TODO Auto-generated method stub
		System.out.println(favBlock.getIs_favourite());
		String sql = "update favourite_blocked set is_favourite='"+favBlock.getIs_favourite()+"'where id='"+favBlock.getId()+"'";
		jdbcTemplate.update(sql);

	}

	
	@Override
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		String sql = "select * from user";
		List<User> users = jdbcTemplate.query(sql, new UserMapper());
		return users.size()>0? users:null;
	}
	
	@Override
	public List<UserAddress> getAllUserAddress() {
		// TODO Auto-generated method stub
		String sql = "select * from user_address";
		List<UserAddress> allUserAddress = jdbcTemplate.query(sql, new UserAddressMapper());
		return allUserAddress.size()>0? allUserAddress:null;
	}
	
	@Override
	public void updateUser(User userToModify) {
		// TODO Auto-generated method stub
		java.util.Date dt = new java.util.Date();

		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String current_date = sdf.format(dt);
		String sql = "update user set is_active='"+userToModify.getIs_active()+"',modified_by='"+userToModify.getModified_by()+"',modified_date='"+current_date+"' where user_id='"+userToModify.getUser_id()+"'";
		jdbcTemplate.update(sql);
		System.out.println("status changed successfully...");
	}

	@Override
	public void approveUser(User userToModify) {
		// TODO Auto-generated method stub
		java.util.Date dt = new java.util.Date();

		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String current_date = sdf.format(dt);
		String sql = "update user set is_approved='"+userToModify.getIs_approved()+"',modified_by='"+userToModify.getModified_by()+"',modified_date='"+current_date+"' where user_id='"+userToModify.getUser_id()+"'";
		jdbcTemplate.update(sql);
		System.out.println("User approved successfully...");
	}

	


	class UserMapper implements RowMapper<User> {
		public User mapRow(ResultSet rs, int args1) throws SQLException {
			User user = new User();
			user.setUser_id(rs.getInt("user_id"));
			user.setUser_type_id(rs.getInt("user_type_id"));
			user.setFirst_name(rs.getString("first_name"));
			user.setLast_name(rs.getString("last_name"));
			user.setEmail(rs.getString("email"));
			user.setMobile(rs.getString("mobile"));
			user.setPassword(rs.getString("password"));
			user.setReset_token(rs.getString("reset_token"));
			user.setCreated_date(rs.getDate("created_date"));
			user.setPostal_code(rs.getString("postal_code"));
			user.setIs_approved(rs.getInt("is_approved"));
			user.setIs_deleted(rs.getInt("is_deleted"));
			user.setIs_active(rs.getInt("is_active"));
			return user;
		}
	}
	
	class UserAddressMapper implements RowMapper<UserAddress>{
		public UserAddress mapRow(ResultSet rs, int args1) throws SQLException{
			UserAddress useraddress = new UserAddress();
			useraddress.setUser_id(rs.getInt("user_id"));
			useraddress.setAddress_id(rs.getInt("address_id"));
			useraddress.setAddress_line1(rs.getString("address_line1"));
			useraddress.setAddress_line2(rs.getString("address_line2"));
			useraddress.setCity(rs.getString("city"));
			useraddress.setPostal_code(rs.getString("postal_code"));
			useraddress.setEmail(rs.getString("email"));
			useraddress.setMobile(rs.getString("mobile"));
			useraddress.setType(rs.getInt("type"));
			useraddress.setIs_default(rs.getInt("is_default"));
			useraddress.setIs_deleted(rs.getInt("is_deleted"));;
			return useraddress;
		}
	}
	
	class ZipcodeMapper implements RowMapper<Zipcode> {
		public Zipcode mapRow(ResultSet rs, int args1) throws SQLException {
			Zipcode zipcode = new Zipcode();
			zipcode.setZip_code_value(rs.getString("zip_code_value"));	
			return zipcode;
		}
	}
	
	class FavouriteBlockedMapper implements RowMapper<FavouriteBlocked>{
		public FavouriteBlocked mapRow(ResultSet rs, int args1) throws SQLException{
			FavouriteBlocked favouriteblocked = new FavouriteBlocked();
			favouriteblocked.setId(rs.getInt("id"));
			favouriteblocked.setUser_id(rs.getInt("user_id"));
			favouriteblocked.setTarget_user_id(rs.getInt("target_user_id"));
			favouriteblocked.setIs_blocked(rs.getInt("is_blocked"));
			favouriteblocked.setIs_favourite(rs.getInt("is_favourite"));
			return favouriteblocked;
		}
	}

	
	

	

	
	
	

	
	
	
	
	

	

	

	

	
	


}
