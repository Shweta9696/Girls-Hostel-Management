<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
<style>
    /* Global Styles */
    body {
        font-family: 'Roboto', Arial, sans-serif;
        margin: 0;
        padding: 0;
        background: linear-gradient(135deg, #6e8efb, #a777e3);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: #fff;
    }

    /* Container Styles */
    .container {
        background: #fff;
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        text-align: center;
        width: 90%;
        max-width: 400px;
    }

    /* Heading Styles */
    h1 {
        color: #4CAF50;
        font-size: 26px;
        margin-bottom: 15px;
    }

    h2 {
        color: #333;
        font-size: 20px;
        margin-bottom: 25px;
    }

    /* Button Styles */
    a {
        text-decoration: none;
        color: white;
        background-color: #4CAF50;
        padding: 12px 30px;
        border-radius: 25px;
        font-size: 16px;
        font-weight: bold;
        display: inline-block;
        transition: all 0.3s ease;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    a:hover {
        background-color: #45a049;
        transform: translateY(-2px);
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
    }

    /* Footer Styles */
    .footer {
        margin-top: 20px;
        font-size: 14px;
        color: #666;
    }

    .footer a {
        color: #4CAF50;
        text-decoration: none;
        font-weight: bold;
    }

    .footer a:hover {
        text-decoration: underline;
    }

    /* Responsive Design */
    @media (max-width: 600px) {
        .container {
            padding: 20px;
        }

        h1 {
            font-size: 22px;
        }

        h2 {
            font-size: 18px;
        }

        a {
            font-size: 14px;
            padding: 10px 20px;
        }
    }
</style>
</head>
<body>
    <div class="container">
        <h1>User Registration Successful</h1>
        <h2>${user}</h2>
        <a href="userlogin.html">User Login</a>
        <div class="footer">
            <p>Need help? <a href="support.html">Contact Support</a></p>
        </div>
    </div>
</body>
</html>
