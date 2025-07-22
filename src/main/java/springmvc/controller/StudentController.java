package springmvc.controller;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc.model.Student;
import springmvc.model.User;
import springmvc.service.StudentService;



@Controller
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	
	@RequestMapping(value = "/addStudentDetails", method = RequestMethod.POST)
	public String addStudent(@ModelAttribute Student student , Model model) {
		
			System.out.println(student);
			
			this.studentService.addStudent(student);
		
        return "success"; 
		
	}
	
	@RequestMapping(value = "/DeleteStudentbyID", method = RequestMethod.POST)
	public String deleteStudent(@ModelAttribute Student student , Model model) {
				
		Student deleteStudent = studentService.deleteUser(student.getStudentRollNumber());
		
			return "DeleteStudentSuccessPage"; 
		
	}
	
}
