<%@page import="Project.Conn"%>
<%@page import="java.sql.*"%>
<%
	String name=request.getParameter("name");
	String userId=request.getParameter("userId");
	String pasword=request.getParameter("pasword");
	try{
		Connection con = Conn.getCon();
		Statement st = con.createStatement();
		st.executeUpdate("insert into users values('"+name+"','"+userId+"','"+pasword+"')");
		response.sendRedirect("adminHome.jsp");
	}catch(Exception e){
		out.println(e);
	}
%>
