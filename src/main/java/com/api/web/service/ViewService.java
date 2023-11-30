package com.api.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.api.web.model.Rent;
import com.api.web.model.Sell;
import com.api.web.repository.RentRepository;
import com.api.web.repository.SellRepository;

@Service
public class ViewService {

	@Autowired SellRepository sellrepository;
	@Autowired RentRepository rentrepository;
	
	public List<Sell> getAllData(){
		return sellrepository.findAll();
	}
	
	public List<Rent> getRentAllData(){
		return rentrepository.findAll();
	}
}
