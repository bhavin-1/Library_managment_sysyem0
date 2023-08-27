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
	background-color: #4CAF50;
	border: none;
	border-radius: 5px;
	box-shadow: 0 9px #999;
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
}
tbody tr : nth-child(odd) {
	background-color: #f2f2f2;
}
</style>
</head>
<body>


<%@ page import="java.sql.*" %>
<% 


			String sid=request.getParameter("id");
			int id=Integer.parseInt(sid);

			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/library-manage","root","");
				
				Statement st;
				st=con.createStatement();
				ResultSet rs=st.executeQuery("select *from addbook where id='"+id+"'");
				
				rs.next();
				
				out.print("<center><table><form action='editbook2.jsp' method='post'>");
				out.print("<tr><td><input type='hidden' name='id' value='"+rs.getInt(1)+"'><br></td></tr>");
				out.print("<tr><td>bookname:<input type='text' name='bn' value='"+rs.getString(2)+"'><br></td></tr>");
				out.print("<tr><td>authorname:<input type='text' name='ba' value='"+rs.getString(3)+"'><br></td></tr>");
				out.print("<tr><td>category:<input type='text' name='bc' value='"+rs.getString(4)+"'><br></td></tr>");
				out.print("<tr><td>no of page:<input type='text' name='bp' value='"+rs.getString(5)+"'><br></td></tr>");
				


				out.print("<tr><td><input type='submit' class='button' value='edit&amp;save'/><td></tr>");
				out.print("</from></table></center>");

				
			}
			
			catch(Exception e)
			{
				out.print(e);
			}

%>



</body>
</html>