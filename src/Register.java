

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		String firstName = request.getParameter("firstname");
		String lastName= request.getParameter("lastname");
		String company = request.getParameter("company");
		String phoneNumber = request.getParameter("phonenumber");
		String email = request.getParameter("email");
		
		
		UserDAO userDAO = new UserDAO();
		User newUser = new User();
		newUser.setUserName(userName);
		newUser.setPassword(password);
		newUser.setFirstName(firstName);
		newUser.setLastName(lastName);
		newUser.setCompany(company);
		newUser.setPhoneNumber(phoneNumber);
		newUser.setEmail(email);
		
		String message;
		boolean registered;
	
		
		try {
            User user = userDAO.getUserCredentials(userName);
            String destPage = "Register.jsp"; 
            
            
            if (user != null) {  // user is found in database
            	message = "User is already registered.  Click <a href=\"Login.jsp\">here</a> to login";
            	request.setAttribute("errorMessage", message);
            }
            else  {
            	
            	// register new user
            	registered = userDAO.registerUser(newUser);
            	
            	if (registered) {
            		message = "You are now registered " + firstName + "! Click <a href=\"Login.jsp\">here</a> to login";
            	}
            	else {
            		message = "There was an error registering your user data";
            	}
            	
            	request.setAttribute("errorMessage", message);
            }	
             
            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);
             
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
	}

}
