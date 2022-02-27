package helperland_springmvc.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ServiceRequest {
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date service_start_date;
	
	private String service_start_time;
	private String service_hours;
	private String comments;
	private boolean has_pets;
	public ServiceRequest() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ServiceRequest(Date service_start_date, String service_start_time, String service_hours, String comments,
			boolean has_pets) {
		super();
		this.service_start_date = service_start_date;
		this.service_start_time = service_start_time;
		this.service_hours = service_hours;
		this.comments = comments;
		this.has_pets = has_pets;
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
	public String getService_hours() {
		return service_hours;
	}
	public void setService_hours(String service_hours) {
		this.service_hours = service_hours;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public boolean isHas_pets() {
		return has_pets;
	}
	public void setHas_pets(boolean has_pets) {
		this.has_pets = has_pets;
	}
	@Override
	public String toString() {
		return "ServiceRequest [service_start_date=" + service_start_date + ", service_start_time=" + service_start_time
				+ ", service_hours=" + service_hours + ", comments=" + comments + ", has_pets=" + has_pets + "]";
	}
	
	
	
}
