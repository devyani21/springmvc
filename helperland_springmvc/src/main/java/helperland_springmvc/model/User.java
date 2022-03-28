package helperland_springmvc.model;
import java.text.SimpleDateFormat;  
import java.util.Date;
import java.util.Objects;

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
	
	private String postal_code;
	
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
	
	public String getPostal_code() {
		return postal_code;
	}
	public void setPostal_code(String postal_code) {
		this.postal_code = postal_code;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int user_id, String first_name, String last_name, String mobile, String email, String password,
			Date created_date, int user_type_id, String resetToken, Date date_of_birth, Date modified_date, int modified_by,String postal_code) {
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
		this.postal_code = postal_code;
	}
//	@Override
//	public String toString() {
//		return "User [user_id=" + user_id + ", first_name=" + first_name + ", last_name=" + last_name + ", mobile="
//				+ mobile + ", email=" + email + ", password=" + password + ", created_date=" + created_date
//				+ ", user_type_id=" + user_type_id + ", resetToken=" + resetToken + ", date_of_birth=" + date_of_birth
//				+ ", modified_date=" + modified_date + ", modified_by=" + modified_by + "]";
//	}
	
	@Override
	public String toString() {
		return "User [user_id=" + user_id + "]";
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((created_date == null) ? 0 : created_date.hashCode());
		result = prime * result + ((date_of_birth == null) ? 0 : date_of_birth.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((first_name == null) ? 0 : first_name.hashCode());
//		result = prime * result + gender;
//		result = prime * result + is_active;
//		result = prime * result + is_approved;
//		result = prime * result + is_deleted;
//		result = prime * result + is_online;
//		result = prime * result + is_registered_user;
		result = prime * result + ((last_name == null) ? 0 : last_name.hashCode());
		result = prime * result + ((mobile == null) ? 0 : mobile.hashCode());
		result = prime * result + modified_by;
		result = prime * result + ((modified_date == null) ? 0 : modified_date.hashCode());
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		result = prime * result + ((postal_code == null) ? 0 : postal_code.hashCode());
//		result = prime * result + ((resetToken == null) ? 0 : reset_token.hashCode());
		//result = prime * result + status;
		result = prime * result + user_id;
		//result = prime * result + ((user_profile_picture == null) ? 0 : user_profile_picture.hashCode());
		result = prime * result + user_type_id;
		//result = prime * result + works_with_pet;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (created_date == null) {
			if (other.created_date != null)
				return false;
		} else if (!created_date.equals(other.created_date))
			return false;
		if (date_of_birth == null) {
			if (other.date_of_birth != null)
				return false;
		} else if (!date_of_birth.equals(other.date_of_birth))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (first_name == null) {
			if (other.first_name != null)
				return false;
		} else if (!first_name.equals(other.first_name))
			return false;
//		if (gender != other.gender)
//			return false;
//		if (is_active != other.is_active)
//			return false;
//		if (is_approved != other.is_approved)
//			return false;
//		if (is_deleted != other.is_deleted)
//			return false;
//		if (is_online != other.is_online)
//			return false;
//		if (is_registered_user != other.is_registered_user)
			//return false;
		if (last_name == null) {
			if (other.last_name != null)
				return false;
		} else if (!last_name.equals(other.last_name))
			return false;
		if (mobile == null) {
			if (other.mobile != null)
				return false;
		} else if (!mobile.equals(other.mobile))
			return false;
		if (modified_by != other.modified_by)
			return false;
		if (modified_date == null) {
			if (other.modified_date != null)
				return false;
		} else if (!modified_date.equals(other.modified_date))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (postal_code == null) {
			if (other.postal_code != null)
				return false;
		} else if (!postal_code.equals(other.postal_code))
			return false;
//		if (reset_token == null) {
//			if (other.reset_token != null)
//				return false;
//		} else if (!reset_token.equals(other.reset_token))
//			return false;
//		if (status != other.status)
//			return false;
		if (user_id != other.user_id)
			return false;
//		if (user_profile_picture == null) {
//			if (other.user_profile_picture != null)
//				return false;
//		} else if (!user_profile_picture.equals(other.user_profile_picture))
//			return false;
		if (user_type_id != other.user_type_id)
			return false;
//		if (works_with_pet != other.works_with_pet)
//			return false;
		return true;
	}

	
	
	
	}
