package com.api.web.model;

import java.util.Base64;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Sell {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String user_name;
	private String Phone;
	private String Email;
	private String Price;
	private String Address;
	private byte[] image;
	

	 public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getUser_name() {
		return user_name;
	}


	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}


	public String getPhone() {
		return Phone;
	}


	public void setPhone(String phone) {
		Phone = phone;
	}


	public String getEmail() {
		return Email;
	}


	public void setEmail(String email) {
		Email = email;
	}


	public String getPrice() {
		return Price;
	}


	public void setPrice(String price) {
		Price = price;
	}


	public String getAddress() {
		return Address;
	}


	public void setAddress(String address) {
		Address = address;
	}


	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}


	public Sell() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Sell(int id, String user_name, String phone, String email, String price, String address, byte[] image) {
		super();
		this.id = id;
		this.user_name = user_name;
		Phone = phone;
		Email = email;
		Price = price;
		Address = address;
		this.image = image;
	}


	public String getImageBase64() {
	        if (image != null && image.length > 0) {
	            return Base64.getEncoder().encodeToString(image);
	        }
	        return "";
	    }
}
