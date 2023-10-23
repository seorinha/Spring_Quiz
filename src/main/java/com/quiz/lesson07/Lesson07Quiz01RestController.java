package com.quiz.lesson07;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson07.bo.CompanyBO;
import com.quiz.lesson07.entity.CompanyEntity;

@RequestMapping("/lesson07/quiz01")
@RestController
public class Lesson07Quiz01RestController {

	@Autowired
	private CompanyBO companyBO;
	
	//1. create
	@GetMapping("/save1")
	public CompanyEntity save1() {
		
		//JSON
		return companyBO.addCompany("넥손", "컨텐츠 게임", "대기업", 3585);
	}
	
	@GetMapping("/save2")
	public CompanyEntity save2() {
		return companyBO.addCompany("버블팡", "여신금유업", "대기업", 6834);
	}
	
	//2. update
	@GetMapping("/update")
	public CompanyEntity update() {
		return companyBO.updateCompanyScaleHeadcountById(8, "중소기업", 34);
	}
	
	//3. delete
	@GetMapping("/delete")
	public String delete() {
		//id: 8제거
		companyBO.deleteCompanyById(8);
		return "삭제완료";
	}
	
}
