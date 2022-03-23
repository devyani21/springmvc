package helperland_springmvc.model;

public class ServiceRequestExtra {
	private int service_req_extra_id;
	private int service_req_id;
	private int service_extra_id;
	private int insidecabinets;
	private int insidefridge;
	private int insideoven;
	private int laundary;
	private int interiorwindows;
	public ServiceRequestExtra() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public ServiceRequestExtra(int service_req_extra_id, int service_req_id, int service_extra_id, int insidecabinets,
			int insidefridge, int insideoven, int laundary, int interiorwindows) {
		super();
		this.service_req_extra_id = service_req_extra_id;
		this.service_req_id = service_req_id;
		this.service_extra_id = service_extra_id;
		this.insidecabinets = insidecabinets;
		this.insidefridge = insidefridge;
		this.insideoven = insideoven;
		this.laundary = laundary;
		this.interiorwindows = interiorwindows;
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
	public int getInsidecabinets() {
		return insidecabinets;
	}
	public void setInsidecabinets(int insidecabinets) {
		this.insidecabinets = insidecabinets;
	}
	public int getInsidefridge() {
		return insidefridge;
	}
	public void setInsidefridge(int insidefridge) {
		this.insidefridge = insidefridge;
	}
	public int getInsideoven() {
		return insideoven;
	}
	public void setInsideoven(int insideoven) {
		this.insideoven = insideoven;
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
	
	
	

}
