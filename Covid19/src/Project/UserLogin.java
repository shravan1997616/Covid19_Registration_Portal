package Project;
import java.sql.*;
//import java.util.*;

public class UserLogin {

	public boolean open(String a ,String b) {
		boolean ans=false;
		try{
			Connection con = Conn.getCon();
			Statement st = con.createStatement();
			String q = "select *from users where id='"+a+"' and pass='"+b+"'";
			ResultSet rs = st.executeQuery(q);
			if(rs.next()){
				ans = true;
			}
			
		}catch(Exception e){
			ans = false;
		} 
		return ans;
	}
	/*
	 * public static void main(String afr[]) { Scanner s = new Scanner(System.in);
	 * String a =s.next(); String b = s.next(); System.out.println(open(a,b));
	 * 
	 * }
	 */

}
