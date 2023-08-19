<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*,javax.mail.*" %>
    <%@page import="javax.mail.internet.*" %>
    <%@page import="Project.Conn" %>
    <%@page import="java.sql.*"%>
    <%@page import="java.util.Random" %>
<%
	String result;
	final String to=request.getParameter("email");
	final String subject="OTP:";
	Random rand = new Random();
	String otp = String.format("%04d", rand.nextInt(10000));
	
	try{
		Connection con = Conn.getCon();
		Statement st = con.createStatement();
		st.executeUpdate("insert into mailsend values('"+to+"','"+otp+"')");
		
	}catch(Exception e){
		out.println(e);
	}
	
	final String from = "shravan1997616@gmail.com";
	final String pass = "Shravan@9525";
	
	String host = "smtp.gmail.com";
	
	Properties props = new Properties();
	
	props.put("mail.smtp.host",host);
	props.put("mail.transport.protocol","smtp");
	props.put("mail.smtp.auth","true");
	props.put("mail.smtp.starttls.enable","true");
	props.put("mail.user",from);
	props.put("mail.password",pass);
	props.put("mail.port","465");
	
	Session mailSession = Session.getInstance(props,new javax.mail.Authenticator(){
		protected PasswordAuthentication getPasswordAuthentication(){
			return new PasswordAuthentication(from,pass);
		}
	});
	
	try{
		MimeMessage message = new MimeMessage(mailSession);
		message.setFrom(new InternetAddress(from));
		message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
		message.setSubject(subject);
		message.setText(otp);
		Transport.send(message);
		result = "message send successfull";
		response.sendRedirect("userPutOtp.html");
	}catch(MessagingException mex){
		mex.printStackTrace();
		result ="Error:unable to send message.....";
	}
%>

	


	

