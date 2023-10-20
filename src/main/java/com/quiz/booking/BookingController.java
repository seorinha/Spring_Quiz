package com.quiz.booking;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.booking.bo.BookingBO;
import com.quiz.booking.domain.Booking;

@RequestMapping("/booking")
@Controller
public class BookingController {

	@Autowired
	private BookingBO bookingBO;
	
	//예약 목록 보기 화면
	//http://localhost:8080/booking/booking-list-view
	@GetMapping("/booking-list-view")
	public String bookingListView(Model model) {
		List<Booking> bookingList = bookingBO.getBookingList();
		
		model.addAttribute("bookingList", bookingList);
		
		return "booking/bookingList";
	}
	
	
	//예약 삭제 기능 - ajax가 하는 요청
	//http://localhost:8080/booking/delete-booking
	// 예약 삭제 기능 - AJAX 요청
		@ResponseBody
		@DeleteMapping("/delete-booking")
		public Map<String, Object> deleteBooking(
				@RequestParam("id") int id) {

			// db insert
			bookingBO.deleteBookingById(id);

			// {"code":200, "result":"success"}
			Map<String, Object> result = new HashMap<>();
			result.put("code", 200);
			result.put("result", "success");
			return result;
		}
	
	
	//예약하기 화면
	@GetMapping("/add-booking")
	public String addBooking() {
		return "booking/addBooking";
	}
	
	//예약 추가 - ajax 요청
	@ResponseBody
	@PostMapping("/add-booking")
	public Map<String, Object> addBooking(
			@RequestParam("name") String name,
			@RequestParam("date") String date,
			@RequestParam("day") int day,
			@RequestParam("headcount") int headcount,
			@RequestParam("phoneNumber") String phoneNumber) {
		
		//db insert
		bookingBO.addBooking(name, date, day, headcount, phoneNumber);
		
		//응답
		Map<String, Object> result = new HashMap<>();
		result.put("code", 200);
		result.put("result", "success");
		
		return result; //json String
	}
	
	//예약조회 화면
	@GetMapping("/check-booking")
	public String checkBooking() {
		return "booking/checkBooking";
	}
	
	//예약 조회 - ajax 요청
	@ResponseBody //responsebodty에서 model 사용 불가(view로 가지 않기 때문)
	@PostMapping("/search-booking")
	public Map<String, Object> searchBooking(
			@RequestParam("name") String name,
			@RequestParam("phoneNumber") String phoneNumber) {
		
		//db select
		Booking booking = bookingBO.getBookingByNamePhoneNumber(name, phoneNumber) ;
		
		//응답값
		//{"code":400, "error_message":"데이터가 존재하지 않습니다"}
		//{"code":200, "result":booking("id":1, "name":...)}
		Map<String, Object> result = new HashMap<>();
		if (booking == null) {
			result.put("code", 400);
			result.put("error_message", "데이터가 존재하지 않습니다");
		} else {
			result.put("code", 200);
			result.put("result", booking);
		}
		return result;
	}
}
