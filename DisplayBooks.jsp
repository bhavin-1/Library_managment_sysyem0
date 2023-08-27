<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

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
.s:link , .s:visited {
	background-color: green;
	color: white;
	padding: 7px 15px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
}
.g:link , .g:visited {
	background-color: red;
	color: white;
	padding: 7px 15px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
}
.s{
	color: #347B98;
}
</style>
</head>
<body>
<%@ page import = "java.sql.*" %>



<%

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/library-manage","root","");
	System.out.println("dd Connection Successfully....");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select *from addbook");
	

%><center>
<table border="0" align="center">
<tr><th align="center" colspan="9" class="s" >Book Details</th></tr><tr></tr><tr></tr>
<tr>
<th class="s">ID</th>
<th class="s">BOOK NAME</th>
<th class="s">CATEGORY</th>
<th class="s">AUTHOR</th>
<th class="s">NO OF PAGE</th>
<th class="s">edit</th>
<th class="s">delete</th>

</tr>
<tr></tr><tr></tr><tr></tr>
<%	while(rs.next())
	{
	int id = rs.getInt(1);
%>
	<tr>
		<td><%out.println(rs.getInt(1));%></td>
		<td><%out.println(rs.getString(2));%></td>
		<td><%out.println(rs.getString(3));%></td>
		<td><%out.println(rs.getString(4));%></td>
		<td><%out.println(rs.getString(5));%></td>
		<td><a class="s" href="editbook.jsp?id=<%=  id %>">EDIT</a></td>
		<td><a class="g" href="deletebook.jsp?id=<%=  id %>">DELETE</a></td>
	</tr>
<%

	}
	rs.close();
%>
 <tr></tr><tr></tr>
 </table> </center>
<%
}
catch(Exception e)
{
	System.out.print(e);
}
		
%>

</body>
</html>