<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Random" %>
<%
    // Generate a random color in HEX format
    String[] colors = {"#FF5733", "#33FF57", "#3357FF", "#FF33A1", "#FFDA33", "#A133FF"};
    Random random = new Random();
    String color = colors[random.nextInt(colors.length)];
    pageContext.setAttribute("bgColor", color);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Random Color Page</title>
    <style>
        body {
            background-color: ${bgColor}; /* Set background color from the server-side */
            color: white;
            text-align: center;
            padding: 50px;
        }
        h1 {
            font-size: 3em;
        }
    </style>
    <script type="text/javascript">
        // If you want to refresh the background color without refreshing the whole page, you can use this:
        function changeBackgroundColor() {
            var colors = ["#FF5733", "#33FF57", "#3357FF", "#FF33A1", "#FFDA33", "#A133FF"];
            var randomColor = colors[Math.floor(Math.random() * colors.length)];
            document.body.style.backgroundColor = randomColor;
        }
    </script>
</head>
<body onload="changeBackgroundColor()"> <!-- You can remove this if you want the page to just load with the server-generated color -->
    <h1>Welcome to the Color Changing Page!</h1>
    <p>The background color will change every time the page is refreshed.</p>
</body>
</html>

