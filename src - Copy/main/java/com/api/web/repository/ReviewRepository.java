package com.api.web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.api.web.model.Review;


public interface ReviewRepository extends JpaRepository<Review, Integer>{

}
