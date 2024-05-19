import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender");
        String bloodGroup = request.getParameter("blood-group");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            // Load the MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the database connection
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalmngsys", "root", "admin123");

            // Prepare the SQL statement to insert the patient data
            String sql = "INSERT INTO patients (name, age, gender, blood_group, email, password) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, name);
            statement.setInt(2, age);
            statement.setString(3, gender);
            statement.setString(4, bloodGroup);
            statement.setString(5, email);
            statement.setString(6, password);

            // Execute the SQL statement
            int rowsInserted = statement.executeUpdate();

            if (rowsInserted > 0) {
                // Registration successful, redirect to welcome.jsp
                request.getRequestDispatcher("welcome1.jsp").forward(request, response);
            } else {
                // Registration failed, display an error message
                request.setAttribute("error", "Registration failed. Please try again.");
                request.getRequestDispatcher("registration.jsp").forward(request, response);
            }

            // Close the database resources
            statement.close();
            conn.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            if (e.getErrorCode() == 1062) {
                // Duplicate entry for email (unique constraint violation)
                request.setAttribute("error", "Email already exists. Please use a different email.");
                request.getRequestDispatcher("registration.jsp").forward(request, response);
            } else {
                e.printStackTrace();
            }
        }
    }
}