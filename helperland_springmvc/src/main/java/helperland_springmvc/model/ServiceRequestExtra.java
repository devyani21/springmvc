package helperland_springmvc.model;

public class ServiceRequestExtra {
	private int service_req_extra_id;
	private int service_req_id;
	private int service_extra_id;
	public ServiceRequestExtra() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ServiceRequestExtra(int service_req_extra_id, int service_req_id, int service_extra_id) {
		super();
		this.service_req_extra_id = service_req_extra_id;
		this.service_req_id = service_req_id;
		this.service_extra_id = service_extra_id;
	}
	public int getService_req_extra_id() {
		return service_req_extra_id;
	}
	public void setService_req_extra_id(int service_req_extra_id) {
		this.service_req_extra_id = service_req_extra_id;
	}
	public int getService_req_id() {
		return service_req_id;
	}
	public void setService_req_id(int service_req_id) {
		this.service_req_id = service_req_id;
	}
	public int getService_extra_id() {
		return service_extra_id;
	}
	public void setService_extra_id(int service_extra_id) {
		this.service_extra_id = service_extra_id;
	}
	
	

}
