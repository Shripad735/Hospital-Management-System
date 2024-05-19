<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Patient Dashboard</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #cde56b;
      }

      .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 20px;
      }

      h1 {
        text-align: center;
        color: #333;
      }

      .doctor-card {
        background-color: #ace1ee;
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        padding: 20px;
        margin-bottom: 20px;
        display: flex;
        align-items: center;
      }

      .doctor-image {
        width: 100px;
        height: 100px;
        border-radius: 50%;
        overflow: hidden;
        margin-right: 20px;
      }

      .doctor-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
      }

      .doctor-details {
        flex-grow: 1;
      }

      .doctor-details h2 {
        margin-top: 0;
        color: #333;
      }

      .doctor-details p {
        margin-bottom: 5px;
        color: #666;
      }

      .appointment-btn {
        display: inline-block;
        padding: 10px 20px;
        background-color: #4caf50;
        color: #fff;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s ease;
      }

      .appointment-btn:hover {
        background-color: #45a049;
      }

      .doctor-table {
        width: 100%;
        margin: 20px 0;
      }

      .doctor-table table {
        width: 100%;
        border-collapse: collapse;
      }

.doctor-table th {
        background-color: #f2f2f2;
        border: 2px solid #071035;
        padding: 8px;
        text-align: left;
      }

      .doctor-table td {
        border: 2px solid #071035;
        padding: 8px;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h1>Patient Dashboard</h1>

      <!-- Doctor Cards -->
      <div class="doctor-card">
        <div class="doctor-image">
          <img src="male-doctor.jpg" alt="Doctor Image" />
        </div>
        <div class="doctor-details">
          <h2>Dr. Jitendra Mane</h2>
          <p>Speciality: Cardiology</p>
          <p>Qualification: MBBS, MD (Cardiology)</p>
          <p>Experience: 10 years</p>
        </div>
      </div>

      <div class="doctor-card">
        <div class="doctor-image">
          <img src="female-doctor.avif" alt="Doctor Image" />
        </div>
        <div class="doctor-details">
          <h2>Dr. Indrayani Nene</h2>
          <p>Speciality: Pediatrics</p>
          <p>Qualification: MBBS, MD (Pediatrics)</p>
          <p>Experience: 8 years</p>
        </div>
      </div>

      <div class="doctor-card">
        <div class="doctor-image">
          <img src="image-doctor.jpg" alt="Doctor Image" />
        </div>
        <div class="doctor-details">
          <h2>Dr. Mahesh Joshi</h2>
          <p>Speciality: Dermatology</p>
          <p>Qualification: MBBS, MD (Dermatology)</p>
          <p>Experience: 12 years</p>
        </div>
      </div>

      <div class="doctor-card">
        <div class="doctor-image">
          <img src="front-view-female-doctor.avif" alt="Doctor Image" />
        </div>
        <div class="doctor-details">
          <h2>Dr. Sarah Joseph</h2>
          <p>Speciality: Gynecology</p>
          <p>Qualification: MBBS, MD (Gynecology)</p>
          <p>Experience: 9 years</p>
        </div>
      </div>

      <div class="doctor-card">
        <div class="doctor-image">
          <img src="handsome-male-doctor.jpg" alt="Doctor Image" />
        </div>
        <div class="doctor-details">
          <h2>Dr. Vishal Nakate</h2>
          <p>Speciality: Orthopedics</p>
          <p>Qualification: MBBS, MD (Orthopedics)</p>
          <p>Experience: 11 years</p>
        </div>
      </div>

      <div class="doctor-table">
        <table>
          <tr>
            <th>Doctor Name</th>
            <th>Speciality</th>
            <th>Qualification</th>
            <th>Experience</th>
            <th>Book Appointment</th>
          </tr>
          <tr>
            <td>Dr. Jitendra Mane</td>
            <td>Cardiology</td>
            <td>MBBS, MD (Cardiology)</td>
            <td>10 years</td>
            <td><a href="bookingPage_1.jsp" class="appointment-btn">Book Appointment</a></td>
          </tr>
          <tr>
            <td>Dr. Indrayani Nene</td>
            <td>Pediatrics</td>
            <td>MBBS, MD (Pediatrics)</td>
            <td>8 years</td>
            <td><a href="bookingPage_2.jsp" class="appointment-btn">Book Appointment</a></td>
          </tr>
          <tr>
            <td>Dr. Mahesh Joshi</td>
            <td>Dermatology</td>
            <td>MBBS, MD (Dermatology)</td>
            <td>12 years</td>
            <td><a href="bookingPage_3.jsp" class="appointment-btn">Book Appointment</a></td>
          </tr>
          <tr>
            <td>Dr. Sarah Joseph</td>
            <td>Gynecology</td>
            <td>MBBS, MD (Gynecology)</td>
            <td>9 years</td>
            <td><a href="bookingPage_4.jsp" class="appointment-btn">Book Appointment</a></td>
          </tr>
          <tr>
            <td>Dr. Vishal Nakate</td>
            <td>Orthopedics</td>
            <td>MBBS, MD (Orthopedics)</td>
            <td>11 years</td>
            <td><a href="bookingPage_5.jsp" class="appointment-btn">Book Appointment</a></td>
          </tr>
        </table>
      </div>
    </div>
  </body>
</html>