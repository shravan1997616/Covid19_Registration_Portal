<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="Project.Conn" %>
    <%@page import="java.sql.*"%>
    
<%
	final String userID=request.getParameter("userID");
    final String newPass=request.getParameter("newPass");
	final String reNewPass=request.getParameter("ReNewPass");
	
	
	try{
		Connection con = Conn.getCon();
		Statement st = con.createStatement();
		String q = "select *from mailsend where mail='"+userID+"'";
		ResultSet rs = st.executeQuery(q);
		if(rs.next()){
			String mail = rs.getString("mail");		
			String qr = "select *from users where id='"+userID+"'";
			ResultSet r = st.executeQuery(qr);
			if(r.next()) {
				String mail2 = r.getString("id");
				if(mail.equalsIgnoreCase(mail2) && newPass.equals(reNewPass)) {

					/*...............................................................*/
					String sql = "update users set pass='"+newPass+"' where id='"+mail+"'";
					st.executeUpdate(sql);
					
					System.out.println("Shravan1"); 
					String delete = "delete from mailsend where mail='"+mail2+"'";
					st.executeUpdate(delete);
					
					String del = "delete from mailsend where mail='null'";
					st.executeUpdate(del);
				/*	...................................................................*/
					response.sendRedirect("userUpdateSucces.html");
					
				}	
			}
		}
	}catch(Exception e){
		response.sendRedirect("errorUpdatePass.html");
	}
%>
