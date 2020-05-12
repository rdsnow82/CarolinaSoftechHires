

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ForumComment
 */
@WebServlet("/ForumComment")
public class ForumComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForumComment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String commentBody = request.getParameter("comment");
		int postid = Integer.parseInt(request.getParameter("postid"));
		int userid = Integer.parseInt(request.getParameter("userid"));
		
		
		CommentDAO commentDAO = new CommentDAO();
		Comment comment = new Comment();
		comment.setPost_id(postid);
		comment.setUser_id(userid);
		comment.setBody(commentBody);
		
		
		String message;
		boolean commentCreated = false;
		String destPage = "OpenForum.jsp";
	
		
		try {
            commentCreated = commentDAO.createComment(comment);
            
            
            if (!commentCreated) {  
            	message = "There was an error creating the comment";
            	request.setAttribute("errorMessage", message);
            }
          
             
            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);
             
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
	
	}

}
