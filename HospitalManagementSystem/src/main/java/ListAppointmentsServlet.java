import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ListAppointmentsServlet")
public class ListAppointmentsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            // Replace with your database connection details
            String url = "jdbc:mysql://localhost:3306/hospitalmngsys";
            String username = "root";
            String password = "admin123";

            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the database connection
            Connection conn = DriverManager.getConnection(url, username, password);

            // Execute the query to retrieve appointments
            Statement stmt = conn.createStatement();
            String query = "SELECT * FROM appointments";
            ResultSet rs = stmt.executeQuery(query);

            // Generate the HTML table
            out.println("<table class='AppTable'>");
            out.println("<tr><th>ID</th><th>Doctor Name</th><th>Patient Name</th><th>Patient Email</th><th>Appointment Date</th><th>Appointment Time</th><th>Created At</th></tr>");

            while (rs.next()) {
                int id = rs.getInt("id");
                String doctorName = rs.getString("doctor_name");
                String patientName = rs.getString("patient_name");
                String patientEmail = rs.getString("patient_email");
                String appointmentDate = rs.getString("appointment_date");
                String appointmentTime = rs.getString("appointment_time");
                Timestamp createdAt = rs.getTimestamp("created_at");

                out.println("<tr><td>" + id + "</td><td>" + doctorName + "</td><td>" + patientName + "</td><td>" + patientEmail + "</td><td>" + appointmentDate + "</td><td>" + appointmentTime + "</td><td>" + createdAt + "</td></tr>");
            }

            out.println("</table>");

            // Clean up resources
            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}