package helperland_springmvc.model;

import java.util.Date;

public class Contactus {
	
	private int contact_us_id;
	private String first_name;
	private String last_name;
	private String phone_no;
	private String email;
	private String subject_type;
	private String message;
	private Date created_on;
	private int created_by;
	public Contactus() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Contactus(int contact_us_id, String first_name, String last_name, String phone_no, String email,
			String subject_type, String message, Date created_on, int created_by) {
		super();
		this.contact_us_id = contact_us_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.phone_no = phone_no;
		this.email = email;
		this.subject_type = subject_type;
		this.message = message;
		this.created_on = created_on;
		this.created_by = created_by;
	}
	public int getContact_us_id() {
		return contact_us_id;
	}
	public void setContact_us_id(int contact_us_id) {
		this.contact_us_id = contact_us_id;
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
	public String getPhone_no() {
		return phone_no;
	}
	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSubject_type() {
		return subject_type;
	}
	public void setSubject_type(String subject_type) {
		this.subject_type = subject_type;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getCreated_on() {
		return created_on;
	}
	public void setCreated_on(Date created_on) {
		this.created_on = created_on;
	}
	public int getCreated_by() {
		return created_by;
	}
	public void setCreated_by(int created_by) {
		this.created_by = created_by;
	}
	@Override
	public String toString() {
		return "Contactus [contact_us_id=" + contact_us_id + ", first_name=" + first_name + ", last_name=" + last_name
				+ ", phone_no=" + phone_no + ", email=" + email + ", subject_type=" + subject_type + ", message="
				+ message + ", created_on=" + created_on + ", created_by=" + created_by + "]";
	}
	
}

