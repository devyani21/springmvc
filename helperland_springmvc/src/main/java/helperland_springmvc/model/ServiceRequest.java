package helperland_springmvc.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ServiceRequest {
	
	private int service_req_id;
	private int user_id;
	private int service_id;
	
	private Date service_start_date;
	private String service_start_time;
	private String zip_code_value;
	private float service_hourly_rate;
	private float service_hours;
	private float extra_hours;
	private float total_cost;
	private String comments;
	private int service_provider_id;
	private Date sp_accepted_date;
	private boolean has_pets;
	private int status;
	private Date created_date;
	private Date modified_date;
	private int modified_by;
	private int address_id;
	
	private int insidecabinets;
	private int insideoven;
	private int insidefridge;
	private int laundary;
	private int interiorwindows;
	
	private String has_issues;
	
	public ServiceRequest() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	public ServiceRequest(int service_req_id, int user_id, int service_id, Date service_start_date,
			String service_start_time, String zip_code_value, float service_hourly_rate, float service_hours, float extra_hours,
			float total_cost, String comments, int service_provider_id, Date sp_accepted_date, boolean has_pets,
			int status, Date created_date, Date modified_date, int modified_by, int address_id, 
		    int insidecabinets, int insideoven, int insidefridge, int laundary, int interiorwindows, String has_issues) {
		super();
		this.service_req_id = service_req_id;
		this.user_id = user_id;
		this.service_id = service_id;
		this.service_start_date = service_start_date;
		this.service_start_time = service_start_time;
		this.zip_code_value = zip_code_value;
		this.service_hourly_rate = service_hourly_rate;
		this.service_hours = service_hours;
		this.extra_hours = extra_hours;
		this.total_cost = total_cost;
		this.comments = comments;
		this.service_provider_id = service_provider_id;
		this.sp_accepted_date = sp_accepted_date;
		this.has_pets = has_pets;
		this.status = status;
		this.created_date = created_date;
		this.modified_date = modified_date;
		this.modified_by = modified_by;
		this.address_id = address_id;
		this.insidecabinets = insidecabinets;
		this.insidefridge = insidefridge;
		this.insideoven = insideoven;
		this.laundary = laundary;
		this.interiorwindows = interiorwindows;
		this.has_issues = has_issues;
	}

	public int getService_req_id() {
		return service_req_id;
	}

	public void setService_req_id(int service_req_id) {
		this.service_req_id = service_req_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getService_id() {
		return service_id;
	}

	public void setService_id(int service_id) {
		this.service_id = service_id;
	}

	public Date getService_start_date() {
		return service_start_date;
	}

	public void setService_start_date(Date service_start_date) {
		this.service_start_date = service_start_date;
	}

	public String getService_start_time() {
		return service_start_time;
	}

	public void setService_start_time(String service_start_time) {
		this.service_start_time = service_start_time;
	}

	public String getZip_code_value() {
		return zip_code_value;
	}

	public void setZip_code_value(String zip_code_value) {
		this.zip_code_value = zip_code_value;
	}

	public float getService_hourly_rate() {
		return service_hourly_rate;
	}

	public void setService_hourly_rate(float service_hourly_rate) {
		this.service_hourly_rate = service_hourly_rate;
	}

	public float getService_hours() {
		return service_hours;
	}

	public void setService_hours(float service_hours) {
		this.service_hours = service_hours;
	}

	public float getExtra_hours() {
		return extra_hours;
	}

	public void setExtra_hours(float extra_hours) {
		this.extra_hours = extra_hours;
	}

	public float getTotal_cost() {
		return total_cost;
	}

	public void setTotal_cost(float total_cost) {
		this.total_cost = total_cost;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public int getService_provider_id() {
		return service_provider_id;
	}

	public void setService_provider_id(int service_provider_id) {
		this.service_provider_id = service_provider_id;
	}

	public Date getSp_accepted_date() {
		return sp_accepted_date;
	}

	public void setSp_accepted_date(Date sp_accepted_date) {
		this.sp_accepted_date = sp_accepted_date;
	}

	public boolean getHas_pets() {
		return has_pets;
	}

	public void setHas_pets(boolean has_pets) {
		this.has_pets = has_pets;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Date getCreated_date() {
		return created_date;
	}

	public void setCreated_date(Date created_date) {
		this.created_date = created_date;
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


	public int getAddress_id() {
		return address_id;
	}


	public void setAddress_id(int address_id) {
		this.address_id = address_id;
	}


	public int getInsidecabinets() {
		return insidecabinets;
	}


	public void setInsidecabinets(int insidecabinets) {
		this.insidecabinets = insidecabinets;
	}


	public int getInsideoven() {
		return insideoven;
	}


	public void setInsideoven(int insideoven) {
		this.insideoven = insideoven;
	}


	public int getInsidefridge() {
		return insidefridge;
	}


	public void setInsidefridge(int insidefridge) {
		this.insidefridge = insidefridge;
	}


	public int getLaundary() {
		return laundary;
	}


	public void setLaundary(int laundary) {
		this.laundary = laundary;
	}


	public int getInteriorwindows() {
		return interiorwindows;
	}


	public void setInteriorwindows(int interiorwindows) {
		this.interiorwindows = interiorwindows;
	}
	

	public String getHas_issues() {
		return has_issues;
	}


	public void setHas_issues(String has_issues) {
		this.has_issues = has_issues;
	}


	@Override
	public String toString() {
		return "ServiceRequest [service_req_id=" + service_req_id + ", user_id=" + user_id + ", service_id="
				+ service_id + ", service_start_date=" + service_start_date + ", service_start_time="
				+ service_start_time + ", zip_code_value=" + zip_code_value + ", service_hourly_rate="
				+ service_hourly_rate + ", service_hours=" + service_hours + ", extra_hours=" + extra_hours
				+ ", total_cost=" + total_cost + ", comments=" + comments + ", service_provider_id="
				+ service_provider_id + ", sp_accepted_date=" + sp_accepted_date + ", has_pets=" + has_pets
				+ ", status=" + status + ", created_date=" + created_date + ", modified_date=" + modified_date
				+ ", modified_by=" + modified_by + ", address_id=" + address_id + ", insidecabinets=" + insidecabinets
				+ ", insideoven=" + insideoven + ", insidefridge=" + insidefridge + ", laundary=" + laundary
				+ ", interiorwindows=" + interiorwindows + ", has_issues=" + has_issues + "]";
	}


	
	
}
