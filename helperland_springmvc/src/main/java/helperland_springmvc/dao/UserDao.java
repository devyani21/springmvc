package helperland_springmvc.dao;

import helperland_springmvc.model.Login;
import helperland_springmvc.model.User;

public interface UserDao {
	
	void register(User user);
	User validateUser(Login login);
	boolean preventDuplicateEmail(User user);
	void updateResetPasswordToken(User user);
	User getByResetPasswordToken(String token);
	void updatePassword(User user, String new_password);
}
