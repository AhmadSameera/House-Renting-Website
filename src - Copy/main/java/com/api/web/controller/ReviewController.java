package com.api.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.api.web.model.Review;
import com.api.web.service.ReviewService;

@Controller
public class ReviewController {

@Autowired private ReviewService reviewservice;
	
	@PostMapping("/send")
	public String addreviews(@ModelAttribute("reviews") Review rv, Model model) {
		reviewservice.addreview(rv);
	model.addAttribute("Message", "Successfully!!");
	return "redirect:/home";
	}
}
