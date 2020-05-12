

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ResetPassword
 */
@WebServlet("/ResetPassword")
public class ResetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResetPassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name = request.getParameter("username");
		String defaultPage = "ForgotPassword.jsp";
		String nextPage = "ChangePassword.jsp";
		
		UserDAO userDAO = new UserDAO();
		String message;
		
		try {
			User user = userDAO.getUserCredentials(name);
			
			if (user != null) {
				request.getSession().setAttribute("resetUser", user);
		          
				RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
	            dispatcher.forward(request, response);
			}
			else {
				message =  name + " is not registered.  Click <a href=\"Register.jsp\">Sign Up</a> to register";
				
				request.setAttribute("errorMessage", message);
				
	            RequestDispatcher dispatcher = request.getRequestDispatcher(defaultPage);
	            dispatcher.forward(request, response);
			}
		} catch (Exception e) {
			  System.out.println(e.getMessage());
		}
	}
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		User user = (User) request.getSession().getAttribute("resetUser");
		String newPassword = request.getParameter("password");
		
		
		// create new data access object
		UserDAO userDAO = new UserDAO();
		
		String message;
	
		try {
			
			String destPage = "ChangePassword.jsp";
			
            	    	
        	if (userDAO.updatePassword(user, newPassword)) {
        		message = "Password successfully updated.  Click <a href=\"Login.jsp\">here</a> to login";
        	}
        	else {
        		message = "There was a problem updating the password";
        	}

            request.setAttribute("errorMessage", message);
             
            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);
             
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } 
		
		
	}

}
