package com.quiz.booking;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/booking")
@Controller
public class BookingController {

	//http://localhost:8080/booking/booking-list-view
	@GetMapping("/booking-list-view")
	public String bookingListView() {
		return "/booking/bookingList";
	}
}
