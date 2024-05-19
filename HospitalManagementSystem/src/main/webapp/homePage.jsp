<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hospital Management</title>
    <style>
      /* ... (CSS styles remain the same) ... */
       * {
        font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI",
          Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue",
          sans-serif;
        /* Remove background image from body */
      }

      /* Create a pseudo-element for the background image */
      body::before {
        content: "";
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-image: url("Hospital.jpg");
        background-size: cover;
        z-index: -1; /* Ensure the pseudo-element is behind other content */
        opacity: 0.5; /* Adjust the opacity as needed */
      }

      .center {
        text-align: center;
        color: #333;
      }
      .content {
        display: flex;
        justify-content: space-between;
      }
      .info {
        margin: 20px;
        padding: 20px;
        background-color: #ae9fe6;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 50%;
        /* move towards right */
        /* margin-left: 60%; */
      }
      .loginOpt {
        margin: 20px;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        width: 30%;
        /* move towards right */
        /* margin-right: 60%; */
      }
      .docImg {
        margin: 20px;
        padding: 20px;
        background-color: #ae9fe6;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 35%;
        /* move towards left */
        margin-left: 5%;
      }
    </style>
  </head>
  <body>
    <h1 class="center">Wellness Group Of Hospital</h1>
    <h2 class="center">Hospital Management System</h2>
    <h4 class="center">Please login to continue</h4>
    <br />
    <div class="docImg">
      <img src="DocPatient.jpg" alt="doctors" class="docPat" />
    </div>
    <br><br>
    <div class="content">
      <div class="info">
        <h3 class="center" style="color: rgb(8, 17, 79); font-size: larger">
          About Us !
        </h3>
        <p style="color: rgb(2, 64, 52); font-weight: bold">
          We are a group of hospitals that provide the best medical services to
          our patients. We have a team of highly qualified doctors and nurses
          who are always ready to help you. We have a wide range of medical
          services that include general checkups, surgeries, and other medical
          treatments. We also have a well-equipped emergency department that is
          available 24/7. Our main goal is to provide the best medical care to
          our patients and help them recover as soon as possible.
        </p>
      </div>
      <div class="loginOpt">
        <h3 class="center" style="color: rgb(8, 17, 79); font-size: larger">
          Login Options
        </h3>

        <a href="patientLogin.jsp" style="text-decoration: none">
          <button
            style="
              background-color: #4caf50;
              color: white;
              padding: 10px 20px;
              margin: 10px 0;
              border: none;
              cursor: pointer;
              width: 100%;
              border-radius: 7px;
            "
          >
            Patient Login
          </button>
        </a>

        <a href="adminLogin.jsp" style="text-decoration: none">
          <button
            style="
              background-color: #4caf50;
              color: white;
              padding: 10px 20px;
              margin: 10px 0;
              border: none;
              cursor: pointer;
              width: 100%;
              border-radius: 7px;
            "
          >
            Administrator Login
          </button>
        </a>

        <a href="services.jsp" style="text-decoration: none">
          <button
            style="
              background-color: #4caf50;
              color: white;
              padding: 10px 20px;
              margin: 10px 0;
              border: none;
              cursor: pointer;
              width: 100%;
              border-radius: 7px;
            "
          >
            Other Services
          </button>
        </a>
      </div>
    </div>
  </body>
</html>