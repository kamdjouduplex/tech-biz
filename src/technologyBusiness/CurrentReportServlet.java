package technologyBusiness;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import technologyBusiness.Forms;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;
import com.googlecode.objectify.ObjectifyService;

@SuppressWarnings("serial")
public class CurrentReportServlet extends HttpServlet {
static
	
	{
		ObjectifyService.register(Forms.class);
	}
	public void doGet( HttpServletRequest req, HttpServletResponse
			resp ) throws IOException, ServletException {
		UserService userService = UserServiceFactory.getUserService();
		User user = userService.getCurrentUser();
		
		if(user != null){
			String owner = user.getEmail();
			
		List<Forms> form = ofy().load().type(Forms.class).list();//filter("emp_employer", owner).list(); //load the employee entities and make them available to the jsp
		req.setAttribute("myforms", form);
		}
			this.getServletContext().getRequestDispatcher("/WEB-INF/TecBizPages/Employees/currentReports.jsp").forward( req, resp);
			}

}