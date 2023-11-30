package com.api.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.api.web.model.Review;
import com.api.web.repository.ReviewRepository;
@Service
public class ReviewService implements ReviewInterface{

	@Autowired
	private ReviewRepository reviewrepository;
	
	public void addreview(Review rv) {
		reviewrepository.save(rv);
	}

}
