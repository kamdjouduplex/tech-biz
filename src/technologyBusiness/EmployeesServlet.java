package technologyBusiness;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.googlecode.objectify.ObjectifyService;
import com.google.appengine.api.users.UserService;
import com.googlecode.objectify.ObjectifyService;
import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

@SuppressWarnings("serial")
public class EmployeesServlet extends HttpServlet {
	static
	
	{
		ObjectifyService.register(Employee.class);
	}
	
	public void doGet( HttpServletRequest req, HttpServletResponse
			resp ) throws IOException, ServletException {
		
		UserService userService = UserServiceFactory.getUserService();
		User user = userService.getCurrentUser();
		
		if(user != null){
			String owner = user.getEmail();
			
		List<Employee> emp = ofy().load().type(Employee.class).filter("emp_employer", owner).list(); //load the employee entities and make them available to the jsp
		req.setAttribute("employees", emp);
			this.getServletContext().getRequestDispatcher("/WEB-INF/TecBizPages/Employers/Employees/employees.jsp").forward( req, resp);
			}
	}
}