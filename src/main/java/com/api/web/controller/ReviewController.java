package com.api.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.api.web.model.Review;
import com.api.web.model.Sell;
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
	
	//printing the data into table from the database
			@GetMapping("/ReviewData")
			public String getAllReview(Model model) {
				List <Review> list= reviewservice.getAllReview();
				model.addAttribute("ReviewData", list);
				return "ReviewData";
			}
			@GetMapping("/delete2/{id}")
			public String getDeleteById(@PathVariable("id") int reviewid) {
				System.out.println("id is printed"+reviewid);
				reviewservice.getdeleteById(reviewid);
				  return "redirect:/ReviewData";
			}
}


