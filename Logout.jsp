<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

//HttpSession session = request.getSession();
out.print("<script>alert('Logout Sccessfully...');</script>");
session.invalidate();
request.getRequestDispatcher("index.jsp").include(request,response);

out.close();

%>
</body>
</html>