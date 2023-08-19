<%@page import="Project.UserLogin"%>
<%
	String username1=request.getParameter("username");
	String password1=request.getParameter("password");
	
	UserLogin obj = new UserLogin();
	boolean ans = obj.open(username1, password1);
	
	if(ans){
		response.sendRedirect("public.html");
	}else{
		response.sendRedirect("errorUserLogin.html");
	}  
%>
