package com.quiz.lesson06;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/lesson06")
@Controller
public class Lesson06Controller {

	//------quiz01------
	//즐겨찾기 추가 화면 http://localhost:8080/lesson06/quiz01/add-bookmark-view
	@GetMapping("/quiz01/add-bookmark-view")
	public String addBookmarkView() {
		return "lesson06/addBookmark";
	}
	
	//즐겨찾기 추가 기능 -- AJAX가 하는 요청(응답값은 String이다)
	//http://localhost:8080/lesson06/quiz01/add-bookmark
	@PostMapping("/quiz01/add-bookmark")
	@ResponseBody
	public String addBookmark(
			@RequestParam("title") String title,
			@RequestParam("address") String address) {
		
		//db insert
		//bookmarkBO.addBookmark(title, address);
		
		return "성공";
	}
	
	//즐겨찾기 목록 화면
	//http://localhost:8080/lesson06/quiz01/bookmark-list-view
	@GetMapping("/quiz01/bookmark-list-view")
	public String bookmarkList() {
		
		return "/lesson06/bookmarkList";
	}
	
	//------quiz01 끝------
	
	
}
