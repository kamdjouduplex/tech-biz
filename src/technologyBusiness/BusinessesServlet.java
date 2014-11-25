package technologyBusiness;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.google.appengine.api.users.UserService;
import com.googlecode.objectify.ObjectifyService;
import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserServiceFactory;
@SuppressWarnings("serial")

public class BusinessesServlet extends HttpServlet {
	static
	{
		ObjectifyService.reset();
		ObjectifyService.register(Business.class);
		ObjectifyService.register(Employer.class);
		
	}
	public void doGet( HttpServletRequest req, HttpServletResponse
			resp ) throws IOException, ServletException {
		
	//	Employer emp = ofy().load().type(Employer.class).first().now();
		UserService userService = UserServiceFactory.getUserService();
		User user = userService.getCurrentUser();
		//Employer employer = new Employer();
		try{
		if(user != null){
			String owner = user.getEmail();
			
		List<Business> myBiz = ofy().load().type(Business.class).filter("biz_owner",owner).list();
		req.setAttribute("mybusinesses", myBiz);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/TecBizPages/Employers/Businesses/businesses.jsp?param='test'").forward( req, resp);
		}
		else
		{
			this.getServletContext().getRequestDispatcher("/WEB-INF/TecBizPages/home.jsp").forward( req, resp);
		}
		}
		catch(Exception e)
		{
			System.out.println("Listing Businesses Error: "+e.getMessage());
		}
	}

}