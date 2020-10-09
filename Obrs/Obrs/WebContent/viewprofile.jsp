<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="com.model.*" %>
 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>edit</title>
<style>

body {
	background: url(images/new.jpg) ;
	margin: 0px;
	padding: 0px;
	text-align: justify;
	font: 13px Arial, Helvetica, sans-serif;
	
}
h1{
	font-family: sans-serif;
	font-style: italic;
	color: #25383C;
	text-shadow: 3px 2px 5px;
}
label{

	margin-left:40px;


}
input{
	margin-top: 10px;
	margin-left: 50px;
}


.head{

	margin: 40px;
    padding: 10px; 
}
.edit{
	background-color: white;
    margin: 40px;
    padding: 10px;
}
#m{
width:40px;
	height: 20px;
}
.b2{ 
	margin-left:160px;
	border:1px solid white;
	background: #c0c0c0;
	padding: 10px 10px;
	font-size: 15px;
	font-family: "montserrat";
	cursor: pointer;
	 transition: 0.4s;
	 position: relative;
	 overflow: hidden;
}
.b2:hover{
  color:#fff;

}
.b2::before{
	content: "";
	position: absolute;
	left:0;
	width:100%;
	height:0%;
	background:#3498db;
	z-index: -1;
	transition:0.4s;

}
.b2::before{
	bottom: 0;
	border-radius: 50% 50% 0 0;
}

.b2:hover::before{
	height: 100%;
}

</style>
</head>
<body>
<div class="head">

	<center><h1>Edit Profile</h1></center>
	
</div>
<div class="edit">
    <form action="editProfile" method="get"> 
    <label class="grey" for="password">Email id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <input class="field" type="name" name="email_id" id="name" readonly value=" <%
 if(request.getAttribute("arr")!=null)
 {
	 ArrayList<RegistrationModel> arr=(ArrayList<RegistrationModel>)request.getAttribute("arr");
	 for(RegistrationModel a: arr)
	 {
		out.println(a.getEmail_id());
	 }
 }
 %>  " size="23" /><br>
    <label class="grey" for="password">Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <input class="field" type="name" name="name" id="name" value="<%
    		 if(request.getAttribute("arr")!=null)
    		 {
    			 ArrayList<RegistrationModel> arr=(ArrayList<RegistrationModel>)request.getAttribute("arr");
    			 for(RegistrationModel a: arr)
    			 {
    				out.println(a.getName());
    			 }
    		 }
    		 %>   " size="23" /><br>
 
    <label class="grey" for="mobile_no">New Mobile No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
   
    <input   class="field" type="number" name="mobno" value="<%

    		 if(request.getAttribute("arr")!=null)
    		 {
    			 ArrayList<RegistrationModel> arr=(ArrayList<RegistrationModel>)request.getAttribute("arr");
    			 for(RegistrationModel a: arr)
    			 {
    				out.println(a.getPh_no());
    			 }
    		 }
  
 %>   " id="Answer" size="23" /><br><br>
   <label class="grey" for="Answer">Location: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <select id="bt" name="location" required>
<option>
<%
if(request.getAttribute("arr")!=null)
{
	 ArrayList<RegistrationModel> arr=(ArrayList<RegistrationModel>)request.getAttribute("arr");
	 for(RegistrationModel a: arr)
	 {
		out.println(a.getS_quest());
	 }
}
 %> </option>
   <option value="Bangalore">Bangalore</option>
    <option value="mangalore">Mangalore</option>
    <option value="udupi">Udupi</option>
    <option value="moodbidri">Moodbidri</option>
  </select>
  <label class="grey">Security question:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>

 <input class="field" type="Answer" name="secque" id="Answer" value="<%
 if(request.getAttribute("arr")!=null)
 {
	 ArrayList<RegistrationModel> arr=(ArrayList<RegistrationModel>)request.getAttribute("arr");
	 for(RegistrationModel a: arr)
	 {
		out.println(a.getS_quest());
	 }
 }
 %>  " size="23" /><br><br>
    <label class="grey" for="Answer">Security Answer: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <input class="field" type="Answer" name="secans" id="Answer" value="<%
    		 if(request.getAttribute("arr")!=null)
    		 {
    			 ArrayList<RegistrationModel> arr=(ArrayList<RegistrationModel>)request.getAttribute("arr");
    			 for(RegistrationModel a: arr)
    			 {
    				out.println(a.getS_ans());
    			 }
    		 }
 %>   " size="23" /><br><br>

    <input class="b2" type="button" onclick="window.location.href='bike_home.jsp';" value="Home"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input class="b2" type="submit" name="submit" value="Update" class="bt_register" style="margin-left: 382px;" />
      <div class="clear"></div>

</form>
</div>
</body>
</html>