<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Book</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Georgia', serif;
            background: url('https://images.pexels.com/photos/256559/pexels-photo-256559.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=1000&w=1600') no-repeat center center fixed;
            background-size: cover;
        }

        .overlay {
            background-color: rgba(0, 0, 0, 0.5);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 60px 20px;
        }

        .form-container {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(14px);
            -webkit-backdrop-filter: blur(14px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 20px;
            padding: 40px;
            width: 100%;
            max-width: 550px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.4);
            color: #fff8dc;
        }

        h2 {
            text-align: center;
            font-size: 28px;
            margin-bottom: 20px;
            font-family: 'Palatino Linotype', serif;
            color: #fbeec1;
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px 5px;
        }

        label {
            font-weight: bold;
            color: #fff0c2;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 10px;
            font-size: 14px;
            background-color: rgba(255, 255, 255, 0.7);
            color: #333;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #8b4513;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 10px;
            margin-top: 20px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s;
        }

        input[type="submit"]:hover {
            background-color: #a0522d;
            transform: scale(1.03);
        }

        .back-btn {
            display: inline-block;
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

        .back-container {
            text-align: center;
            margin-top: 20px;
        }

        .message {
            text-align: center;
            color: #ffcccb;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="overlay">
    <div class="form-container">
        <h2>Add Book Entry</h2>

        <div class="message">
            <c:out value="${message}" />
        </div>

        <form:form action="${pageContext.request.contextPath}/success" method="post" modelAttribute="userdata">
            <table>
                <tr>
                    <td><form:label path="id">Book Id:</form:label></td>
                    <td><form:input path="id"/></td>
                </tr>
                <tr>
                    <td><form:label path="productname">Book Name:</form:label></td>
                    <td><form:input path="productname"/></td>
                </tr>
                <tr>
                    <td><form:label path="brandname">Author:</form:label></td>
                    <td><form:input path="brandname"/></td>
                </tr>
                <tr>
                    <td><form:label path="shelf">Bookshelf no:</form:label></td>
                    <td><form:input path="shelf"/></td>
                </tr>
                <tr>
                    <td><form:label path="price">Price:</form:label></td>
                    <td><form:input path="price"/></td>
                </tr>
                <tr>
                    <td><form:label path="quantity">Quantity:</form:label></td>
                    <td><form:input path="quantity"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Add Product"/>
                    </td>
                </tr>
            </table>
        </form:form>

        <div class="back-container">
            <a href="${pageContext.request.contextPath}/" class="back-btn">← Back to Home</a>
        </div>
    </div>
</div>
</body>
</html>
