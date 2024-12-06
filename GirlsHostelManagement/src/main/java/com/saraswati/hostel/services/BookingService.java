package com.saraswati.hostel.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.saraswati.hostel.entity.Booking;
import com.saraswati.hostel.repository.BookingRepository;

@Service
public class BookingService {

	
	 @Autowired
	    private BookingRepository bookingRepository;

	    public List<Booking> getAllBookings() {
	        return bookingRepository.findAll();
	    }
	    
	    public Booking saveBooking(Booking booking) {
	        return bookingRepository.save(booking);
	    }
}
