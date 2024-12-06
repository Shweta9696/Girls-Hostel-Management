package com.saraswati.hostel.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.saraswati.hostel.entity.User;
import com.saraswati.hostel.services.UserService;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	
	//register user
	@PostMapping("/userRegister")
	public String requestMethodName(@ModelAttribute User user,
			Map<String, Object> map) {
		
		
		User user2 = userService.saveUser(user);
		
		map.put("user", user2);
				
		return "userRegisterSuccess";
	}
	
	//login user
	@PostMapping("/userLogin")
	public String userLogin(@RequestParam String emailId, @RequestParam String password, Map<String, Object> map,HttpServletRequest req)
	{
		ServletContext contex = req.getServletContext();
		User exist=userService.verifyUser(emailId, password);
		if(exist!=null)
		{
			contex.setAttribute("name", exist.getName());
			map.put("msg", "Login success.");
			map.put("user", exist);
			return "userloginsuccess";
		}
		else
		{
			map.put("msg", "Email-Id or password does not exist!!");
			
			return "userLoginFail";
		}
	}
	
	//forget password
	@PostMapping("/userforget")
	public String changePassword(@ModelAttribute User user, Map<String, Object>map)
	{
		System.out.println("controller "+user.getEmailId());
		User userExist=userService.updateUserPassword(user, user.getId());
		System.out.println("hii  "+userExist);
		if(userExist!=null)
		{
			map.put("msg", "Password has been changed!!!");
			return "userPasswordChange";
		}
		else
		{
			map.put("msg", "Wrong Email address!!");
			return "userPasswordNotChange";
		}
		
	}
	
	//get all student to admin section
	@GetMapping("/managestudents")
    public String viewAllStudents(Model model) {
        model.addAttribute("students", userService.getAllUser());//return all students
        return "managestudents"; 
    }
	
	//delete user
	
    @GetMapping("/removeStudent")
    public String deleteFeeSection(@RequestParam("id") Long id) {
        userService.deleteStudent(id);
        return "redirect:/managestudents"; // Redirect to a list view of all Fee Sections
    }

}
