package com.api.web.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.api.web.model.User;
import com.api.web.service.LoginService;
import com.api.web.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userservice;
	
	
	@GetMapping("/user")
	public String funuser(Model model)
	{
		return "/user";
		
	}
	@PostMapping("/Save")
	public String SaveData(@ModelAttribute User U, @RequestParam String password,Model model) {
	    userservice.savedata(U);
	        return "redirect:/Login";
	}
	
	
}
