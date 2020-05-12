

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		
		
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		
		UserDAO userDAO = new UserDAO();
		String message;
	
		
		try {
            User user = userDAO.getUserCredentials(userName);
            String destPage = "Login.jsp";
             
            
            if (user == null) {  // user not found in database
            	message = "Not a registered user - Click <a href=\"Register.jsp\">Sign Up</a> to register";
            	request.setAttribute("errorMessage", message);
            }
            else  {
            	
            	if (!(user.getUserName().equals(userName))) {
            		message = "Not a registered user - Click <a href=\"Register.jsp\">Sign Up</a> to register";
            		request.setAttribute("errorMessage", message);
            	}
            	
            	else if  (user.hasInvalidPassword(password)){
            		
            		message = "Invalid password - Click <a href=\"ForgotPassword.jsp\">here</a> to reset your password";
            		request.setAttribute("errorMessage", message);
            	}
            	else {
            		HttpSession session = request.getSession();
                	session.setAttribute("user", user);
            		session.setAttribute("firstName", user.getFirstName());
            		session.setAttribute("username", user.getUserName());
            		destPage = "HomePage.jsp";
            				
            	} 
            	
            }
            
             
            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);
            
             
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
		
	}

}
