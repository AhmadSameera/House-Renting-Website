package com.api.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.api.web.model.User;
import com.api.web.repository.LoginRepository;

@Service
public class LoginService {

	@Autowired
	private LoginRepository loginrepository;
	public User getUserByemail(String email) {
		return loginrepository.findByemail(email);
	}

	public User userById(int UserId) {
		return loginrepository.findById(UserId).get();
	}

}
