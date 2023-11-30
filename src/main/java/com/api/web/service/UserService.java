package com.api.web.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.api.web.model.Review;
import com.api.web.model.Sell;
import com.api.web.model.User;
@Service
public class UserService {

	
		@Autowired
		private UserRepository UserInter;
		List<User> list= new ArrayList<User>();
		
		public void savedata(User U) {
			UserInter.save(U);
		
		}
		//delete by Id
		public void getdeleteById(int sellid) {
			UserInter.deleteById(sellid);
		}
		
		//save method to save the data..!!
		public List<User> getAllSign(){
			return UserInter.findAll();
		}
}
