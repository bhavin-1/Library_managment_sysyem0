<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

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
	box-shadow: 0 5px #999;
}
.button:hover {
	background-color: #3e8e41;
}
.button:active {
	background-color: #3e8e41;
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
	border-top: 1px solid #dee2e6;
	color: #ff8533;
}
tbody tr : nth-child(odd) {
	background-color: #f2f2f2;
}
h1{
	margin: 20px;
	color: #347B98;
}
</style>
</head>
<body>
<jsp:include page="AdminHome.jsp" /><br><br><br><br>
<form action="Bookaction.jsp" method="post">
<center>
<table border="0"><thead>
<tr>
<th colspan="2"><h1>Add New Book</h1></th></tr></thead><tbody>
<tr>
<th>Book Name</th><td><input type="text" name="book_name" placeholder="Enter Book Name" required></td>
</tr>
<%@ page import="java.sql.*" %>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/library-manage","root","");
	System.out.println("dd Connection Successfully....");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select *from addauthor");
%>	
<tr><th>Author</th><td><select name="book_author">
<%
	while(rs.next())
	{
%>
			<option><% out.println(rs.getString(2)); %></option>
<%
	}
%></select></td></tr><%

Statement st1 = con.createStatement();
ResultSet rs1 = st1.executeQuery("select *from addcategory");%>
<tr><th>Category</th><td><select name="book_category"> 
<%
	while(rs1.next())
	{
%>
			<option><% out.println(rs1.getString(2)); %></option>
<%
	}
%></select></td></tr><%
	//out.close();
}
catch(Exception e)
{
	System.out.print(e);
}
%>

<tr>
<th>No Of Page</th><td><input type="text" name="book_page" placeholder="Enter Number Of Page" required></td>
</tr>


<tr>
<td colspan="2"><input type="submit" value="Add Book" class="button"></td>
</tr>
</tbody>
</table>
</center>
</form><br><br>
<jsp:include page="DisplayBooks.jsp" /><br><br>
<jsp:include page="footer.jsp" />
</body>
</html>