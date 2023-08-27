<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.sql.*" %>

<% 
				String sid=request.getParameter("id");
				int id=Integer.parseInt(sid);
				
				String bn=request.getParameter("bn");				
				String ba=request.getParameter("ba");
				String bc=request.getParameter("bc");
				String bp=request.getParameter("bp");
				
				try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/library-manage","root","");

		
				Statement st;
				st=con.createStatement();
				

				st.execute("update addbook set book_name='"+bn+"',book_author='"+ba+"',book_category='"+bc+"',book_page='"+bp+"' where id='"+id+"'");
				
				request.getRequestDispatcher("AddBook.jsp").include(request,response);
				}
				
				catch(Exception e1)
				{
					System.out.print(e1);
				}

%>



</body>
</html>