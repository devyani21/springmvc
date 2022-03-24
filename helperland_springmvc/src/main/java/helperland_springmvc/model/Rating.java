package helperland_springmvc.model;

import java.util.Date;

public class Rating {
	
	private int rating_id;
	private int service_req_id;
	private int rating_from;
	private int rating_to;
	private float ratings;
	private String comments;
	private Date rating_date;
	private boolean is_approved;
	private boolean visible_on_homescreen;
	private int on_time_arrival;
	private int friendly;
	private int quality_of_service;
	public Rating() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Rating(int rating_id, int service_req_id, int rating_from, int rating_to, float ratings, String comments,
			Date rating_date, boolean is_approved, boolean visible_on_homescreen, int on_time_arrival, int friendly,
			int quality_of_service) {
		super();
		this.rating_id = rating_id;
		this.service_req_id = service_req_id;
		this.rating_from = rating_from;
		this.rating_to = rating_to;
		this.ratings = ratings;
		this.comments = comments;
		this.rating_date = rating_date;
		this.is_approved = is_approved;
		this.visible_on_homescreen = visible_on_homescreen;
		this.on_time_arrival = on_time_arrival;
		this.friendly = friendly;
		this.quality_of_service = quality_of_service;
	}
	public int getRating_id() {
		return rating_id;
	}
	public void setRating_id(int rating_id) {
		this.rating_id = rating_id;
	}
	public int getService_req_id() {
		return service_req_id;
	}
	public void setService_req_id(int service_req_id) {
		this.service_req_id = service_req_id;
	}
	public int getRating_from() {
		return rating_from;
	}
	public void setRating_from(int rating_from) {
		this.rating_from = rating_from;
	}
	public int getRating_to() {
		return rating_to;
	}
	public void setRating_to(int rating_to) {
		this.rating_to = rating_to;
	}
	public float getRatings() {
		return ratings;
	}
	public void setRatings(float ratings) {
		this.ratings = ratings;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public Date getRating_date() {
		return rating_date;
	}
	public void setRating_date(Date rating_date) {
		this.rating_date = rating_date;
	}
	public boolean isIs_approved() {
		return is_approved;
	}
	public void setIs_approved(boolean is_approved) {
		this.is_approved = is_approved;
	}
	public boolean isVisible_on_homescreen() {
		return visible_on_homescreen;
	}
	public void setVisible_on_homescreen(boolean visible_on_homescreen) {
		this.visible_on_homescreen = visible_on_homescreen;
	}
	public int getOn_time_arrival() {
		return on_time_arrival;
	}
	public void setOn_time_arrival(int on_time_arrival) {
		this.on_time_arrival = on_time_arrival;
	}
	public int getFriendly() {
		return friendly;
	}
	public void setFriendly(int friendly) {
		this.friendly = friendly;
	}
	public int getQuality_of_service() {
		return quality_of_service;
	}
	public void setQuality_of_service(int quality_of_service) {
		this.quality_of_service = quality_of_service;
	}
	@Override
	public String toString() {
		return "Rating [rating_id=" + rating_id + ", service_req_id=" + service_req_id + ", rating_from=" + rating_from
				+ ", rating_to=" + rating_to + ", ratings=" + ratings + ", comments=" + comments + ", rating_date="
				+ rating_date + ", is_approved=" + is_approved + ", visible_on_homescreen=" + visible_on_homescreen
				+ ", on_time_arrival=" + on_time_arrival + ", friendly=" + friendly + ", quality_of_service="
				+ quality_of_service + "]";
	}
	
	
	
	

}
