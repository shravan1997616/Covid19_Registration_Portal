<%@page import="Project.Conn"%>
<%@page import="Project.SendMail" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*,javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>
<%
	String u1=request.getParameter("name");
	String u2=request.getParameter("email");
	String u3=request.getParameter("id");
	String u4=request.getParameter("district");
	
	
	try{
		Connection con = Conn.getCon();
		Statement st = con.createStatement();
		st.executeUpdate("insert into bihar values('"+u1+"','"+u2+"','"+u3+"','"+u4+"')");
		
		SendMail ob = new SendMail();
		ob.sendMail(u1,u2,u3,u4);
		//response.sendRedirect("adminHome.jsp");
	}catch(Exception e){
		response.sendRedirect("errar.html");
	}
	
	
%>
<html>
	<head>
		<title>COVID19</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<style>
			body{
				padding: 8em 0 9em 0;
				background-color: blue ;
				background-attachment: fixed;
				text-align: center;
				position: relative;	
			}
			
		</style>
	</head>
	<body>
		<h3>Success fully inserted data </h3>
		<center><h1><a href="bihar.html">Back</a></h1></center>
	</body>
</html>
