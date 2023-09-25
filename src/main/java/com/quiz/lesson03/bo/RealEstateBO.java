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
	
	//QUIZ01
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
	
	//input: area, price
	//output: List<RealEstate>
	public List<RealEstate> getRealEstateListByAreaPrice(int area, int price) {
		return realEstateMapper.selectRealEstateListByAreaPrice(area, price);
	}
	
	
	//QUIZ02/1
	//insert 하는 add메소드 생성
	//input:RealEstate
	//output:성공된 행의 개수
	public int addRealEstate(RealEstate realEstate) {
		return realEstateMapper.insertRealEstate(realEstate);
	}
	
	//quiz02/2
	public int addRealEstateAsField(
			int realtorId, String address, 
			int area, String type, 
			int price, Integer rentPrice) { //bo가 꼭 받아와야하는 값들, null이 허용되도록 integer로 선언해줘야 한다
		
		return realEstateMapper.insertRealEstateAsField(realtorId, address, area, type, price, rentPrice);
	}
	
}
