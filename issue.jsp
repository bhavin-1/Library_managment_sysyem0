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
<%@page import="java.util.Properties,javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%

Date dt=new Date();
SimpleDateFormat ft=new SimpleDateFormat("yyyy-MM-dd");
String s=ft.format(dt);
 %>
//today is:<%=dt %><br>
//simple date is:<%=s %>

<%
		
		String sid=request.getParameter("id");
		int id=Integer.parseInt(sid);
		String r=request.getParameter("r");
		String sn=request.getParameter("sn");
		String message = "your book are issue...";
		String subject = "GK&CK library";
		String to=request.getParameter("semail");
		String from = "pumbhadiyasahil@gmail.com";
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/library-manage","root","");
			Statement st;
			st=con.createStatement();
			ResultSet rs=st.executeQuery("select *from addbook where id='"+id+"'");
		
			rs.next();
	
			
			PreparedStatement ps=con.prepareStatement(" insert into issue_book values(?,?,?,?,?,?,?)");
		
			ps.setString(1,r);
			ps.setString(2,sn);
			ps.setString(3,rs.getString(2));
			ps.setString(4,rs.getString(3));
			ps.setString(5,rs.getString(4));
			ps.setString(6,rs.getString(5));
			ps.setString(7,s);
		
		
			int i=ps.executeUpdate();
			if(i>0)
			{
				//out.println("book book suceesfully issue...");	
			}
			else
			{
				out.println("sorry! some thing went rong...");
			}
		}
		catch(Exception e)
		{
			out.println(e);
		}


		try
		{
		
				String host="smtp.gmail.com";
		
				Properties Properties = System.getProperties();
				System.out.println("properties"+Properties);
			
				Properties.put("mail.smtp.host", host);
				Properties.put("mail.smtp.port","465");
				Properties.put("mail.smtp.ssl.enable","true");
				Properties.put("mail.smtp.auth","true");
		
				Session mailsession =Session.getDefaultInstance(Properties,new Authenticator()
				{
					@Override
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication("pumbhadiyasahil@gmail.com","tnpkuihbesjbayad");
					}
				
				});
		
				mailsession.setDebug(true);
				
				MimeMessage m = new MimeMessage(mailsession);
				
				
				m.setFrom(from);
				
				m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
				
				m.setSubject(subject);
				
				m.setText(message);
				
				Transport.send(m);
				
				System.out.println("sussec.........");
				request.getRequestDispatcher("issuelist.jsp").include(request,response);
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
				


		


%>


</body>
</html>