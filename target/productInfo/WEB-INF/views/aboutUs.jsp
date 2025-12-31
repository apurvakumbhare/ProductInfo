<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us - Book Management System</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Georgia', serif;
            background: url('https://images.pexels.com/photos/256559/pexels-photo-256559.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=1000&w=1600') no-repeat center center fixed;
            background-size: cover;
            color: #fffbe6;
        }

        .overlay {
            background-color: rgba(0, 0, 0, 0.6);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 50px 20px;
        }

        .content {
            max-width: 800px;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(12px);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.4);
        }

        h1 {
            text-align: center;
            font-size: 36px;
            margin-bottom: 20px;
            color: #f5deb3;
        }

        p {
            font-size: 18px;
            line-height: 1.6;
            text-align: justify;
        }

        .back-btn {
            display: inline-block;
            margin-top: 30px;
            padding: 10px 20px;
            background-color: rgba(255, 255, 255, 0.2);
            color: #fffbe6;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
            backdrop-filter: blur(6px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            transition: background-color 0.3s ease, transform 0.2s;
        }

        .back-btn:hover {
            background-color: rgba(255, 255, 255, 0.35);
            transform: scale(1.05);
            color: #ffffff;
        }

        .btn-container {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="overlay">
    <div class="content">
        <h1>About Our Book Management System</h1>
        <p>
            Our Library Book Management System is designed to help bookstores and library staff efficiently manage book inventories, streamline operations, and enhance the user experience.
            Whether you're managing a small independent bookstore or a large public library, our platform allows you to:
        </p>
        <ul>
            <li> Add and store book details such as ID, title, owner, price, and quantity.</li>
            <li> Maintain an organized list of books that can be easily viewed and updated.</li>
            <li> Save time by eliminating the need for manual record keeping and spreadsheets.</li>
            <li> Track inventory and know what’s available at a glance.</li>
        </ul>
        <p>
            Designed with a vintage library feel and a modern glassy interface, this system bridges the gap between tradition and technology — giving you elegance with functionality.
        </p>

        <div class="btn-container">
            <a href="${pageContext.request.contextPath}/" class="back-btn">← Back to Home</a>
        </div>
    </div>
</div>
</body>
</html>
