package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	
	@RequestMapping("/")
    public String login() {
        return "login";  // Resolves to /WEB-INF/views/index.jsp
    }
	
	@RequestMapping("/register")
    public String register() {
        return "register";  // Resolves to /WEB-INF/views/index.jsp
    }
	
	@RequestMapping("/login")
    public String loginr() {
        return "login";  // Resolves to /WEB-INF/views/index.jsp
    }
	@RequestMapping("/AddStudent")
    public String addStudent() {
        return "AddStudent";  // Resolves to /WEB-INF/views/index.jsp
    }
	
	
	
	@RequestMapping("/index")
    public String index() {
        return "index";  // Resolves to /WEB-INF/views/index.jsp
    }
	
	@RequestMapping("/deleteStudent")
    public String delete() {
        return "DeleteStudent";  // Resolves to /WEB-INF/views/index.jsp
    }
	
	
	
//	@RequestMapping("/index")
//	public String home() {
//		System.out.println("this is homepage");
//		return "index";
//	}

}
