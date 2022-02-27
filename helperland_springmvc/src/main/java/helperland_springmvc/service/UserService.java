package helperland_springmvc.service;

import java.util.Optional;

import helperland_springmvc.model.Login;
import helperland_springmvc.model.User;

public interface UserService {

	void register(User user);
	User validateUser(Login login); 
	boolean preventDuplicateEmail(User user);
	void updateResetPasswordToken(User user);
	User getByResetPasswordToken(String token);
	void updatePassword(User user, String new_password);
}
