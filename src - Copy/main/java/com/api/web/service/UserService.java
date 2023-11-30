package com.api.web.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.api.web.model.User;
@Service
public class UserService {

	
		@Autowired
		private UserRepository UserInter;
		List<User> list= new ArrayList<User>();
		
		public void savedata(User U) {
			UserInter.save(U);
		
	}
		//Getting the username by its id ..
		public User chatById(int ChatId) {
			return UserInter.findById(ChatId).get();
		}
}
