package helperland_springmvc.model;
import java.text.SimpleDateFormat;  
import java.util.Date;

import javax.persistence.*;

import org.hibernate.annotations.Entity;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "user")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id", nullable = false, updatable = false)
	private int user_id;
	
	@Column(name = "first_name")
	private String first_name;
	
	@Column(name = "last_name")
	private String last_name;
	
	@Column(name = "mobile")
	private String mobile;
	
	@Column(name = "email", nullable = false, unique = true)
	private String email;
	
	@Column(name = "password", nullable = false)
	private String password;
	
	@Column(name = "created_date")
	private Date created_date;
	
	@Column(name = "user_type_id")
	private int user_type_id;
	
	@Column(name = "reset_token")
	private String resetToken;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date date_of_birth;
	private Date modified_date;
	private int modified_by;
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getReset_token() {
		return resetToken;
	}
	public void setReset_token(String reset_token) {
		this.resetToken = reset_token;
		System.out.println(resetToken);
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public Date getModified_date() {
		return modified_date;
	}
	public void setModified_date(Date modified_date) {
		this.modified_date = modified_date;
	}
	public int getModified_by() {
		return modified_by;
	}
	public void setModified_by(int modified_by) {
		this.modified_by = modified_by;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public Date getCreated_date() {
		return created_date;
	}
	public void setCreated_date(Date created_date) {
		this.created_date = created_date;
	}
	
	public int getUser_type_id() {
		return user_type_id;
	}
	public void setUser_type_id(int user_type_id) {
		this.user_type_id = user_type_id;
	}
	
	public Date getDate_of_birth() {
		return date_of_birth;
	}
	public void setDate_of_birth(Date date_of_birth) {
		this.date_of_birth = date_of_birth;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int user_id, String first_name, String last_name, String mobile, String email, String password,
			Date created_date, int user_type_id, String resetToken, Date date_of_birth, Date modified_date, int modified_by) {
		super();
		this.user_id = user_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.mobile = mobile;
		this.email = email;
		this.password = password;
		this.created_date = created_date;
		this.user_type_id = user_type_id;
		this.resetToken = resetToken;
		this.date_of_birth = date_of_birth;
		
		this.modified_date = modified_date;
		this.modified_by = modified_by;
	}
	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", first_name=" + first_name + ", last_name=" + last_name + ", mobile="
				+ mobile + ", email=" + email + ", password=" + password + ", created_date=" + created_date
				+ ", user_type_id=" + user_type_id + ", resetToken=" + resetToken + ", date_of_birth=" + date_of_birth
				+ ", modified_date=" + modified_date + ", modified_by=" + modified_by + "]";
	}
	
	
	
	}
