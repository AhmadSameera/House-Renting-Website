package com.api.web.service;

import java.util.List;

import com.api.web.model.Rent;


public interface RentInterface {

	public List<Rent> getAllRent();
	public void getRentDeleteById(int rentid);
	public Rent EditRentById(int rentid);

}
