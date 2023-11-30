package com.api.web.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.api.web.model.Review;
import com.api.web.model.Sell;
import com.api.web.repository.ReviewRepository;
@Service
public class ReviewService implements ReviewInterface{

	@Autowired
	private ReviewRepository reviewrepository;
	
	public void addreview(Review rv) {
		reviewrepository.save(rv);
	}
	List<Review> list= new ArrayList<Review>();
	//save method to save the data..!!
	public List<Review> getAllReview(){
		return reviewrepository.findAll();
	}
	//delete by Id
			public void getdeleteById(int reviewid) {
				reviewrepository.deleteById(reviewid);
			}
			

}
