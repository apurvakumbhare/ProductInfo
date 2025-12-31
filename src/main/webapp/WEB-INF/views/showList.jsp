<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book List</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Georgia', serif;
            background: url('https://images.pexels.com/photos/256559/pexels-photo-256559.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=1000&w=1600') no-repeat center center fixed;
            background-size: cover;
        }

        .overlay {
            background-color: rgba(0, 0, 0, 0.6);
            min-height: 100vh;
            padding: 60px 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .container {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(12px);
            padding: 40px;
            border-radius: 20px;
            width: 90%;
            max-width: 1000px;
            color: #fff8dc;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.4);
        }

        h2 {
            text-align: center;
            color: #f5deb3;
            margin-bottom: 30px;
        }

        form {
            display: flex;
            justify-content: center;
            margin-bottom: 30px;
        }

        input[type="text"] {
            padding: 10px;
            width: 250px;
            border: none;
            border-radius: 8px;
            font-size: 14px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #8b4513;
            color: white;
            border: none;
            margin-left: 10px;
            border-radius: 8px;
            cursor: pointer;
            font-weight: bold;
        }

        input[type="submit"]:hover {
            background-color: #a0522d;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background: rgba(255, 255, 255, 0.07);
        }

        th, td {
            padding: 12px;
            border-bottom: 1px solid rgba(255, 255, 255, 0.3);
            text-align: center;
        }

        th {
            background-color: rgba(255, 255, 255, 0.2);
            color: #fff0c2;
        }

        td {
            color: #fffbe6;
        }

        .message {
            text-align: center;
            color: #ffdddd;
            font-size: 16px;
            margin-bottom: 20px;
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
    <div class="container">
        <h2> Book Inventory</h2>

        <form action="${pageContext.request.contextPath}/showList/search" method="post">
    <input type="text" name="ID" placeholder="Enter Product ID"/>
    <input type="submit" value="Search Book"/>
   
</form>

        <div class="message">
         <c:if test="${not empty product}">
            <h3 style="text-align: center; color: #fff8dc;"> Search Result</h3>
            <table>
                <thead>
                <tr>
                    <th>Product ID</th>
                    <th>Book Title</th>
                    <th>Owner</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Shelf</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>${product.id}</td>
                    <td>${product.productname}</td>
                    <td>${product.brandname}</td>
                    <td>${product.price}</td>
                    <td>${product.quantity}</td>
                    <td>${product.shelf}</td>
                </tr>
                </tbody>
            </table>
            <div class="btn-container">
            <a href="${pageContext.request.contextPath}/showList" class="back-btn">← Back</a>
        </div>
        </c:if>

        <!-- If message is just a string -->
        <c:if test="${not empty message}">
            <div class="message">
                <c:out value="${message}" />
                <div class="btn-container">
            <a href="${pageContext.request.contextPath}/showList" class="back-btn">← Back</a>
        </div>
            </div>
        </c:if>


        </div>

        <c:if test="${not empty productList}">
            <table>
                <thead>
                <tr>
                    <th>Product ID</th>
                    <th>Book Title</th>
                    <th>Owner</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Shelf</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="book" items="${productList}">
                    <tr>
                        <td>${book.id}</td>
                        <td>${book.productname}</td>
                        <td>${book.brandname}</td>
                        <td>${book.price}</td>
                        <td>${book.quantity}</td>
                         <td>${book.shelf}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </c:if>
		
   
</form>
        <div class="btn-container">
            <a href="${pageContext.request.contextPath}/" class="back-btn">← Back to Home</a>
        </div>
    </div>
</div>
</body>
</html>
