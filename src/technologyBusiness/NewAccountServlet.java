package technologyBusiness;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.googlecode.objectify.ObjectifyService;

@SuppressWarnings("serial")
public class NewAccountServlet extends HttpServlet {
	// Enregistrement de la classe persistable auprès d'Objectify
	static {        
		ObjectifyService.register(Employer.class);    
	}
	
	public void doGet( HttpServletRequest req, HttpServletResponse
			resp ) throws IOException, ServletException {
		 
		
			this.getServletContext().getRequestDispatcher("/WEB-INF/TecBizPages/Employers/newAccount.jsp").forward( req, resp);
			}
	public void doPost( HttpServletRequest req, HttpServletResponse
			resp ) throws IOException, ServletException {
			String name = req.getParameter("fname");
			String pass = req.getParameter("password");
			String email = req.getParameter("email");
			String addr = req.getParameter("address");
			int tel = Integer.parseInt(req.getParameter("phone"));
			int status = 1;
			//int te = (int) req.getParameter("phone");
		//	System.out.println(name+pass+email+addr+tel);
			//save employer registration details
			Employer emp = new Employer(name, addr,email,tel, pass,status);
			emp.saveDetails();
			
			resp.sendRedirect("dashboard"); 
	}

}