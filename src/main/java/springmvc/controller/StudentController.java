package springmvc.controller;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
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
				return "studentReportNotFound"; // JSP page to display a "not found" message
			}
		}
		
		
		
		// New method to download student report as Excel
		@RequestMapping("/downloadStudentReportExcel")
		public void downloadStudentReportExcel(@RequestParam("studentRollNumber") int studentRollNumber, HttpServletResponse response) throws IOException {
			Student student = studentService.getStudentByRollNumber(studentRollNumber);

			if (student == null) {
				// Handle case where student is not found
				response.setStatus(HttpServletResponse.SC_NOT_FOUND);
				response.getWriter().write("Student with Roll Number " + studentRollNumber + " not found.");
				return;
			}

			// Create a new Excel workbook
			Workbook workbook = new XSSFWorkbook();
			Sheet sheet = workbook.createSheet("Student Report");

			// Create header row
			Row headerRow = sheet.createRow(0);
			String[] headers = {"Field", "Value"};
			for (int i = 0; i < headers.length; i++) {
				Cell cell = headerRow.createCell(i);
				cell.setCellValue(headers[i]);
			}

			
			
			
			// Populate data rows
			int rowNum = 1;
			createCell(sheet.createRow(rowNum++), "Student ID", String.valueOf(student.getId()));
			createCell(sheet.createRow(rowNum++), "Roll Number", String.valueOf(student.getStudentRollNumber()));
			createCell(sheet.createRow(rowNum++), "Student Name", student.getStudentName());

			// Marks
			rowNum++; // Empty row for separation
			createCell(sheet.createRow(rowNum++), "Subject", "Marks"); // Sub-header
			createCell(sheet.createRow(rowNum++), "Hindi", String.valueOf(student.getHindi()));
			createCell(sheet.createRow(rowNum++), "English", String.valueOf(student.getEnglish()));
			createCell(sheet.createRow(rowNum++), "Physics", String.valueOf(student.getPhysics()));
			createCell(sheet.createRow(rowNum++), "Chemistry", String.valueOf(student.getChemistry()));
			createCell(sheet.createRow(rowNum++), "Mathematics", String.valueOf(student.getMathematics()));

			// Total and Percentage
			int totalMarks = student.getHindi() + student.getEnglish() + student.getPhysics() + student.getChemistry() + student.getMathematics();
			double maxMarks = 500.0; // Assuming 5 subjects * 100 marks each
			double percentage = (totalMarks / maxMarks) * 100;

			rowNum++; // Empty row for separation
			createCell(sheet.createRow(rowNum++), "Total Marks", String.valueOf(totalMarks));
			createCell(sheet.createRow(rowNum++), "Percentage", String.format("%.2f%%", percentage));


			// Auto-size columns
			for (int i = 0; i < headers.length; i++) {
				sheet.autoSizeColumn(i);
			}

			// Set response headers for file download
			response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
			response.setHeader("Content-Disposition", "attachment; filename=\"StudentReport_" + student.getStudentRollNumber() + ".xlsx\"");

			// Write the workbook to the response output stream
			workbook.write(response.getOutputStream());
			workbook.close();
		}

		// Helper method to create cells for the Excel report
		private void createCell(Row row, String header, String value) {
			row.createCell(0).setCellValue(header);
			row.createCell(1).setCellValue(value);
		}
	
	
	
	
}
