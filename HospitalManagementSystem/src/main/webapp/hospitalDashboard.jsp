<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Hospital Dashboard</title>
    <style>
/* CSS for Attractive Hospital Dashboard */

/* Table Styles */
table {
  width: 100%;
  border-collapse: collapse;
  font-family: Arial, sans-serif;
  background-color: #f8f8f8;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
  border: 2px solid;
}

th, td {
  padding: 12px 15px;
  text-align: left;
  border: 2px solid;
}

th {
  background-color: #6fb7ff; /* Light blue */
  color: #333;
  font-weight: bold;
  text-transform: uppercase;
  letter-spacing: 1px;
}

tr:nth-child(even) {
  background-color: #d1e5ff; /* Light blue */
}

tr:hover {
  background-color: #aedcff; /* Light blue */
}

td {
  color: #555;
  border-bottom: 1px solid #ddd;
}

/* Alternating Row Colors */
tr:nth-child(4n+1) td {
  background-color: #d5aaff; /* Light purple */
}

tr:nth-child(4n+2) td {
  background-color: #ffb3e6; /* Light pink */
}

tr:nth-child(4n+3) td {
  background-color: #caffbf; /* Light green */
}

tr:nth-child(4n+4) td {
  background-color: #ffdf80; /* Light orange */
}

/* Table Header Gradient */
th {
  background: linear-gradient(to bottom, #c2f0fc, #6fb7ff); /* Gradient blue */
}

/* Optional: Add some styles for better readability */
body {
  font-family: Arial, sans-serif;
  line-height: 1.6;
  background-color: #FFFFF0; /* Faint off-white */
  color: #333; /* Dark gray text */
}

.container {
  max-width: 1200px;
  margin: 10px;
  padding: 20px;
}

h1 {
  text-align: center;
}


    </style>
</head>
<body>
    <h1>Hospital Admin Dashboard</h1>
    
    <div class="section">
        <h2>Patients</h2>
        <div id="patientList"></div>
    </div>
    
    <div class="section">
        <h2>Appointments</h2>
        <div id="appointmentList"></div>
    </div>
    
    <script>
        // Fetch patient list from the servlet
        fetch('/HospitalManagementSystem/ListPatientsServlet')
            .then(response => response.text())
            .then(html => {
                document.getElementById('patientList').innerHTML = html;
            })
            .catch(error => console.error('Error:', error));
        
        // Fetch appointment list from the servlet
        fetch('/HospitalManagementSystem/ListAppointmentsServlet')
            .then(response => response.text())
            .then(html => {
                document.getElementById('appointmentList').innerHTML = html;
            })
            .catch(error => console.error('Error:', error));
    </script>
    <br><br>
    <a href="homePage.jsp" class="btn">Go to Homepage</a>
</body>
</html>