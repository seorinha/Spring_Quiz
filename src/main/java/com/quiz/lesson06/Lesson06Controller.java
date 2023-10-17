package com.quiz.lesson06;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson06.bo.BookmarkBO;
import com.quiz.lesson06.domain.Bookmark;

@RequestMapping("/lesson06")
@Controller
public class Lesson06Controller {

	@Autowired
	private BookmarkBO bookmarkBO;
	
	//------quiz01------
	//즐겨찾기 추가 화면 http://localhost:8080/lesson06/quiz01/add-bookmark-view
	/*
	 * @GetMapping("/quiz01/add-bookmark-view") public String addBookmarkView() {
	 * return "lesson06/addBookmark"; }
	 */
	
	//즐겨찾기 추가 기능 -- AJAX가 하는 요청(응답값은 String이다)
	//http://localhost:8080/lesson06/quiz01/add-bookmark
	@PostMapping("/quiz01/add-bookmark")
	@ResponseBody
	public Map<String, Object> addBookmark(
			@RequestParam("name") String name,
			@RequestParam("url") String url) {
		
		//db insert
		//bookmarkBO.addBookmark(name, url);
		
		//응답값 : JSON String
//		{
//			   "code":200,
//			   "result":"success"
//			}
		Map<String, Object> result = new HashMap<>();
		result.put("code", 200);
		result.put("result", "success");
		
		
		return result; //json String
	}
	
	//즐겨찾기 목록 화면
	//http://localhost:8080/lesson06/quiz01/bookmark-list-view
	@GetMapping("/quiz01/bookmark-list-view")
	public String bookmarkList(Model model) {
		List<Bookmark> bookmarkList = bookmarkBO.getBookmarkList();
		model.addAttribute("bookmarkList", bookmarkList);
		return "/lesson06/bookmarkList";
	}
	
	//------quiz01 끝------
	//------quiz02-------
	//즐겨찾기 추가 화면 http://localhost:8080/lesson06/quiz01/add-bookmark-view
		@GetMapping("/quiz01/add-bookmark-view")
		public String addBookmarkView() {
			return "lesson06/addBookmark";
		}
	//------quiz02 끝-----
	
}
