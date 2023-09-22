package com.quiz.lesson03.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson03.domain.RealEstate;
import com.quiz.lesson03.mapper.RealEstateMapper;

@Service
public class RealEstateBO {

	@Autowired
	private RealEstateMapper realEstateMapper;
	
	//input(): controller에게서 id값을 정수로 하나 받아온다
	//output(): controller에게 RealEstate를 준다
	public RealEstate getRealEstateById(int id) {
		return realEstateMapper.selectRealEstateById(id); //mapper에게 id달라고 한다
	}
	
	//input: controller가 주는 rentPrice
	//output : List<RealEstate>
	public List<RealEstate> getRealEstateListByRentPrice(int rentPrice) {
		return realEstateMapper.selectRealEstateListByRentPrice(rentPrice);
	}
	
	//input:
	//output:
	public List<RealEstate> getRealEstateListByAreaPrice(int area, int price) {
		return realEstateMapper.selectRealEstateListByAreaPrice
	}
}
