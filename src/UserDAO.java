import java.io.IOException;
import java.sql.*;

//import com.sun.jdi.connect.spi.Connection;

public class UserDAO {
	
	public User getUserCredentials(String userName) throws IOException, SQLException {
		
		final Connection conn = DatabaseConnection.getConnection();
        PreparedStatement statement = null;
        User user = null;
        String sql = "SELECT * FROM users WHERE username = ?";
        
        
        try {
        	
        	statement = conn.prepareStatement(sql);
	        statement.setString(1, userName);
	        ResultSet result = statement.executeQuery();
	        if (result.next()) {
	        	user = new User();
	        	user.setId(result.getInt("u_id"));
	        	user.setUserName(result.getString("username"));
	        	user.setLastName(result.getString("u_lname"));
				user.setFirstName(result.getString("u_fname"));
				user.setCompany(result.getString("u_company"));
				user.setPhoneNumber(result.getString("u_phonenumber"));
				user.setPassword(result.getString("u_password"));
				user.setEmail(result.getString("u_email"));
	        }	
        } catch (SQLException e) {
        	e.printStackTrace();
		} 
        finally {
	    	statement.close();
	    }
        
        return user;
    }
       
		
	
	public boolean registerUser(User user) throws SQLException {
		
		final Connection conn = DatabaseConnection.getConnection();
        PreparedStatement statement = null;
        String sql = "INSERT INTO users (username, u_fname, u_lname, u_email, u_company, u_phonenumber, u_password) VALUES (?, ?, ?, ?, ?, ?, ?)";
        boolean insertSuccess = false;
		        
	        try {
	        	
	        	statement = conn.prepareStatement(sql);
		        statement.setString(1, user.getUserName());
		        statement.setString(2, user.getFirstName());
		        statement.setString(3, user.getLastName());
		        statement.setString(4, user.getEmail());
		        statement.setString(5, user.getCompany());
		        statement.setString(6, user.getPhoneNumber());
		        statement.setString(7, user.getPassword());
		        
		        int rowsInserted = statement.executeUpdate();
		        
		        if (rowsInserted == 0) {
		        	System.out.println("There was a problem inserting the row for user name " + user.getUserName());
		        }
		        else {
		        	insertSuccess = true;
		        	System.out.println("Successfully inserted new user " + user.getUserName());
		        }
		        
		    } catch (SQLException e) {
		        	e.printStackTrace();
			
		    } finally {
		    	statement.close();
		    }
	        
		    return insertSuccess;
		
	}
	
	public boolean updatePassword(User user, String newPassword) throws SQLException {
        
        final Connection conn = DatabaseConnection.getConnection();
        PreparedStatement statement = null;
        String sql = "update users set u_password = ? where u_id = ?;";
        boolean updateSuccess = false;

        try {
        	
        	statement = conn.prepareStatement(sql);
	        statement.setString(1, newPassword);
	        statement.setInt(2, user.getId());
	        
	        int rowsUpdated = statement.executeUpdate();
	        
	        if (rowsUpdated == 0) {
	        	System.out.println("There was a problem updating the password " + user.getUserName());
	        }
	        else {
	        	updateSuccess = true;
	        	System.out.println("Successfully updated password for " + user.getUserName());
	        }
	        
	    } catch (SQLException e) {
	        	e.printStackTrace();
		
	    } finally {
	    	statement.close();
	    	
	    }
        
	    return updateSuccess;
       
	};
	

}
