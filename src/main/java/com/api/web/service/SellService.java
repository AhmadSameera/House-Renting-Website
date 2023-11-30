package com.api.web.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.api.web.model.Rent;
import com.api.web.model.Sell;
import com.api.web.repository.SellRepository;

@Service
public class SellService {

	@Autowired
	private SellRepository sellrepository;
	List<Sell> list= new ArrayList<Sell>();
	//save method to save the data..!!
	public List<Sell> getAllSelling(){
		return sellrepository.findAll();
	}
	
	public void addData(Sell S)
{
		sellrepository.save(S);
	}

	//delete by Id
	public void getdeleteById(int sellid) {
		sellrepository.deleteById(sellid);
	}

	//edit by id 
	public Sell editById(int EditId) {
		return sellrepository.findById(EditId).get();
	}
	public void SellEditData(Sell sell) {
		sellrepository.save(sell);
	}
	
	public void  save(Sell s,MultipartFile imageFile, RedirectAttributes redirectAttributes) {
		try {
			byte[] image= imageFile.getBytes();
			s.setImage(image);
			sellrepository.save(s);
			redirectAttributes.addFlashAttribute(null, redirectAttributes);
			System.out.println("Sys");
			}
			catch (IOException e) {
			// TODO: handle exception
			e.printStackTrace();
			}
	}
	
	

}
