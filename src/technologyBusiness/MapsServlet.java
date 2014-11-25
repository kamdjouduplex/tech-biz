package technologyBusiness;

import java.io.IOException;
import java.util.List;

import static com.googlecode.objectify.ObjectifyService.ofy;



import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;
import com.googlecode.objectify.ObjectifyService;

@SuppressWarnings("serial")
public class MapsServlet extends HttpServlet {
	
	static
	{
		ObjectifyService.reset();
		ObjectifyService.register(Business.class);
		ObjectifyService.register(Employer.class);
		
	}
	
	public void doGet( HttpServletRequest req, HttpServletResponse
			resp ) throws IOException, ServletException {
			
			UserService userService = UserServiceFactory.getUserService();
			User user = userService.getCurrentUser();
			
			List<Employee> emp = ofy().load().type(Employee.class).filter("emp_employer", user.getEmail()).list();
		    List<Business> biz = ofy().load().type(Business.class).filter("biz_owner", user.getEmail()).list(); //load the employee entities and make them available to the jsp
			req.setAttribute("employees", emp);
			req.setAttribute("business", biz);
	
			this.getServletContext().getRequestDispatcher("/WEB-INF/TecBizPages/Employers/maps.jsp").forward( req, resp);
	}

}