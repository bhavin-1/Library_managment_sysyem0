<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
*{
	padding: 0;
	margin: 0;;
	box-sizing: border-box;
}
body{
	font-size: 18px;
	font-family: 'Roboto', sans-serif;
}
.button {
	display: inline-block;
	padding: 7px 15px;
	font-size: 24px;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	outline: none;
	background-color: #347B98;
	border: none;
	border-radius: 5px;
	box-shadow: 0 9px #999;
}
.button:hover {
	background-color: #347B98;
}
.button:active {
	background-color: #3e8e41;
	box-shadow: 0 5px #666;
	transform: translateY(4px);
}
input[type=text],[type=email], select {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
}
textarea, select {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
}
table {
	widht: 100%;
	font-family: arial, sans-serif;
	border-collapse: collapse;
}
th, td {
	padding: 8px;
	text-align: left;
	border-top: 1px solid #dee2e6;
}
tbody tr : nth-child(odd) {
	background-color: #f2f2f2;
}
h2 {
	color: #347B98;
}
</style>

</head>
<body>
<jsp:include page="index.jsp" /><br><br><br><br>
<center>
<table>
<form action="contectuser.jsp" method="post">
<h2>Contect Us Form</h2><br><br>
<tr><td><input type="text" name="name" placeholder="Enter Name"></td></tr>
<tr><td><input type="text" name="mobile" placeholder="Enter Mobile Number"></td></tr>
<tr><td><input type="email" name="email" placeholder="Enter Email Address"></td></tr>
<tr><td><textarea rows="5" cols="15" name="msg" placeholder="Enter Message"></textarea></td></tr>
<tr><td><input type="submit" class="button" value="SUBMIT"></td></tr>

</form>
</table>
</center>
</body>
</html>
















