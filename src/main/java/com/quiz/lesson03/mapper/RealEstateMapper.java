package com.quiz.lesson03.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson03.domain.RealEstate;

@Repository
public interface RealEstateMapper {

	public RealEstate selectRealEstateById(int id);
	
	//QUIZ01
	public List<RealEstate> selectRealEstateListByRentPrice(
			@Param("rentPrice") int rentPrice);
	//@Param("") 안의 내용은 xml의 #{}안의 것과 일치해야한다 = Map의 key명
	
	
	public List<RealEstate> selectRealEstateListByAreaPrice(
			//@Param은 하나의 map이 된다 (parameter가 2개 이상일 때)
			@Param("area") int area,
			@Param("price") int price);
	
	//QUIZ02/1
	//mybatis가 성공된 행의 개수를 채워서 리턴해준다
	public int insertRealEstate(RealEstate realEstate);
	
	//quiz02/2
	public int insertRealEstateAsField(
			@Param("realtorId") int realtorId, 
			@Param("address") String address, 
			@Param("area") int area, 
			@Param("type") String type, 
			@Param("price") int price, 
			@Param("rentPrice") Integer rentPrice);
	
	
	//quiz03/1
	public int updateRealEstateById(
			@Param("id") int id,
			@Param("type") String type,
			@Param("price") int price);
	
	//quiz04
	public int deleteRealEstateById(int id);
	
}
