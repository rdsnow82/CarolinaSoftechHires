
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DatabaseConnection {

		private static Connection conn = null;
		
		
		public static void setConn(Connection conn) {
			DatabaseConnection.conn = conn;
		}

		static {
			
			// Had to add serverTimeZone config because of TimeZone bug with driver
			//String jdbcURL = "jdbc:mysql://localhost:3306/goodwill?serverTimezone=UTC#";
			String jdbcURL = "jdbc:mysql://localhost:3306/globalspirit?serverTimezone=UTC#";
	        String dbUser = "goodwill_user";
	        String dbPassword = "Goodwill20";
	        
	        try {
	        	Class.forName("com.mysql.cj.jdbc.Driver");
		    	conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
	        	
	        }
	        catch (ClassNotFoundException | SQLException e) {
	        	e.printStackTrace();
	        }       
	        
		}
		
		public static Connection getConnection() {
			return conn;
		}
		
		public void close() {
			this.close();
		}
				
				
}
