import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ListPatientsServlet")
public class ListPatientsServlet extends HttpServlet {
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

            // Execute the query to retrieve patients
            Statement stmt = conn.createStatement();
            String query = "SELECT * FROM patients";
            ResultSet rs = stmt.executeQuery(query);

            // Generate the HTML table
            out.println("<table class='PatientTable'>");
            out.println("<tr><th>ID</th><th>Name</th><th>Age</th><th>Gender</th><th>Blood Group</th><th>Email</th></tr>");

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int age = rs.getInt("age");
                String gender = rs.getString("gender");
                String bloodGroup = rs.getString("blood_group");
                String email = rs.getString("email");

                out.println("<tr><td>" + id + "</td><td>" + name + "</td><td>" + age + "</td><td>" + gender + "</td><td>" + bloodGroup + "</td><td>" + email + "</td></tr>");
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