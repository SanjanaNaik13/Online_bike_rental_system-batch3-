<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.util.*" %>
     <%@page import="com.model.*" %>
<html>
<head>
<title>Bike booked</title>
<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet">

<link rel="stylesheet" href="bike_booked.css">
</head>
<body>
	<div class="amal">
	<div class="head">
	<h1> RIDE-NOW   BIKE RENTALS</h1>
	<div class="form-box">
	<div class="button-box">
	<div id="btn"></div>
	<button type="button" class="toggle-btn"></button>
</div>
<form  id="login" class="input-group">
<h2>Bike booked succesfully</h2><br><br>
<center>
<%
if(request.getAttribute("nodays")!=null)
{
	out.println("Total Amount payable: "+request.getAttribute("rent")+"<br>");
	out.println("Please collect bike on  "+request.getAttribute("sdate")+"<br>");
	out.println("Number of days bike rented  "+request.getAttribute("nodays")+"<br>");
}
%>
</center><br><br>
<h3>Happy customers are our motive.....Have a safe journey ahead<h31>
<br><br><center>
<button class="submit-btn" ><a href="bike_home.jsp" style="text-decoration:none;" >HOME</a></button><br>
</center>
</div>
</div>
    </div>
    </form>
</body>
</html>
