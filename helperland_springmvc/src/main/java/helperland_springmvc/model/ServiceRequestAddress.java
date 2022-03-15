package helperland_springmvc.model;

public class ServiceRequestAddress {
	private int id;
	private int service_req_id;
	private String address_line1;
	private String address_line2;
	private String city;
	private String state;
	private String postal_code;
	private String mobile;
	private String email;
	private int type;
	public ServiceRequestAddress() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ServiceRequestAddress(int id, int service_req_id, String address_line1, String address_line2, String city,
			String state, String postal_code, String mobile, String email, int type) {
		super();
		this.id = id;
		this.service_req_id = service_req_id;
		this.address_line1 = address_line1;
		this.address_line2 = address_line2;
		this.city = city;
		this.state = state;
		this.postal_code = postal_code;
		this.mobile = mobile;
		this.email = email;
		this.type = type;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getService_req_id() {
		return service_req_id;
	}
	public void setService_req_id(int service_req_id) {
		this.service_req_id = service_req_id;
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
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
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
	
	
	

}
