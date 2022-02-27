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

import helperland_springmvc.model.Login;
import helperland_springmvc.model.User;

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
		String sql = "insert into user(first_name,last_name,email,password,mobile,user_type_id,created_date) values(?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql, new Object[] { user.getFirst_name(), user.getLast_name(), user.getEmail(),
				user.getPassword(), user.getMobile(), user.getUser_type_id() ,currentTime });

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
		String query = "update user set Password='" + new_password + "' where Email='" + user.getEmail() + "' ";
		jdbcTemplate.update(query);
		System.out.println(user.getPassword() + user.getEmail());
	}

	class UserMapper implements RowMapper<User> {
		public User mapRow(ResultSet rs, int args1) throws SQLException {
			User user = new User();
			user.setFirst_name(rs.getString("first_name"));
			user.setLast_name(rs.getString("last_name"));
			user.setEmail(rs.getString("email"));
			user.setMobile(rs.getString("mobile"));
			user.setPassword(rs.getString("password"));
			user.setReset_token(rs.getString("reset_token"));
			return user;
		}
	}

	


}
