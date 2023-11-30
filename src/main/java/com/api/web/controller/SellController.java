package com.api.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.api.web.model.Rent;
import com.api.web.model.Sell;
import com.api.web.service.SellService;

@Controller
public class SellController {

	@Autowired
	private SellService sellservice;
	
	@GetMapping("/home")
	public String Homepage() {
	return "home";
	}
	
	@GetMapping("/AdminView")
	public String adminview() {
	return "AdminView";
	}


	@GetMapping("/Form")
	public String form() {
		return "Form";
	}
	
	//printing the data into table from the database
		@GetMapping("/SellingHouse")
		public String getAllSelling(Model model) {
			List <Sell> list= sellservice.getAllSelling();
			model.addAttribute("SellingHouse", list);
			return "SellingHouse";
		}
		@GetMapping("/delete/{id}")
		public String getDeleteById(@PathVariable("id") int sellid) {
			System.out.println("id is printed"+sellid);
			sellservice.getdeleteById(sellid);
			  return "redirect:/SellingHouse";
		}

		@RequestMapping("/Edit/{id}")
		public String EditId(@PathVariable("id") int sellid , Model model) 
		{
			Sell Selledit= sellservice.editById(sellid);
			model.addAttribute("Selledit", Selledit);
			return "editForm2";			
		}
		@PostMapping("/SellSave")
		public String SellAddData(@ModelAttribute("Selledit") Sell sell) {
			sellservice.SellEditData(sell);
			System.out.println("Editform is here");
			return "redirect:/SellingHouse";
		}
		
		@PostMapping("/save")
		public String addSelling(@RequestParam("image") MultipartFile imageFile,@RequestParam("UserName")String UserName,@RequestParam("Phone")String Phone,@RequestParam("Email")String Email,@RequestParam("Price")String Price,@RequestParam("Address")String Address,RedirectAttributes redirectAttributes) {
			 
		try{
				Sell s= new Sell();
				s.setUser_name(UserName);
				s.setPrice(Price);
				s.setPhone(Phone);
				s.setEmail(Email);
				s.setAddress(Address);
				sellservice.save(s, imageFile, redirectAttributes);
				System.out.println("Hello");
							}
			catch (Exception e) {
				e.printStackTrace();
				redirectAttributes.addFlashAttribute("error", "failed to uplaod the image , please try again ");
				System.out.println("Hii" + e);
			}
			return "redirect:/home";
		}
}
