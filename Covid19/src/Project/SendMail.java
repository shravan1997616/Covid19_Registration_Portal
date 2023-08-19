package Project;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
public class SendMail {
	public static void sendMail(String name,String mail,String adhar,String dis) {
			String result;
		
		   
		  String subject="Covid19 Vaccine"; 
		  String mass="Successfully...";
		  mass +=name;
		  mass +=" ";
		  mass +=adhar;
		  mass+=dis;
		
		
		final String from = "shravan1997616@gmail.com";
		final String pass = "Kumar@9525";
		
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
			message.addRecipient(Message.RecipientType.TO,new InternetAddress(mail));
			message.setSubject(subject);
			message.setText(mass);
			Transport.send(message);
			result = "message send successfull";
		}catch(MessagingException mex){
			mex.printStackTrace();
			result ="Error:unable to send message.....";
		}
	}

}
