package technologyBusiness;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.googlecode.objectify.ObjectifyService;

@SuppressWarnings("serial")
public class EmployeePersoInfoServlet extends HttpServlet {
	static
	{
	//	try{
		ObjectifyService.register(Employee.class);
	}
	public void doGet( HttpServletRequest req, HttpServletResponse
			resp ) throws IOException, ServletException {
			this.getServletContext().getRequestDispatcher("/WEB-INF/TecBizPages/Employers/Employees/newEmployeePersoInfo.jsp").forward( req, resp);
			}
	
	public void doPost( HttpServletRequest req, HttpServletResponse
			resp ) throws IOException, ServletException {
			String name = req.getParameter("ename");
			String pass = req.getParameter("epwd");
			String email = req.getParameter("eemail");
			String addr = req.getParameter("eaddr");
			String em_bday = req.getParameter("ebday");
			String emp_emp = req.getParameter("parent_employer"); //the employee's employer
			long tel = Long.parseLong(req.getParameter("etel"));
			String emp_biz = req.getParameter("ebiz");
			String ecountry = req.getParameter("ecountry"); //the employee's country of Origin
		//	String p_hash = pass;
			/*try {
				MessageDigest md = MessageDigest.getInstance("SHA-1");
				 p_hash  = md.digest(pass.getBytes()).toString();
				 
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}*/
			//set employee
			try{
			Employee employee = new Employee(name,addr,email,em_bday,pass,tel, emp_emp, ecountry );
			//employee.setEmployer(); //set the employee's employer
			employee.setEmployeeBusiness(emp_biz);
			employee.setEmployee(); //save the data
			
			resp.sendRedirect("employees"); 
			}
			catch(Exception e)
			{
				System.out.print(e.getMessage());
			}
		}

}
