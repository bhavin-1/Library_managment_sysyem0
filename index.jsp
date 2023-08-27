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


*{
	padding: 0;
	margin: 0;;
	box-sizing: border-box;
}
body{
	
	background:url(bg1.png) no-repeat;
	background-size: cover;
	font-size: 18px;
	font-family: 'Roboto', sans-serif;
}
.header-area{
	background: #347B98;
	width: 100%;
	padding: 12px 30px;
	z-index: 999;
	border-bottom: #909090ad;
}
.header-container{
	width: 100%;
	margin: auto;
	display: table;
}
.site-l{
	float: left;
	padding: 17px 0px;
	color: #ff8533;
	
}
.site-l span{
	color: #ff4a44;
	font-size: 25px;
}
.site-nav-menu{
	float: right;
}
.primary-menu{
	list-style: none;
}
.primary-menu li{
	display: inline-block;
	margin: 21px 5px;
}
.primary-menu a{
	color: #fff;
	position: relative;
	text-decoration: none;
	text-tranform: uppercase;
	font-weight: 500;
	letter-spacing: 1px;
	padding: 15px 10px;
	transition: .5s;
}
.primary-menu a:hover,
.primary-menu .active{
	color: #ff4a44;
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
hr{
	border:4px solid #ff8533;
	margin:2px;
}
</style>
</head>

<form action="Login.jsp" method="post">
<header class="header-area">
	<div class="header-container">
		<div class="site-l">
			<span> Library Management System </span>
		</div>
		<div class="site-nav-menu">
			<ul class="primary-menu">
			

				<li><a href="index.jsp">Home</a></li>
				<li><a href="About-Us.jsp">About Us</a></li>
				<li><a href="Contect-Us.jsp">Contect Us</a></li>
				<li><a href="ClientViewBook.jsp">All Books</a></li>
				<li><a href="ClentViewIssue.jsp">Issue Book list</a></li>

				<li><input type="submit" value="Login" class="p"></li>
			</ul>
		</div>
	</div>
</header>




</form>
<hr></hr>
</body>
</html>