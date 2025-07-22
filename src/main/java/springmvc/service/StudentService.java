package springmvc.service;

import java.util.List;

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


//	public Student deleteUser(Student student) {
//		
//		return studentDao.deleteStudentByRollNumber(student);
//	}
//	
	
	public Student deleteUser(int studentRollNumber) {

		return studentDao.deleteStudentByRollNumber(studentRollNumber);
	}
	
	// New method to get all students
		public List<Student> getAllStudents() {
			return this.studentDao.getAllStudents();
		}
		
		// New method to get a single student by roll number
		public Student getStudentByRollNumber(int studentRollNumber) {
			return this.studentDao.getStudentByRollNumber(studentRollNumber);
		}
	
	
}
