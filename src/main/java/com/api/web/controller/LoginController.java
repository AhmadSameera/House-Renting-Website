package com.api.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.api.web.model.User;
import com.api.web.service.LoginService;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginservice;
	
	@GetMapping("/Login")
	public String loginPage() {
		return "/Login";
	}
	
	 @PostMapping("/Login")
	    public String LoginUser(@RequestParam String email, @RequestParam String password, Model model) {
	        User user = loginservice.getUserByemail(email);
	        if (user != null && user.getPassword().equals(password)) {
	            return "redirect:/home";
	        } 
	        else if ("userlogin@1234".equals(email) && "arfiya".equals(password)) {
                model.addAttribute("successMessage", "Login Successfully!");
	        	return "redirect:/AdminView";
	        		
	            
			}
	        else {
	        	 model.addAttribute("error", "Password do not match.");
	            return "redirect:/Login";
	        }
	    }
	 @GetMapping("/logout")
	    public String logout(HttpSession session) {
	        session.invalidate(); // it will logout the user using the session
	        return "redirect:/Login";
	 }

	
}
