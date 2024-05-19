<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Medical Lab Test Booking</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h1, h2 {
            color: #333;
            text-align: center;
        }

        form {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 600px;
            margin-top: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            text-align: left;
            padding: 12px;
            border-bottom: 1px solid #ddd;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
        }

        input[type="text"], input[type="email"], input[type="tel"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .checkbox-container {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        .checkbox-container input[type="checkbox"] {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <h1>Medical Lab Test Booking</h1>

    <form action="BookingServlet" method="post">
        <table>
            <tr>
                <th>Select</th>
                <th>Test Name</th>
                <th>Price</th>
            </tr>
            <tr>
                <td><input type="checkbox" name="tests[]" value="Complete Blood Count (CBC)"></td>
                <td>Complete Blood Count (CBC)</td>
                <td>$50.00</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="tests[]" value="Lipid Profile"></td>
                <td>Lipid Profile</td>
                <td>$75.25</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="tests[]" value="Thyroid Function Test"></td>
                <td>Thyroid Function Test</td>
                <td>$80.50</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="tests[]" value="Liver Function Test"></td>
                <td>Liver Function Test</td>
                <td>$60.75</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="tests[]" value="Vitamin D Test"></td>
                <td>Vitamin D Test</td>
                <td>$90.00</td>
            </tr>
        </table>

        <h2>Patient Information</h2>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="phone">Phone:</label>
        <input type="tel" id="phone" name="phone" required>

        <input type="submit" value="Book Tests">
    </form>
</body>
</html>
