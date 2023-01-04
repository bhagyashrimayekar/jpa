<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>

table.center {
  margin-left: auto; 
  margin-right: auto;
}
</style>


<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>


<body style="background-color: grey;">
<h1 style="color: blck;text-align: center;">Edit Page</h1>
<form action="update" style="color: black; ">
<table class="center">
<tr>
<td>
EMP ID :-      <input type="hidden" name="empid" value="${data.empid}">
EMP NAME :-    <input type="text" name="empname" value="${data.empname}">

EMP USERNAME:- <input type="text" name="uname" value="${data.uname}">

EMP PASSWORD :-<input type="text" name="upass" value="${data.upass}">
Email ID :-<input type="email" name="emailid" value="${data.emailid}">
<br>
<br>
EMP SALARY:-<input type="text" name="salary" value="${data.salary}">
EMP DOB:-<input type="date" name="dob" value="${data.dob}">
Gender :- <input type="text" name="gender" value="${data.gender}"> 
 <input type="radio" name="gender" value="Male">Male 
 
 <input type="radio" name="gender"value="Female">Female<br>
 <br>
				
DEPARTMENT :-<input type="" name="department" value="${data.department}">
<select name="department">

<option value="" selected></option>
<option value="Hr">HRD</option>
<option value="Maintainance">Maintainance</option>
<option value="Quality">Quality</option>
<option value="Production">Production</option>
<option value="R&D">R&D</option>
</select>
<br>
<br>
Phone no. :-<input type="text" name="phone" value="${data.phone}">
Address :-<input type="text" name="address" value="${data.address}">
Facility take :-
      <input type="text" name="facility" value="${data.facility}">
      <input type="checkbox" name="facility" value="Breakfast">Breakfast
      <input type="checkbox" name="facility" value="Lunch">Lunch
      <input type="checkbox" name="facility" value="Tea">Tea
        <input type="checkbox" name="facility" value="Bus Facility">Bus Facility
 
                

 </td>

  </tr>
</table>
 <br>
 <br>
 <input type="submit" value="UPDATE" style="color:black;margin:0px auto; display:block;">

</form>

</body>
</html>