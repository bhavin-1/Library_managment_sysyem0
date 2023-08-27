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
				
				String an=request.getParameter("an");				
				String aa=request.getParameter("aa");
				String ap=request.getParameter("ap");
				
				try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/library-manage","root","");

		
				Statement st;
				st=con.createStatement();
				

				st.execute("update addauthor set aname='"+an+"',aaddress='"+aa+"',aphone='"+ap+"' where id='"+id+"'");
				
				request.getRequestDispatcher("AddAuthor.jsp").include(request,response);
				}
				
				catch(Exception e1)
				{
					System.out.print(e1);
				}

%>



</body>
</html>