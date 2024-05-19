import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Date;
import java.sql.Time;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/book-appointment")
public class AppointmentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String doctorName = request.getParameter("doctor-name");
        String patientName = request.getParameter("name");
        String patientEmail = request.getParameter("email");
        Date appointmentDate = Date.valueOf(request.getParameter("date"));
        Time appointmentTime = Time.valueOf(request.getParameter("time") + ":00"); // Assuming 24-hour format

        try {
            // Load the MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the database connection
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalmngsys", "root", "admin123");

            // Prepare the SQL statement to insert the appointment data
            String sql = "INSERT INTO appointments (doctor_name, patient_name, patient_email, appointment_date, appointment_time) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, doctorName);
            statement.setString(2, patientName);
            statement.setString(3, patientEmail);
            statement.setDate(4, appointmentDate);
            statement.setTime(5, appointmentTime);

            // Execute the SQL statement
            int rowsInserted = statement.executeUpdate();

            if (rowsInserted > 0) {
                // Appointment booked successfully, redirect to Appointment_Confirmed.jsp
                request.getRequestDispatcher("Appointment_Confirmed.jsp").forward(request, response);
            } else {
                // Appointment booking failed, display an error message
                request.setAttribute("error", "Appointment booking failed. Please try again.");
                request.getRequestDispatcher("book-appointment.jsp").forward(request, response);
            }

            // Close the database resources
            statement.close();
            conn.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}