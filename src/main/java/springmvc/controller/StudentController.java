package springmvc.controller;

import java.lang.reflect.Method;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@RequestMapping("/totalStudents")
    public String totalStudents(Model model) {
		List<Student> students = studentService.getAllStudents();
		model.addAttribute("students", students);
        return "totalStudents";
    }
	
	
	// New request mapping for getting a single student report by roll number
	@RequestMapping("/getStudentReport")
	public String getStudentReport(@RequestParam("studentRollNumber") int studentRollNumber, Model model) {
		Student student = studentService.getStudentByRollNumber(studentRollNumber);
		if (student != null) {
			model.addAttribute("student", student);
			return "studentReport"; // JSP page to display the student report
		} else {
			model.addAttribute("message", "Student with Roll Number " + studentRollNumber + " not found.");
			return "studentNotFound"; // JSP page to display a "not found" message
		}
	}
	
}
