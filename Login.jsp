<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<head>
<style>

body
{
	//border:5px  solid lightblue;
	background:url(bg.png) no-repeat;
	background-size:cover;
	color: lightblue;
	text-align: center;
	padding: 218px;
	cursor: pointer;
	margin: 6px 6px;
	//box-shadow: -0 40px 8px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.2)
}
.p
{
	//float:right;
	background:#555;
	padding: 10px;
	background-color: lightblue;
	color:white;
	border-radius:19px;
	margin-right:-10px;
	border:none;
}


</style>
<script>

</script>
</head>

<form action="Loginaction.jsp" method="post">

<table border="0" align="center">
<tr><center><h2>Login</h2></center></tr>
<tr><th align="left">
UserName</th><td><input type="text" name="username" id="a" class="p" required></td></tr>
<tr><th align="left">
Password</th><td><input type="password" name="password" id="a" class="p" required></td></tr>
<tr><th colspan="2" align="right">
<input type="submit" value="Login" class="p"></th></tr>

</table>

</form>
</body>
</html>