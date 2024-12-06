<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Bookings</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <div class="container my-5">
        <h2 class="text-center">Manage Bookings</h2>
        <div class="row">
            <c:forEach var="booking" items="${bookings}">
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <div class="card-body">
                            <h5 class="card-title">Booking ID: ${booking.id}</h5>
                            <p class="card-text">Room Number: ${booking.room.roomNumber}</p>
                            <p class="card-text">User: ${booking.user.name}</p>
                            <p class="card-text">Check-in Date: ${booking.checkInDate}</p>
                            <p class="card-text">Check-out Date: ${booking.checkOutDate}</p>
                            <a href="editBooking?id=${booking.id}" class="btn btn-primary">Edit Booking</a>
                            <a href="deleteBooking?id=${booking.id}" class="btn btn-danger">Delete Booking</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
