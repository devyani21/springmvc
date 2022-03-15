package helperland_springmvc.model;

public class UserAddress {
	private int address_id;
	private int user_id;
	private String address_line1;
	private String address_line2;
	private String city;
	private String postal_code;
	private String mobile;
	private String email;
	private int type;
	private int is_deleted;
	private int is_default;
	private String state;
	public UserAddress() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserAddress(int address_id, int user_id, String address_line1, String address_line2, String city,
			 String postal_code, String mobile, String email, int type, int is_deleted, int is_default, String state) {
		super();
		this.address_id = address_id;
		this.user_id = user_id;
		this.address_line1 = address_line1;
		this.address_line2 = address_line2;
		this.city = city;
		this.postal_code = postal_code;
		this.mobile = mobile;
		this.email = email;
		this.type = type;
		this.is_deleted = is_deleted;
		this.is_default = is_default;
		this.state = state;
	}
	public int getAddress_id() {
		return address_id;
	}
	public void setAddress_id(int address_id) {
		this.address_id = address_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getAddress_line1() {
		return address_line1;
	}
	public void setAddress_line1(String address_line1) {
		this.address_line1 = address_line1;
	}
	public String getAddress_line2() {
		return address_line2;
	}
	public void setAddress_line2(String address_line2) {
		this.address_line2 = address_line2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	public String getPostal_code() {
		return postal_code;
	}
	public void setPostal_code(String postal_code) {
		this.postal_code = postal_code;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
	public int getIs_deleted() {
		return is_deleted;
	}
	public void setIs_deleted(int is_deleted) {
		this.is_deleted = is_deleted;
	}
	public int getIs_default() {
		return is_default;
	}
	public void setIs_default(int is_default) {
		this.is_default = is_default;
	}
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "UserAddress [address_id=" + address_id + ", user_id=" + user_id + ", address_line1=" + address_line1
				+ ", address_line2=" + address_line2 + ", city=" + city + ", postal_code=" + postal_code + ", mobile="
				+ mobile + ", email=" + email + ", type=" + type + ", is_deleted=" + is_deleted + ", is_default="
				+ is_default + ", state=" + state + "]";
	}
	
	
	
	
	
	
}
