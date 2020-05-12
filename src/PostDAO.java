import java.sql.*;
import java.util.ArrayList;
import java.util.Date;

public class PostDAO {
	
	// returns an array list of all posts
	public ArrayList<Post> getAllPosts() throws SQLException {
		
		ArrayList<Post> postList = new ArrayList<>();
		
		final Connection conn = DatabaseConnection.getConnection();
        PreparedStatement statement = null;
        String sql = "SELECT f_id, users.u_id, username, u_fname, u_lname, u_company, f_sub, f_body, time_modified\n" + 
        		"FROM forum\n" + 
        		"INNER JOIN users ON forum.u_id=users.u_id ORDER BY time_modified DESC";
        		
       
    	try {
			
	    	statement = conn.prepareStatement(sql);
	        ResultSet result = statement.executeQuery();
	        while (result.next()) {
	        	Post p = new Post();
	        	p.setPost_id(result.getInt("f_id"));
	        	p.setUser_id(result.getInt("u_id"));
	        	p.setUser_name(result.getString("username"));
	        	p.setFirstName(result.getString("u_fname"));
	        	p.setLastName(result.getString("u_lname"));
	        	p.setUserCompany(result.getString("u_company"));
	        	p.setTitle(result.getString("f_sub"));
	        	p.setBody(result.getString("f_body"));
	        	p.setTimestamp(new Date(result.getTimestamp("time_modified").getTime()));
	        	postList.add(p);
	        }  

		} 
    	catch (SQLException e) {
    		e.printStackTrace();
    	}  finally {
	    	statement.close();
	    }
	
		
		return postList;
	}
	
	public boolean createPost(Post post) throws SQLException {
		
		final Connection conn = DatabaseConnection.getConnection();
        PreparedStatement statement = null;
        String sql = "INSERT into forum (f_sub, f_body, u_id, time_modified) values (?, ?, ?, ?)";
        boolean success = false;
        Date currentDate = new Date();
        Timestamp currentTimestamp = new Timestamp(currentDate.getTime());
        post.setTimestamp(currentDate);
        
		try {
        	
        	statement = conn.prepareStatement(sql);
        	statement.setString(1, post.getTitle());
        	statement.setString(2, post.getBody());
	        statement.setInt(3, post.getUser_id());
	        statement.setTimestamp(4, currentTimestamp);
	        
	        
	        int rowsInserted = statement.executeUpdate();
	        
	        if (rowsInserted > 0) {
	        	success = true;
	        	System.out.println("Successfully added post");
	        	
	        }
	        else {
	        	System.out.println("There was a problem inserting the post");
	        }
	        
	        
	        } catch (SQLException e) {
	        	e.printStackTrace();
			} 
			 finally {
			    	statement.close();
			 }
    
		
		return success;
        		
	}
}
