package com.saraswati.hostel.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.saraswati.hostel.entity.Booking;

public interface BookingRepository extends JpaRepository<Booking, Long> {

}
