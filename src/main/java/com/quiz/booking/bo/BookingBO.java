package com.quiz.booking.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.booking.domain.Booking;
import com.quiz.booking.mapper.BookingMapper;

@Service
public class BookingBO {

	@Autowired
	private BookingMapper bookingMapper;
	
	//input: x 무조건 뿌리는거라 input없음
	//output: List<Booking>
	public List<Booking> getBookingList() {
		return bookingMapper.selectBookingList();
	}
	
	//input:id
	//output:x
	public void deleteBookingById(int id) {
		bookingMapper.deleteBookingById(id);
	}
	
//	@RequestParam("name") String name,
//	@RequestParam("date") String date,
//	@RequestParam("day") int day,
//	@RequestParam("headcount") int headcount,
//	@RequestParam("phoneNumber") String phoneNumber)
	
	public void addBooking(String name, String date, int day, int headcount, String phoneNumber) {
		bookingMapper.insertBooking(name, date, day, headcount, phoneNumber);
	}
}
