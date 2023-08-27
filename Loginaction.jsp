<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.sql.*" %>

<%
try
{
	

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/library-manage","root","");
		System.out.print("Connected....");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		PreparedStatement ps = con.prepareStatement("select * from Admin_login where username=? and password=?");
		
		ps.setString(1, username);
		ps.setString(2, password);
		
		ResultSet rs= ps.executeQuery();
		
		
		if(rs.next())
		{
			//out.print("welcome...");
			System.out.println("Welcome "+username);
			session.setAttribute("user",username);

			if(session.getAttribute("user")==null){
				
				out.print("<script>alert('Please Login First...');</script>");
				request.getRequestDispatcher("Login.jsp").include(request, response);
				
			}
			else{
				
				out.print("<script>alert('Welcome...');</script>");
				request.getRequestDispatcher("AddCategory.jsp").include(request, response);
				
			}


	
			//request.getRequestDispatcher("AddCategory.jsp").include(request, response);
			//req.getRequestDispatcher("link.html").include(request, response);
		}
		else
		{
			out.print("invalid...");
		}
		
		
}
catch(Exception es)
{
	System.out.print(es);
}

%>

</body>
</html>