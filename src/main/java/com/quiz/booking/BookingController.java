package com.quiz.booking;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	//예약하기 화면
	@GetMapping("/add-booking")
	public String addBooking() {
		return "booking/addBooking";
	}
	
	//예약조회 화면
	@GetMapping("/check-booking")
	public String checkBooking() {
		return "booking/checkBooking";
	}
}
