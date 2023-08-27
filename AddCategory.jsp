
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
	background-color: #3e8e41;
}
.button:active {
	//background-color: #3e8e41,#347B98;
	background-color: #347B98;
	box-shadow: 0 5px #666;
	transform: translateY(4px);
}
input[type=text], select {
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
	border-top: 1px solid #347B98;
	color: #ff8533;
}
tbody tr : nth-child(odd) {
	background-color: #f2f2f2;
	color: #347B98;
}
h1{
	margin: 20px;
	color: #347B98;
}
</style>
</head>
<body>

<jsp:include page="AdminHome.jsp" /><br><br><br><br>
<form action="Category.jsp" method="post">
<center>
<table border="0"><thead>
<tr><th colspan="2">
<h1>Add Category</h1></th></tr></thead><tbody>
<tr><th>
Category Name:</th><td>
<input type="text" name="category" placeholder="Enter Category Name" required></td></tr>
<tr><th>Status:</th><td>
<select name="status">
	<option value="Active">Active</option>
	<option>DeActive</option>
</select></td></tr>
<tr><th colspan="2">
<input type="submit" value="Save&Edit" class="button"></th></tr></tbody>
<!-- <tr><td colspan="2" align="center"><a href="DisplayCategory.jsp">View Recored</a></td></tr>-->
</table><br><br>
</center>
<jsp:include page="DisplayCategory.jsp" /><br><br>
<jsp:include page="footer.jsp" />
</form>
</body>
</html>

