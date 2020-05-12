

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ForumPost
 */
@WebServlet("/ForumPost")
public class ForumPost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForumPost() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//request.getSession().
		
		PostDAO post = new PostDAO();
		CommentDAO comments = new CommentDAO();
		
		
		ArrayList<Post> postList = new ArrayList<>();
		ArrayList<Comment> commentList = new ArrayList<>();
		
		
		// call PostDAO to retrieve all posts and store in an array list of Post objects
		try {
			postList = post.getAllPosts();
			
			// for each post, retrieve any comments for the post and add to the Comments to the post object
			for (Post i: postList)
			{
				
				commentList = comments.getAllComments(i.getPost_id());
				i.setComments(commentList);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		// store the posts list in the request object with request.setAttribute to be retrieved by request.getAttribute in jsp
		request.setAttribute("postList", postList);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("OpenForum.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String postBody = request.getParameter("postbody");
		String title = request.getParameter("title");
		int userid = Integer.parseInt(request.getParameter("userid"));
		
		PostDAO postDAO = new PostDAO();
		Post post = new Post();
		post.setTitle(title);
		post.setUser_id(userid);
		post.setBody(postBody);
		
		
		
		String message;
		boolean postCreated = false;
		String destPage = "OpenForum.jsp"; 
	
		
		try {
            postCreated = postDAO.createPost(post);
            
            
            if (!postCreated) {  
            	message = "There was an error creating the post";
            	request.setAttribute("errorMessage", message);
            }
          
             
            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);
             
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
	
	
		
	}	
}
