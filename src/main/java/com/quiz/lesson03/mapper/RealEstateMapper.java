package com.quiz.lesson03.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson03.domain.RealEstate;

@Repository
public interface RealEstateMapper {

	//input: 
	//output:
	public RealEstate selectRealEstateById(int id);
	
	
	//input
	//output
	public List<RealEstate> selectRealEstateListByRentPrice(@Param("rentPrice") int rentPrice);
	//@Param("") 안의 내용은 xml의 #{}안의 것과 일치해야한다 
	
	
	
	
	
	
	
}
