package com.api.web.service;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.api.web.model.Rent;
import com.api.web.model.Sell;
import com.api.web.repository.RentRepository;

@Service
public class RentService {

	@Autowired 
	private RentRepository Rentrepository;
	public void addData(Rent R)
	{
		Rentrepository.save(R);
	}
	
	
	public List<Rent> getAllRent(){
		return Rentrepository.findAll();
	}

	//delete by Id
	public void getRentDeleteById(int rentid) {
		Rentrepository.deleteById(rentid);
	}

	//edit by id 
	
	public Rent EditRentById(int rentid) {
		return Rentrepository.findById(rentid).get();
	}
	
	public void RentEditData(Rent rent) {
		Rentrepository.save(rent);
	}
	
	public void  save(Rent r,MultipartFile imageFile, RedirectAttributes redirectAttributes) {
		try {
			byte[] image= imageFile.getBytes();
			r.setImage(image);
			Rentrepository.save(r);
			redirectAttributes.addFlashAttribute(null, redirectAttributes);
			System.out.println("Sys");
			}
			catch (IOException e) {
			// TODO: handle exception
			e.printStackTrace();
			}
	}
}
