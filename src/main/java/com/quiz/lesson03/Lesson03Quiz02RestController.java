package com.quiz.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.RealEstateBO;
import com.quiz.lesson03.domain.RealEstate;

@RequestMapping("/lesson03/quiz02")
@RestController //spring bean으로 등록
public class Lesson03Quiz02RestController {

	@Autowired //bo에게 요청
	private RealEstateBO realEstateBO;
	
	//요청 url: http://localhost:8080/lesson03/quiz02/1
	@RequestMapping("/1")
	public String quiz02_1() { //입력성공:출력해야되므로 string
		RealEstate realEstate = new RealEstate(); //일반 자바 bean
		realEstate.setRealtorId(3);
		realEstate.setAddress("푸르지용 리버 303동 1104호");
		realEstate.setArea(89);
		realEstate.setType("매매");
		realEstate.setPrice(100000);
		
		int rowCount = realEstateBO.addRealEstate(realEstate); //bo에게 요청
		
		return "입력성공: " + rowCount;
	}
	
	//요청 url: http://localhost:8080/lesson03/quiz02/2?realtorId=
	@RequestMapping("/2")
	public String quiz02_2(
			@RequestParam("realtorId")int realtorId) {
		int rowCount = realEstateBO.addRealEstateAsField(
				realtorId, "썅떼빌리버 오피스텔 814호", 45, "월세", 100000, 120); //bo에게 요청한다
		
		return "입력성공: " + rowCount;
	}
	
}
