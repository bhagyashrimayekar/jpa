<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: skyblue;text-align: center;">
	<h1 style="color: black;">Registration Page</h1>
	<form action="addemployee" style="color: black;">
		<pre>
&nbsp  EMP ID :-          <input type="text" name="empid">
<br>
&nbsp  EMP NAME :-        <input type="text" name="empname">
<br>
&nbsp  EMP USERNAME :-    <input type="text" name="uname">
<br>
&nbsp  EMP PASSWORD :-    <input type="text" name="upass">
<br>
&nbsp  EMP EMAILID :-     <input type="email" name="emailid">
<br>
&nbsp  EMP SALARY :-      <input type="text" name="salary">
<br>
DATE OF BIRTH :-   <input type="date" name="dob">
<br>
Gender :- &nbsp  <input type="radio" name="gender"
				value="Male">Male &nbsp  <input type="radio" name="gender"value="Female">Female<br>
				
&nbsp  <label for="department">Select Your Department</label>&nbsp   <select name="department">

<option value="none" selected>None</option>
<option value="Hr">HRD</option>
<option value="Maintainance">Maintainance</option>
<option value="Quality">Quality</option>
<option value="Production">Production</option>
<option value="R&D">R&D</option>
</select>


     PHONE Number :- <input type="text" name="countrycode" value="+91" size="2"> &nbsp  <input type="text" name="phone" size="10">
<br>
Address:-
&nbsp        <textarea rows="2" cols="35" name="address" value="address"></textarea>
&nbsp           Which facility of the company do you want to take ? 
<br>
      <input type="checkbox" name="facility" value="Breakfast">Breakfast<br>
  <input type="checkbox" name="facility" value="Lunch">Lunch<br>
<input type="checkbox" name="facility" value="Tea">Tea<br>
         <input type="checkbox" name="facility" value="Bus Facility">Bus Facility<br>
<br>
</pre>
   <input type="submit" value="Register" style="margin:0px auto;display: block;"> <br>
      <input type="reset" value="RESET"> 	
  

	</form>
</body>
</html>