package com.quiz.lesson07.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.quiz.lesson07.entity.CompanyEntity;

@Repository
public interface CompanyRepository extends JpaRepository<CompanyEntity, Integer> {

	//JpaRepository: Spring Data JPA
	
	//save(entity 객체) - insert, update(id채워져있을 때) 
	//findById - 조회
	
}
