package com.quiz.lesson07.bo;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson07.entity.CompanyEntity;
import com.quiz.lesson07.repository.CompanyRepository;

@Service
public class CompanyBO {

	@Autowired
	private CompanyRepository companyRepository; //jpa 사용
	
	//create
	//input: 4개의 파라미터
	//output : 방금 insert된 entity
	public CompanyEntity addCompany(String name, String business, String scale, int headcount) {
		
		return companyRepository.save(
					CompanyEntity.builder()
					.name(name)
					.business(business)
					.scale(scale)
					.headcount(headcount)
					.build());
	}
	
	//update
	//input : id, scale, headcount
	//output : 변경된 CompanyEntity
	public CompanyEntity updateCompanyScaleHeadcountById(int id, String scale, int headcount) {
		CompanyEntity company = companyRepository.findById(id).orElse(null);
		if (company != null) {
			
			companyRepository.save(
					company = company.toBuilder()
					.scale(scale)
					.headcount(headcount)
					.build());
		}
		return null; //return company; 도 가능
	}
	
	//delete
	//input: id
	//output: x
	public void deleteCompanyById(int id) {
		Optional<CompanyEntity>companyOptional = companyRepository.findById(id);
		companyOptional.ifPresent(c -> companyRepository.delete(c));
	}
	
	
}
