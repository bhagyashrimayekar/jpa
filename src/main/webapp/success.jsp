<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
table.center {
  margin-left: auto; 
  margin-right: auto;
}
</style>

 <script type="text/javascript">
 function add() {
	 
	 document.myform.action="registration"
	 document.myform.submit();
	
}
 
 function del() {
	 
	 document.myform.action="deleteemployee"
	 document.myform.submit();
	
}
 function edit() {
	 
	 document.myform.action="editemployee"
	 document.myform.submit();
	
}
function next() {
	 
	 document.myform.action="nextrecord"
	 document.myform.submit();
	
}
function pre() {
	 
	 document.myform.action="getalldata"
	 document.myform.submit();
	
}
 
 
 
 
 </script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style=" background-color: skyblue">
<h1>Success Page</h1>
<br>
<form name="myform">
<table style="width: 100%;">
<tr>
<th>Radio</th>
<th>EMP ID</th>
<th>EMP NAME</th>
<th>EMP USERNAME</th>
<th>EMP PASSWORD</th>
<th>Email ID</th>
<th>Salary</th>
<th>birth date</th>
<th>Gender</th>
<th>Dept</th>
<th>phone no.</th>
<th>Address</th>
<th>facility Take</th>

</tr>
<c:forEach items="${data}" var="e">
<tr>
<td><input type="radio" name="empid" value="${e.empid}"> </td>
 <td>${e.empid}</td>
<td>${e.empname}</td>
<td>${e.uname}</td>
<td>${e.upass}</td>
<td>${e.emailid}</td>
<td>${e.salary}</td>
<td>${e.dob}</td>
<td>${e.gender}</td>
<td>${e.department}</td>
<td>${e.phone}</td>
<td>${e.address}</td>
<td>${e.facility}</td>
</tr>
</c:forEach>
</table>
   <br>
   <table class="center">
   <tr>
   <td><input type="submit" value="PREVIOUS" style="margin:0px auto; display:block;background-color: grey" onclick="pre()"></td>
   
   <td> <input type="submit" value="ADDNEW" style="margin:0px auto; display:block;background-color: grey" onclick="add()" ></td>
   
  <td> <input type="submit" value="DELETE" style="margin:0px auto; display:block;background-color: grey" onclick="del()"></td>
 
   <td> <input type="submit" value="EDIT" style="margin:0px auto; display:block;background-color: grey" onclick="edit()"></td>
    
    <td><input type="submit" value="NEXT" style="margin:0px auto; display:block;background-color: grey" onclick="next()"></td>
    

</tr>
</table>
</form>
</body>
</html>