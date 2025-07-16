package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.model.User;
import springmvc.service.UserService;

@Controller
public class LoginController {

	
	@Autowired
	private UserService userService;
	
//	@RequestMapping(path="/registeruser" , method = RequestMethod.POST)
//    public String userRegistration(
//    		
//    		@RequestParam("email")String email,
//    		@RequestParam("userName")String userName,
//    		@RequestParam("email")String password,
//    		Model model
//    		) {
//		//System.out.println(email+userName+password);
//		model.addAttribute("email",email);
//		model.addAttribute("userName",userName);
//		model.addAttribute("password",password);
//		
//        return "registerSuccess"; 
//    }
	
	@RequestMapping(path="/registeruser" , method = RequestMethod.POST)
    public String userRegistration(@ModelAttribute User user , Model model){
    		 
    		System.out.println(user);
//    		if(user.getUserName().isEmpty() && user.getEmail().isEmpty()) {
//    			
//    			return "redirect:/register";
//    		}
    		
    		this.userService.createUser(user);
		
        return "registerSuccess"; 
    }
	
	
	
	@RequestMapping(path="/userlogin" , method = RequestMethod.POST)
	public String userLogin(@ModelAttribute User user, Model model) {
        User authenticatedUser = userService.authenticateUser(user.getEmail(), user.getPassword());
        
        	System.out.println(authenticatedUser);
        	System.out.println(user);
        	
        if (authenticatedUser != null) {
            model.addAttribute("user", authenticatedUser);
            System.out.println("Authenticated user: " + authenticatedUser);

            return "index"; // dashboard.jsp
        } else {
            model.addAttribute("error", "Invalid Email or Password");
            return "login"; // login.jsp
        }
    }
	
	
//	@RequestMapping(path="/userlogin" , method = RequestMethod.POST)
//    public String userLogin(@ModelAttribute User user , Model model){
//    		 
//    		System.out.println(user);
//
//    		this.userService.authenticateUser(user);
//		
//        return "registerSuccess"; 
//    }
//	
	
	
	
	
	
	
}
