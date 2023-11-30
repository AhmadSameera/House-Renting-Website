package com.api.web.model;

import java.util.Base64;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Rent {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String username;
	private String phone_number;
	private String email;
	private String price;
	private String address;
	private byte[] image;
	
	public Rent() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public Rent(int id, String username, String phone_number, String email, String price, String address,
			byte[] image) {
		super();
		this.id = id;
		this.username = username;
		this.phone_number = phone_number;
		this.email = email;
		this.price = price;
		this.address = address;
		this.image = image;
	}
	public String getImageBase64() {
        if (image != null && image.length > 0) {
            return Base64.getEncoder().encodeToString(image);
        }
        return "";
    }
	
}

