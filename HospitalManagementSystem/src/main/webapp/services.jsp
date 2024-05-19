<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hospital Services</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #E8ABEA;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        h1 {
            color: #333;
            text-align: center;
        }
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px 0;
            box-shadow: 0 2px 3px rgba(0,0,0,0.1);
            background-color: #fff;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
            color: #333;
            font-weight: bold;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            font-size: 16px;
            margin: 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #45a049;
        }
        form {
            display: flex;
            justify-content: center;
            width: 100%;
        }
    </style>
</head>
<body>
    <h1>Blood Bank Contact Information</h1>
    <table>
        <tr>
            <th>Name</th>
            <th>Contact Number</th>
            <th>Address</th>
        </tr>
        <%
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalmngsys", "root", "admin123");
                stmt = conn.createStatement();
                rs = stmt.executeQuery("SELECT * FROM blood_bank");
                while (rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getString("name") %></td>
                        <td><%= rs.getString("contact_number") %></td>
                        <td><%= rs.getString("address") %></td>
                    </tr>
                    <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            }
        %>
    </table>

    <h1>Medical Lab Tests</h1>
    <table>
        <tr>
            <th>Test Name</th>
            <th>Price</th>
        </tr>
        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalmngsys", "root", "admin123");
                stmt = conn.createStatement();
                rs = stmt.executeQuery("SELECT * FROM lab_tests");
                while (rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getString("test_name") %></td>
                        <td><%= rs.getBigDecimal("price") %></td>
                    </tr>
                    <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            }
        %>
    </table>

    <form action="billinginfo.jsp" method="get">
        <button type="submit">Proceed to Billing</button>
    </form>
</body>
</html>
