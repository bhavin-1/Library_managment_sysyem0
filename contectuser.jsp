<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import = "java.sql.*" %>
<%

String name = request.getParameter("name");
String mobile = request.getParameter("mobile");
String email = request.getParameter("email");
String msg = request.getParameter("msg");

try{

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/library-manage","root","");
	//Class.forName("oracle.jdbc.driver.OracleDriver");
	//Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sahil");
	System.out.println("i Connection Successfully....");
	PreparedStatement ps = con.prepareStatement("insert into contect (name, mobile, email, msg) values (?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, mobile);
	ps.setString(3, email);
	ps.setString(4, msg);
	
	ps.executeUpdate();
	out.print("<script>alert('Send Message Successfully...')</script>");
	request.getRequestDispatcher("index.jsp").include(request,response);
}
catch(Exception e)
{
	System.out.println(e);
}

%>


</body>
</html>