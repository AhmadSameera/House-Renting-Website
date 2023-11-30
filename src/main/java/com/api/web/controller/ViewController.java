package com.api.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.api.web.model.Rent;
import com.api.web.model.Sell;
import com.api.web.service.ViewService;

@Controller
public class ViewController {

	@Autowired
	ViewService viewservice;
	
	@GetMapping("/view")
	public String ViewPage() {
		return "/viewPage";
	}
	
	@GetMapping("/ViewSell")
	public String getAlldata(Model model) {
		List<Sell> list=viewservice.getAllData();
		model.addAttribute("ViewSell",list);
		return "ViewSell";
	}
	@GetMapping("/properties")
	public String Property() {
		return "/properties";
	}
	
	//rent view page starts from here
		@GetMapping("/Rentview")
		public String RentviewPage() {
			return "/viewPage";
		}
		
		@GetMapping("/ViewRent")
		public String getAllRentdata(Model model) {
			List<Rent> list= viewservice.getRentAllData();
			model.addAttribute("ViewRent", list);
			return "ViewRent";
		}
	
}
