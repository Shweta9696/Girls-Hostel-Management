package com.saraswati.hostel.controller;
import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.saraswati.hostel.entity.Booking;
import com.saraswati.hostel.entity.Room;
import com.saraswati.hostel.entity.User;
import com.saraswati.hostel.services.BookingService;
import com.saraswati.hostel.services.RoomService;
import com.saraswati.hostel.services.UserService;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class BookingController {

    @Autowired
    private RoomService roomService;

    @Autowired
    private BookingService bookingService;

    @Autowired
    private UserService userService;

    @GetMapping("/bookRoom")
    public String showBookingForm(Model model, HttpServletRequest req) {
       //get logged user name from servlet context
    	ServletContext contex = req.getServletContext();
    	 String uname= (String)contex.getAttribute("name");
    	 // Fetch all rooms
        List<Room> rooms = roomService.getAllRooms();
       
        // Fetch the logged-in user's details
        
        User loggedInUser = userService.getUserByName(uname);
       
        // Calculate maxBeds 
        for (Room room : rooms) {
            int maxBeds = room.getCapacity() - room.getAllocatedBeds();
            room.setAvailablebed(maxBeds); 
        }

        // Add attributes to the model
        model.addAttribute("rooms", rooms);
        model.addAttribute("loggedInUser", loggedInUser);
        model.addAttribute("booking", new Booking());

        return "bookRoom";
    }

    @PostMapping("/bookRoom")
    public String bookRoom(@ModelAttribute("booking") Booking booking, Model model) {
        // Get the selected room
        Room selectedRoom = roomService.getRoomById(booking.getRoom().getId());
        booking.setRoomNumber(selectedRoom.getRoomNumber());
        selectedRoom.setAllocatedBeds(booking.getNoOfBeds());
        selectedRoom.setAvailablebed(selectedRoom.getCapacity()-booking.getNoOfBeds());
        // If you're unsure whether the Room or User entity is detached, use merge
        booking.setRoom(selectedRoom);
        booking.setUser(userService.getUserById(booking.getUser().getId()));

        // Save the booking using merge instead of save if needed
        bookingService.saveBooking(booking); 

        model.addAttribute("bookings", booking);

        // Redirect to a confirmation page or booking list
        return "redirect:/manageBookings"; 
    }
    
    @GetMapping("/manageBookings")
    public ModelAndView viewRoomToAdmin() {
        List<Booking> bookings = bookingService.getAllBookings();
        ModelAndView mav = new ModelAndView("manageBookings");
        mav.addObject("bookings", bookings);
        return mav;
    }

}