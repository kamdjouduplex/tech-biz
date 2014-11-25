package technologyBusiness;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;
import com.googlecode.objectify.ObjectifyService;

@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet {
	
static
	
	{
		ObjectifyService.register(Employee.class);
		ObjectifyService.register(Employer.class);
	}
	
	public void doGet( HttpServletRequest req, HttpServletResponse
			resp ) throws IOException, ServletException {
			this.getServletContext().getRequestDispatcher("/WEB-INF/TecBizPages/login.jsp").forward( req, resp);
			System.out.print("Working Servlet");
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		UserService userService = UserServiceFactory.getUserService();
		User user = userService.getCurrentUser();
		
		String name;//name representing the email of client
		String id; //id representing the password
		String erole; //role of user who logins
		
		name= req.getParameter("name");
		id = req.getParameter("password");
		erole = req.getParameter("role");
		Employer employer ;//= null;
		Employee employee;
		employer = ofy().load().type(Employer.class).filter("email", name).filter("password", id).limit(1).first().now();//.filter("password", p_hash).first().now();
		employee = ofy().load().type(Employee.class).filter("email", name).filter("emp_pass",id).first().now();//.filter("emp_pass",p_hash).first().now();
		//test champ: ancestor(KeyFactory.createKey("employer", "employer")).filterKey("employer", name)
	//	employer = ofy().load().type(Employer.class).fi.first().now();
		//authenticate
		if(user != null && (employer != null | employee != null) ) //we are logged in with Google and we have a valid user
		{
			if(erole.contentEquals("employer"))
			{
				if(!employer.equals(null) && employer.getStatus() == 1){
				this.getServletContext().getRequestDispatcher("/WEB-INF/TecBizPages/Employers/Reports/dashboard.jsp").forward( req, res);
				/*System.out.println("Employer Email: "+employer.getEmail()+"\nEmployer Full Name: "+employer.getName()+
						"\nEmployer Password: "+employer.getPassword()+"\nEmployee Real Password: "+id);*/
				}
				else
				{
					//wrong credentials , redirect to login
				this.getServletContext().getRequestDispatcher("/WEB-INF/TecBizPages/login.jsp").forward( req, res);
				}
				
			}
			else
			{
				//la page de l'employee
				if(employee != null)
				{
					this.getServletContext().getRequestDispatcher("/WEB-INF/TecBizPages/Employees/pendingReports.jsp").forward( req, res);
					/*System.out.println("Employee Email: "+employee.getEmployeeEmail()+"\nEmployee Full Name: "+employee.getEmployeeName()+
							"\nEmployee Password: "+employee.getEmployeePassword()+"\nEmployee Real Password: "+id);*/
				}
				else
					this.getServletContext().getRequestDispatcher("/WEB-INF/TecBizPages/login.jsp").forward( req, res);
			}
		}
		else
		{
			//System.out.println(name+id+erole);
		}
			
		
		
	}
}