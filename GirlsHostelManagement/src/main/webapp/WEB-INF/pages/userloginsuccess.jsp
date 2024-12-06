<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Saraswati Girls Hostel</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                       <a class="nav-link" href="roomavailable">Room Availability</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="bookRoom">Book a Room</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="checkInOut">Check In/Out</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="viewPaymentDetails">Payment Details</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="updateProfile">Update Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="requestServices">Request Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="feedback">Feedback</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="hostelInfo">Hostel Information</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <main class="container my-5">
        <h1 class="text-center mb-4">Welcome, ${user.name}!</h1>

        <!-- Welcome Section -->
        <div class="alert alert-info" role="alert">
            You have successfully logged in. 
        </div>

        <!-- Feature Sections -->
        <div class="row">
            <!-- View Room Details -->
            <div class="col-lg-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">View Room Details</h5>
                        <p class="card-text">Check available rooms and their details.</p>
                      <a href="viewroomdetails" class="btn btn-primary">Room Availability</a>
                    </div>
                </div>
            </div>

            <!-- Manage Bookings -->
            <div class="col-lg-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Manage Bookings</h5>
                        <p class="card-text">Review and manage your bookings.</p>
                        <a href="manageBookings" class="btn btn-primary">Manage Bookings</a>
                    </div>
                </div>
            </div>

            <!-- Check In/Out -->
            <div class="col-lg-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Check In/Out</h5>
                        <p class="card-text">Mark your check-in and check-out.</p>
                        <a href="checkInOut" class="btn btn-primary">Check In/Out</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <!-- Payment Details -->
            <div class="col-lg-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Payment Details</h5>
                        <p class="card-text">View your payment history and outstanding amounts.</p>
                        <a href="viewPaymentDetails" class="btn btn-primary">View Payments</a>
                    </div>
                </div>
            </div>

            <!-- Update Profile -->
            <div class="col-lg-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Update Profile</h5>
                        <p class="card-text">Update your personal information and preferences.</p>
                        <a href="updateProfile" class="btn btn-primary">Update Profile</a>
                    </div>
                </div>
            </div>

            <!-- Request Services -->
            <div class="col-lg-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Request Services</h5>
                        <p class="card-text">Request additional services like housekeeping or maintenance.</p>
                        <a href="requestServices" class="btn btn-primary">Request Services</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <!-- Feedback -->
            <div class="col-lg-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Feedback</h5>
                        <p class="card-text">Provide feedback on your stay or services.</p>
                        <a href="feedback" class="btn btn-primary">Give Feedback</a>
                    </div>
                </div>
            </div>

            <!-- Hostel Information -->
            <div class="col-lg-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Hostel Information</h5>
                        <p class="card-text">Access information about the hostel policies, events, and more.</p>
                        <a href="hostelInfo" class="btn btn-primary">Hostel Information</a>
                    </div>
                </div>
            </div>

            <!-- Logout -->
            <div class="col-lg-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Logout</h5>
                        <p class="card-text">Log out of your account securely.</p>
                        <a href="logout" class="btn btn-danger">Logout</a>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-dark text-white py-4 mt-auto">
        <div class="container text-center">
            <p>&copy; 2023 Saraswati Girls Hostel. All Rights Reserved.</p>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
