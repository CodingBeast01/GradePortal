package springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Service;

import springmvc.dao.StudentDao;
import springmvc.model.Student;
import springmvc.model.User;

@Service
public class StudentService {
	
	@Autowired
	private StudentDao studentDao;
	
	
	public int addStudent(Student student) {
		
		return this.studentDao.addStudent(student);
		
	}


	public Student deleteUser(Student student) {
		
		return studentDao.deleteStudentByRollNumber(student);
	}
	
}
