package com.api.web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.api.web.model.User;

public interface LoginRepository extends JpaRepository<User, Integer>{

	User findByemail(String email);
	
}
