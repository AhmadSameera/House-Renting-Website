package com.api.web.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.api.web.model.Sell;



public interface Sellinterface {
	public List<Sell> getAllSelling();
	public void getdeleteById(int sellid);
	public Sell editById(int EditId);
	void save(Sell s, MultipartFile imageFile, RedirectAttributes redirectAttributes);
}
