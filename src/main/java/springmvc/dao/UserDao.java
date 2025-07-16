package springmvc.dao;

import javax.persistence.NoResultException;
import javax.transaction.Transactional;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

import springmvc.model.User;

@Repository
public class UserDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int saveUser(User user){
		int id = (Integer) this.hibernateTemplate.save(user);
		return id;
	}
	
//	@Transactional
//	public int login(User user){
//		int id = (Integer) this.hibernateTemplate.save(user);
//		return id;
//	}
//	
	
	
//	@Transactional
//	public User login(User user) {
//	  
//		Query query = this.hibernateTemplate.getSessionFactory()
//		        .getCurrentSession()
//		        .createQuery("FROM User WHERE email = :email and password = :password");
//
//		    query.setParameter("email", user.getEmail());
//		    query.setParameter("password", user.getPassword());
//
//		    try {
//		        return (User) query.getSingleResult(); // JPA-style
//		    } catch (NoResultException e) {
//		        return null; // no user found
//		    }
//		
//	}
//	
	
	
	@Transactional
	public User getUserByEmailAndPassword(String email, String password) {
	    String hql = "FROM User WHERE email = ?0 AND password = ?1";
	    List<User> users = (List<User>) hibernateTemplate.find(hql, email, password);
	    return users.isEmpty() ? null : users.get(0);
	}

	
	

	
	
}
