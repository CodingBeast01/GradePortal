package springmvc.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import springmvc.model.Student;
import springmvc.model.User;

@Repository
public class StudentDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	
	@Transactional
	public int addStudent(Student student) {
		int id = (Integer) this.hibernateTemplate.save(student);
		return id;
	}


	@Transactional
	public Student deleteStudentByRollNumber(int studentRollNumber) {
		String hql = "FROM Student WHERE studentRollNumber = ?0";
		List<Student> students = (List<Student>) hibernateTemplate.find(hql, studentRollNumber);

		if (!students.isEmpty()) {
			Student studentToDelete = students.get(0);
			this.hibernateTemplate.delete(studentToDelete);
			return studentToDelete;
		}
		return null;
	}
	
	
	// New method to get all students
		public List<Student> getAllStudents() {
			return this.hibernateTemplate.loadAll(Student.class);
		}

	
	
}
