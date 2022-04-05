package helperland_springmvc.model;

public class FavouriteBlocked {
	private int id;
	private int user_id;
	private int target_user_id;
	private boolean is_favourite;
	private boolean is_blocked;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getTarget_user_id() {
		return target_user_id;
	}
	public void setTarget_user_id(int target_user_id) {
		this.target_user_id = target_user_id;
	}
	public boolean isIs_favourite() {
		return is_favourite;
	}
	public void setIs_favourite(boolean is_favourite) {
		this.is_favourite = is_favourite;
	}
	public boolean isIs_blocked() {
		return is_blocked;
	}
	public void setIs_blocked(boolean is_blocked) {
		this.is_blocked = is_blocked;
	}
	public FavouriteBlocked() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FavouriteBlocked(int id, int user_id, int target_user_id, boolean is_favourite, boolean is_blocked) {
		super();
		this.id = id;
		this.user_id = user_id;
		this.target_user_id = target_user_id;
		this.is_favourite = is_favourite;
		this.is_blocked = is_blocked;
	}
	@Override
	public String toString() {
		return "FavouriteBlocked [id=" + id + ", user_id=" + user_id + ", target_user_id=" + target_user_id
				+ ", is_favourite=" + is_favourite + ", is_blocked=" + is_blocked + "]";
	}
	
	
}
