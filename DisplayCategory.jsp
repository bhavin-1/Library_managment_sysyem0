<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<center>
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
table {
	widht: 100%;
	font-family: arial, sans-serif;
	font-color:white;
	border-collapse: collapse;
	
}
th, td {
	padding: 8px;
	text-align: left;
	border-top: 1px solid #dee2e6;
	font-color:white;
}
tbody tr : nth-child(odd) {
	background-color: #f2f2f2;
	font-color:white;

}
.s:link , .s:visited {
	background-color: green;
	color: white;
	padding: 7px 15px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-color:white;
}
.g:link , .g:visited {
	background-color: red;
	color: white;
	padding: 7px 15px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-color:white;
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
	ResultSet rs = st.executeQuery("select *from addcategory");
	

%>
<table border="0" align="center"><thead>
<tr><th align="center" colspan="7" class="s" >Category Details</th></tr><tr></tr><tr></tr>
<tr>
<th class="s">ID</th>
<th class="s">CATEGORY</th>
<th class="s">STATUS</th>
<th class="s">EDIT</th>
<th class="s">DELETE</th>
</tr></thead><tbody>
<tr></tr><tr></tr><tr></tr>
<%	while(rs.next())
	{
	int id = rs.getInt(1);
%>
	<tr>
		<td><%out.println(rs.getInt(1));%></td>
		<td><%out.println(rs.getString(2));%></td>
		<td><%out.println(rs.getString(3));%></td>
		<td><a class="s" href="editcategory.jsp?id=<%=  id %>">Edit</a></td>
		<td><a class="g" href="deletecategory.jsp?id=<%=  id %>">Delete</a></td>
	</tr></tbody>
<%
	}
	rs.close();
%>
 <tr></tr><tr></tr>
 <!-- <tr><td align="center" colspan="7" ><a href="AddCategory.jsp"><b>Add Category</b></a></td></tr>-->
 </table> 
<%
}
catch(Exception e)
{
	System.out.print(e);
}
		
%>

</center>
</body>
</html>