<%@page import="Project.MatchOTP"%>
<%
	String otp=request.getParameter("otp");
	
	System.out.println(otp);
	MatchOTP obj = new MatchOTP();
	boolean ans = obj.open(otp);
	
	
	if(ans){
		response.sendRedirect("userNewPassEnter.html");	
	}else{
		response.sendRedirect("errorUpdatePass.html");
		
	}  
%>
