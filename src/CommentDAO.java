import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

public class CommentDAO {
	
		// returns an array list of all comments for a given post_id
		public ArrayList<Comment> getAllComments(int postID) throws SQLException {
			
			ArrayList<Comment> commentList = new ArrayList<>();
			
			final Connection conn = DatabaseConnection.getConnection();
	        PreparedStatement statement = null;
	        
	        String sql = "SELECT comment_id, f_id, users.u_id, username, u_fname, u_lname, u_company, comment, time_modified\n" + 
    		"FROM comments\n" + 
    		"INNER JOIN users ON comments.u_id=users.u_id where f_id = ? ORDER BY time_modified DESC";
	        		
	       
	    	try {
		    	statement = conn.prepareStatement(sql);
		    	statement.setInt(1, postID);
		        ResultSet result = statement.executeQuery();
		        while (result.next()) {
		        	Comment c = new Comment();
		        	c.setComment_id(result.getInt("comment_id"));
		        	c.setPost_id(result.getInt("f_id"));
		        	c.setUser_id(result.getInt("u_id"));
		        	c.setUser_name(result.getString("username"));
		        	c.setFirstName(result.getString("u_fname"));
		        	c.setLastName(result.getString("u_lname"));
		        	c.setUserCompany(result.getString("u_company"));
		        	c.setBody(result.getString("comment"));
		        	c.setTimestamp(new Date(result.getTimestamp("time_modified").getTime()));

		        	commentList.add(c);
		        }  

			} 
	    	catch (SQLException e) {
	    		e.printStackTrace();
	    	}  finally {
		    	statement.close();
		    }
	    
			
			return commentList;
		}
		
		public boolean createComment(Comment comment) throws SQLException {

			final Connection conn = DatabaseConnection.getConnection();
	        PreparedStatement statement = null;
	        String sql = "INSERT into comments (f_id, u_id, comment, time_modified) values (?, ?, ?, ?)";
	        boolean success = false;
	        Date currentDate = new Date();
	        Timestamp currentTimestamp = new Timestamp(currentDate.getTime());
	        comment.setTimestamp(currentDate);
	        
	        
			try {
	    
	        	statement = conn.prepareStatement(sql);
		        statement.setInt(1, comment.getPost_id());
		        statement.setInt(2, comment.getUser_id());
		        statement.setString(3, comment.getBody());
		        statement.setTimestamp(4, currentTimestamp);

		        
		        int rowsInserted = statement.executeUpdate();
		        
		        if (rowsInserted > 0) {
		        	success = true;
		        	System.out.println("Successfully added comment");
		        }
		        else {
		        	success = false;
		        	System.out.println("There was a problem inserting the comment");
	        }
		        
		        
	        } catch (SQLException e) {
	        	e.printStackTrace();
			}  finally {
		    	statement.close();
		    }
			
			return success;
	        		
		}
	
}
