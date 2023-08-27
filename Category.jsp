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

String c = request.getParameter("category");
String s = request.getParameter("status");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/library-manage","root","");
	//Class.forName("oracle.jdbc.driver.OracleDriver");
	//Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sahil");
	System.out.println("i Connection Successfully....");
	PreparedStatement ps = con.prepareStatement("insert into addcategory (category, status) values (?,?)");
	ps.setString(1, c);
	ps.setString(2, s);
	
	ps.executeUpdate();
	out.print("<script>alert('Category Add Successfully...')</script>");
	request.getRequestDispatcher("AddCategory.jsp").include(request,response);

%>


</body>
</html>