package com.quiz.lesson07;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson07.entity.RecruitEntity;

@RequestMapping("/lesson07/quiz02")
@RestController
public class Lesson07Quiz02RestController {
	//bo는 생략
	
	
	
	@GetMapping("/1")
	public List<RecruitEntity> getRecruitList() {
		
	}
}
