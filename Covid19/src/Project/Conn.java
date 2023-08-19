package Project;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conn {
	public static Connection getCon() {
		try {
			//Class.forName("com.mysql.cj.jdbc.Driver");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql:///covid19","root","root");
			return con;
		}catch(Exception e) {
			System.out.println(e);
			return null;
		}
		
	}
}
