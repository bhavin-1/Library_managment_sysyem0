<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import = "java.sql.*" %>
<%

String bn = request.getParameter("book_name");
String cn = request.getParameter("book_author");
String an = request.getParameter("book_category");
String bp = request.getParameter("book_page");


	/*out.print(bn);
	out.print(cn);
	out.print(an);
	out.print(bc);
	out.print(bp);
	out.print(be);*/

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/library-manage","root","");
	//Class.forName("oracle.jdbc.driver.OracleDriver");
	//Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sahil");
	System.out.println("ai Connection Successfully....");
	PreparedStatement ps = con.prepareStatement("insert into addbook (book_name, book_author, book_category,  book_page) values (?,?,?,?)");
	ps.setString(1,bn);
	ps.setString(2,cn);
	ps.setString(3,an);
	ps.setString(4,bp);
	
	//ps.executeUpdate();
	ps.execute();
	out.print("<script> alert('Book Add Successfully'); </script>");
	request.getRequestDispatcher("AddBook.jsp").include(request,response);
%>


</body>
</html>