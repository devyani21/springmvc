package helperland_springmvc.dao;

import java.util.List;

import helperland_springmvc.model.FavouriteBlocked;
import helperland_springmvc.model.Login;
import helperland_springmvc.model.User;
import helperland_springmvc.model.UserAddress;

public interface UserDao {
	
	void register(User user);
	User validateUser(Login login);
	boolean preventDuplicateEmail(User user);
	void updateResetPasswordToken(User user);
	User getByResetPasswordToken(String token);
	void updatePassword(User user, String new_password);
	User getUserByEmail(String email);
	void saveUserAddress(UserAddress userAddress);
	List<UserAddress> getAllUserAddressByUserId(int user_id);
	UserAddress getAllUserAddressByAddressId(int address_id);
	void updateCustomerDetails(User user, int userid);
	String getUserPasswordByUserId(int userid);
	void changeUserPassword(User user, int userid, String newpassword);
	void updateCustomerAddress(UserAddress useraddress);
	void deleteCustomerAddress(int address_id);
	User getUserByUserId(int userid);
	List<FavouriteBlocked> getFavBlockByUserId(int user_id);
	FavouriteBlocked getFavBlockByUserIdAndTargetUserId(int user_id, int id);
	void addFavBlock(FavouriteBlocked newFavBlock);
	FavouriteBlocked getFavBlockById(int id);
	void updateFavBlock(FavouriteBlocked favBlock);
	List<User> getAllUser();
	List<UserAddress> getAllUserAddress();
	void updateUser(User userToModify);
	void approveUser(User userToModify);
	void updateFavouriteFavBlock(FavouriteBlocked favBlock);
}
