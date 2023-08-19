package Project;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;



public class MatchOTP {
	public boolean open(String a) {
		boolean ans=false;
		try{
			Connection con = Conn.getCon();
			Statement st = con.createStatement();
			String q = "select *from mailsend where otp='"+a+"'";
			
			ResultSet rs = st.executeQuery(q);
			if(rs.next()){
				
				String mail = rs.getString("mail");
				String otp = rs.getString("otp");
				
				String qr = "select *from users where id='"+mail+"'";
				ResultSet r = st.executeQuery(qr);
				if(r.next()) {
					String mail2 = r.getString("id");
					System.out.println(mail+"  "+mail2+" "+otp+" "+a);
					if(a.equalsIgnoreCase(otp) && mail.equalsIgnoreCase(mail2)) {
						ans = true;
						System.out.println("shravankk");
					}
				}
				
			}
			
		}catch(Exception e){
			ans = false;
		} 
		return ans;
	}

}
