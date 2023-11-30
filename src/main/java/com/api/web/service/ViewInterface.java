package com.api.web.service;

import java.util.List;

import com.api.web.model.Rent;
import com.api.web.model.Sell;

;

public interface ViewInterface {

	public List<Sell> getAllData();
	public List<Rent> getRentAllData();
}
