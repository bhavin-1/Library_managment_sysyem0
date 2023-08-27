
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

try
{

	
	String sid=request.getParameter("id");
	int id=Integer.parseInt(sid);
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/library-manage","root","");
	Statement st = con.createStatement();
	st.execute("delete from issue_book where roll_no='"+id+"'");
	request.getRequestDispatcher("issuelist.jsp").include(request,response);
	
	
	
}
catch(Exception e)
{
	out.println(e);
}

%>

</body>
</html>