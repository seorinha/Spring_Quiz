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
	
	//input:name phoneNumber
	//output:Booking(null or Booking)
	public Booking getBookingByNamePhoneNumber(String name, String phoneNumber) {
		List<Booking> bookingList = bookingMapper.selectBookingByNamePhoneNumber(name, phoneNumber);
		//0, 1(최신데이터)
		//리스트가 비어있으면 null이 아니라 []이렇게 되어있다
		if (bookingList.isEmpty()) {
			return null; //null로 return한다
		}
		
		//리스트가 비어있지 않으면 마지막 객체를 리턴 할 것
		return bookingList.get(bookingList.size() - 1); //booking을 리턴한다
		
		
		
	}
}
