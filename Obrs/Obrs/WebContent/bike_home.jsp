<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
     <%@page import="com.model.*" %>
<!DOCTYPE html>
<html>
<head>
<title> home page</title>
<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet">

<link rel="stylesheet" href="bikehome.css">
</head>
<body>
	<div class="amal">
	<div class="head">
	<h1> RIDE-NOW   BIKE RENTALS</h1>
	<div class="form-box">
	<div class="button-box">
	<div id="btn"></div>
	<button type="button" class="toggle-btn">WELCOME</button><br>
</div>
   <input class="b2" type="button" onclick="window.location.href='ViewProfile';" value="view profile" /> <br>
<form action="AvailableBikesController" id="login" class="input-group">
    <div class="dropdown">
  <button class="dropbtn">Booking type</button>
  <div class="dropdown-content">
    <select name="rent_type" id="booking" class="dropbtn">
  <option  class="dropbtn" name="rent_type" value="hourly">Hourly</option>
  <option  class="dropbtn" name="rent_type" value="daily">Daily</option>
  <option  class="dropbtn" name="rent_type" value="monthly">30 days</option>
</select>
  </div>
</div>

<table border="1">
<pre>
  <tr>
    <th>MODEL</th><br>
    
    
    <th>COLOUR</th><br>
    
    
    <th>PER-DAY RENT</th><br>
    
    
    <th>BOOKING</th><br>
  </tr></pre>
 <%
 String rec="";
 if(request.getAttribute("arr")!=null)
 {
	 ArrayList<RegistrationModel> arr=(ArrayList<RegistrationModel>)request.getAttribute("arr");
	 for(RegistrationModel a: arr)
	 {
		 rec=rec+"<tr>";
		 rec=rec+"<td>"+a.getModel()+"</td><td>"+a.getB_colour()+"</td><td>"+a.getPday_rent()+"</td>";
		 rec=rec+"<td><a href='Booking?oper=book&b_id="+a.getB_id()+"' >BOOK</a></td>";

		 rec=rec+"</tr>";
	 }
	 out.println(rec);
 }
 %>
 </table>
<br><br>
	
    <button type="submit" class="submit-btn">Confirm</button>
	
</form>
</div><br><br>
<center>
<% 
if(request.getAttribute("errmsg")!=null)
{
	out.println("<font size=5 color=red>"+request.getAttribute("errmsg")+"</font>");
}
	%>
</center>
</div>
</div>
</body>
</html>
