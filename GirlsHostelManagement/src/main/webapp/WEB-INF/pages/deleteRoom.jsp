<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Confirm Delete Room</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Saraswati Girls Hostel</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="/admin/dashboard">Dashboard</a></li>
					<li class="nav-item"><a class="nav-link" href="/admin/rooms">Manage Rooms</a></li>
					<li class="nav-item"><a class="nav-link" href="/viewAllHostel">Manage Hostels</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Main Content -->
	<div class="container mt-5">
		<h2>Confirm Delete Room</h2>
		<div class="row">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header">
						<h5 class="card-title">Confirm Deletion</h5>
					</div>
					<div class="card-body">
						<p>Are you sure you want to delete the room with the following details?</p>
						<ul>
							<li><strong>ID:</strong> ${room.id}</li>
							<li><strong>Room Number:</strong> ${room.roomNumber}</li>
							<li><strong>Capacity:</strong> ${room.capacity}</li>
							<li><strong>Allocated Beds:</strong> ${room.allocatedBeds}</li>
							
						</ul>
						<form action="deleteRoom" method="post">
							<input type="hidden" name="id" value="${room.id}" />
							<div class="text-center">
								<button type="submit" class="btn btn-danger">Confirm Delete</button>
								<a href="manageRooms" class="btn btn-secondary">Cancel</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<footer class="bg-primary text-white text-center py-3 mt-5">
		<p>&copy; 2024 Saraswati Girls Hostel Management</p>
	</footer>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
