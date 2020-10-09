<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.util.*" %>
     <%@page import="com.model.*" %>
<!DOCTYPE html>
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
</div>
<form  id="login" action="updatebooking" class="input-group">
Model Name:
<input type="text" class="input-field" name="model" readonly value="<%
if(request.getAttribute("arr")!=null){
	ArrayList <RegistrationModel> arr=(ArrayList<RegistrationModel>)request.getAttribute("arr");
	for(RegistrationModel r: arr)
	{
		out.println(r.getModel());
	}
}

%>"><br>

Per day rent:
<input type="text" class="input-field" name="pday_rent" readonly value="<%
if(request.getAttribute("arr")!=null){
	ArrayList <RegistrationModel> arr=(ArrayList<RegistrationModel>)request.getAttribute("arr");
	for(RegistrationModel r: arr)
	{
		out.println(r.getPday_rent());
	}
}

%>"><br>
Colour:
<input type="text" class="input-field" name="b_colour" readonly value="<%
if(request.getAttribute("arr")!=null){
	ArrayList <RegistrationModel> arr=(ArrayList<RegistrationModel>)request.getAttribute("arr");
	for(RegistrationModel r: arr)
	{
		out.println(r.getB_colour());
	}
}

%>"><br>

Start Date:<input type="date" class="input-field" value="rent_sdate" name="rent_sdate">
 
End Date:<input type="date" class="input-field" value="rent_edate" name="rent_edate">

<button type="submit" class="submit-btn" value="submit">Book Now</button>
</form>
</div>
</div>
    </div>
</body>
</html>