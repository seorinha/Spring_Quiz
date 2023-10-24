package com.quiz.lesson07.entity;

import java.time.ZonedDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@ToString
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Builder(toBuilder = true)
@Entity(name = "recruit")
@Table(name="recruit")
public class RecruitEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id
	
	@Colum(name = "companyId")
	private int companyId
	
	private String position
	
	private String responsibilities
	
	private String qualification
	
	private String type
	
	private String region
	
	private int salary
	
	private Date deadline
	
	@UpdateTimestamp
	@Colum(name = "createdAt")
	private ZonedDateTime createdAt
	
	@UpdateTimestamp
	@Colum(name = "updatedAt")
	private ZonedDateTime updatedAt
}
