<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Library Dashboard</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Georgia', serif;
            background: url('https://images.unsplash.com/photo-1535905557558-afc4877a26fc') no-repeat center center fixed;
            background-size: cover;
        }

        /* NAVIGATION BAR */
        .navbar {
            background-color: rgba(0, 0, 0, 0.65);
            backdrop-filter: blur(6px);
            padding: 15px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 10;
        }

        .navbar-left h1 {
            color: #fff;
            font-size: 24px;
            margin: 0;
            font-family: 'Palatino Linotype', serif;
        }

        .nav-links {
            display: flex;
            gap: 40px; /* spacing between links */
            padding-right: 60px; /* prevents right overflow */
        }

        .nav-links a {
            color: #fff8dc;
            text-decoration: none;
            font-size: 17px;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .nav-links a:hover {
            color: #ffdead;
        }

        .overlay {
            background-color: rgba(0, 0, 0, 0.3);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding-top: 90px;
        }

        .card {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(10px);
            padding: 50px 60px;
            border-radius: 20px;
            text-align: center;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.6);
            color: #fff8dc;
            max-width: 520px;
        }

        .card h2 {
            font-size: 38px;
            margin-bottom: 30px;
            color: #f5f5f5;
            border-bottom: 1px solid rgba(255, 255, 255, 0.3);
            padding-bottom: 10px;
        }

        .btn {
            background-color: #8b4513;
            color: white;
            padding: 12px 25px;
            margin: 15px 10px 0 10px;
            font-size: 16px;
            border: none;
            border-radius: 10px;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s;
        }

        .btn:hover {
            background-color: #a0522d;
            transform: scale(1.05);
        }

        /* Responsive fix */
        @media (max-width: 768px) {
            .nav-links {
                gap: 20px;
                padding-right: 20px;
            }
        }
    </style>
</head>
<body>

    <!-- NAVIGATION BAR -->
    <div class="navbar">
        <div class="navbar-left">
            <h1> Library</h1>
        </div>
        <div class="nav-links">
            <a href="${pageContext.request.contextPath}/">Home</a>
            <a href="${pageContext.request.contextPath}/about">About Us</a>
        </div>
    </div>

    <!-- MAIN CONTENT -->
    <div class="overlay">
        <div class="card">
            <h2> The Vintage Library</h2>
            <a href="${pageContext.request.contextPath}/save" class="btn"> Add Book</a>
            <a href="${pageContext.request.contextPath}/showList" class="btn"> Show Book List</a>
               <a href="${pageContext.request.contextPath}/showList/shelf" class="btn"> Explore Shelf</a>
              
        </div>
    </div>
</body>
</html>
