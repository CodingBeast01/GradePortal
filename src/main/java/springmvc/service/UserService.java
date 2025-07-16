package springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springmvc.dao.UserDao;
import springmvc.model.Student;
import springmvc.model.User;


@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	public int createUser(User user) {
		return this.userDao.saveUser(user);
	}

//	public User authenticateUser(User user) {
//		return this.userDao.login(user);
//	}
	
	 public User authenticateUser(String email, String password) {
	        return userDao.getUserByEmailAndPassword( email, password);
	    }

	
}
