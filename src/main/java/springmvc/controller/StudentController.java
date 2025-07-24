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
	
	
	
	
	
	
	
	
	
	
	// New mapping to show the update form with existing data
		@RequestMapping(value = "/showUpdateStudentForm", method = RequestMethod.GET)
		public String showUpdateStudentForm(@RequestParam("studentRollNumber") int studentRollNumber, Model model) {
			Student student = studentService.getStudentByRollNumber(studentRollNumber);
			if (student != null) {
				model.addAttribute("student", student);
				return "updateStudent"; // JSP page to display the update form
			} else {
				model.addAttribute("message", "Student with Roll Number " + studentRollNumber + " not found for update.");
				return "studentNotFound"; // Redirect to a not found page
			}
		}

		// New mapping to handle the actual update submission
		@RequestMapping(value = "/updateStudentDetails", method = RequestMethod.POST)
		public String updateStudent(@ModelAttribute Student student, Model model) {
			// First, get the existing student to retain the 'id' which is @Id and auto-generated
			Student existingStudent = studentService.getStudentByRollNumber(student.getStudentRollNumber());

			if (existingStudent != null) {
				// Update the mutable fields from the form submission to the existing student
				existingStudent.setStudentName(student.getStudentName());
				existingStudent.setHindi(student.getHindi());
				existingStudent.setEnglish(student.getEnglish());
				existingStudent.setPhysics(student.getPhysics());
				existingStudent.setChemistry(student.getChemistry());
				existingStudent.setMathematics(student.getMathematics());

				studentService.updateStudent(existingStudent); // Pass the updated existing student
				model.addAttribute("message", "Student details updated successfully for Roll Number: " + student.getStudentRollNumber());
				return "updateStudentSuccess"; // JSP for success message
			} else {
				model.addAttribute("message", "Student with Roll Number " + student.getStudentRollNumber() + " not found for update.");
				return "studentNotFound"; // JSP for not found message
			}
		}
	
	
		
		// this one is for returning student report from studentDashboard login
		
		@RequestMapping("/getStudentReportFromStudentDashboard")
		public String getStudentReportFromStudentDashboard(@RequestParam("studentRollNumber") int studentRollNumber, Model model) {
			Student student = studentService.getStudentByRollNumber(studentRollNumber);
			if (student != null) {
				model.addAttribute("student", student);
				return "singleStudentReport"; // JSP page to display the student report
			} else {
				model.addAttribute("message", "Student with Roll Number " + studentRollNumber + " not found.");
				return "studentNotFound"; // JSP page to display a "not found" message
			}
		}
		
		
	
	
	
	
}
