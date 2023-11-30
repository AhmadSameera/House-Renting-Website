package com.api.web.controller;

import java.util.Base64;
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
import com.api.web.service.RentService;

@Controller
public class RentController {

	@Autowired
	private RentService rentservice;
	
	@GetMapping("/RentForm")
	public String form() {
		return "RentForm";
	}
	
	
	@GetMapping("/RentingHouse")
	public String getAllRent(Model model) {
		List<Rent> list = rentservice.getAllRent();
		model.addAttribute("RentingHouse",list);
		return "RentingHouse";
	}
	
//	@PostMapping("/Rentsave")
//	public String SaveForm(@ModelAttribute("r") Rent R)
// 	{
// 		rentservice.addData(R);
// 		return "redirect:/home";
// 	}
	@PostMapping("/Rentsave")
	public String addRenting(@RequestParam("image") MultipartFile imageFile,@RequestParam("Username")String username,@RequestParam("phone_number")String phone_number,@RequestParam("Email")String Email,@RequestParam("Price")String Price,@RequestParam("Address")String Address,RedirectAttributes redirectAttributes) {
		 
	try{
			Rent r= new Rent();
			r.setUsername(username);
			r.setPrice(Price);
			r.setPhone_number(phone_number);
			r.setEmail(Email);
			r.setAddress(Address);
			rentservice.save(r, imageFile, redirectAttributes);
			System.out.println("Hello");
		}
		catch (Exception e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("error", "failed to uplaod the image , please try again ");
			System.out.println("Hii" + e);
		}
		return "redirect:/home";
	}
	
	
	@GetMapping("/Delete/{id}")
	public String getDeleteById(@PathVariable("id") int rentid) {
		System.out.println("id is printed"+rentid);
		rentservice.getRentDeleteById(rentid);
		  return "redirect:/RentingHouse";
	}

	@RequestMapping("/edit/{id}")
	public String EditId(@PathVariable("id") int rentid , Model model) 
	{
		Rent Rentedit= rentservice.EditRentById(rentid);
		
		model.addAttribute("Rentedit", Rentedit);
		System.out.println("hello");
		return "editForm";		
	}
	@PostMapping("/RentSave")
	public String RentAddData(@ModelAttribute("Rentedit") Rent rent) {
		rentservice.RentEditData(rent);
		System.out.println("Editform is here");
		return "redirect:/RentingHouse";
	}
}
