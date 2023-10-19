package com.quiz.booking.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.quiz.booking.domain.Booking;

@Repository
public class BookingMapper {

	public List<Booking> selectBookingList();
		
