package helperland_springmvc.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import helperland_springmvc.dao.UserDao;
import helperland_springmvc.model.Login;
import helperland_springmvc.model.User;

public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDao userDao;
	
	public void register(User user) {
		// TODO Auto-generated method stub
		userDao.register(user);	
	}

	public User validateUser(Login login) {
		// TODO Auto-generated method stub
		return userDao.validateUser(login);
	}

	public boolean preventDuplicateEmail(User user) {
		// TODO Auto-generated method stub
		return userDao.preventDuplicateEmail(user);
	}

	public void updateResetPasswordToken(User user) {
		// TODO Auto-generated method stub
		userDao.updateResetPasswordToken(user );
		
	}

	public User getByResetPasswordToken(String token) {
		// TODO Auto-generated method stub
		return userDao.getByResetPasswordToken(token);
	}

	public void updatePassword(User user, String new_password) {
		// TODO Auto-generated method stub
		userDao.updatePassword(user, new_password);
	}
	

//	public void updateResetPasswordToken(User user, String token, String email) {
//		// TODO Auto-generated method stub
//		userDao.updateResetPassword(User user, String token, String email);
//		
//	}

//	public User getByResetPasswordToken(String token) {
//		// TODO Auto-generated method stub
//		return userDao.getByResetPasswordToken;
//	}
//
//	public void updatePassword(User user, String new_password) {
//		// TODO Auto-generated method stub
//		userDao.updatePassword(user, String new_password);
//	}

}
