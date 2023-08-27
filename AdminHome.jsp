<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>

*{
	padding: 0;
	margin: 0;;
	box-sizing: border-box;
}
body{
	font-size: 18px;
	font-family: 'Roboto', sans-serif;
	background:url(bg1.png) no-repeat;
	background-size: cover;
}
.header-area{
	//background: #142440;
	background: #2E86C1 ;
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
	
}
.site-l span{
	//color: #ff4a44;
	font-size: 25px;
	color: #ff8533;
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
	color: #ff8533;
}
hr{
	border:4px solid #ff8533;
	margin:2px;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<header class="header-area">
	<div class="header-container">
		<div class="site-l">
			<span> Library Management System </span>
		</div>
		<div class="site-nav-menu">
			<ul class="primary-menu">
				<li><a href="AddCategory.jsp">Category</a></li>
				<li><a href="AddAuthor.jsp">Author</a></li>
				<li><a href="AddBook.jsp">Add Books</a></li>
				<li><a href="ViewBooks.jsp">Issue Book</a></li>
				<li><a href="issuelist.jsp">Issue list</a></li>

				<li><a href="Logout.jsp">LogOut</a></li>
			</ul>
		</div>
	</div>
</header>
<hr></hr>

</body>
</html>
