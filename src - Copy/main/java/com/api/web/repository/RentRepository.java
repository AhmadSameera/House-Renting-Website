package com.api.web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.api.web.model.Rent;

public interface RentRepository extends JpaRepository<Rent,Integer>{

}
