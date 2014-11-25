package technologyBusiness;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import com.googlecode.objectify.ObjectifyService;

import technologyBusiness.Business;

@SuppressWarnings("serial")
public class BusinessPersoInfoServlet extends HttpServlet {
	
	String errormsg = "";
	static
	{
		ObjectifyService.reset();
		ObjectifyService.register(Business.class);
	}
	public void doGet( HttpServletRequest req, HttpServletResponse
			resp ) throws IOException, ServletException {
		req.setAttribute("error_message", "cool "+this.errormsg);
			this.getServletContext().getRequestDispatcher("/WEB-INF/TecBizPages/Employers/Businesses/newBusinessPersoInfo.jsp").forward( req, resp);
			
	}

	public void doPost( HttpServletRequest req, HttpServletResponse
			resp ) throws IOException, ServletException {
		long contact = 0;
		String name="",addr="",cat="",datecreated="",desc="",city="",country="";
		try{
			 name = req.getParameter("bname");
			 addr = req.getParameter("addr");
			 cat = req.getParameter("cat");
			 datecreated = req.getParameter("dtcreated");
			 desc = req.getParameter("desc");
			 city = req.getParameter("cty");
		     contact = (long) Long.parseLong(req.getParameter("contact"));
			 String owner = req.getParameter("business_owner");
			 country = req.getParameter("country");
		
				Business biz = new Business(new String[]{name,addr,cat,datecreated,desc,city,""+contact,country});
				biz.setBusinessOwner(owner);
				biz.setBusiness();
			  //this.getServletContext().getRequestDispatcher("/WEB-INF/TecBizPages/Employers/Businesses/newBusinessPersoInfo.jsp").forward( req, resp);
				resp.sendRedirect("businesses"); 
			}
			catch(NumberFormatException nfex)
			{
				nfex.printStackTrace();
			//	Log.debug("Number FormatException", "Exception: "+nfex.getMessage());
				req.setAttribute("error_message", "Error: "+nfex);
				this.errormsg = nfex.getMessage();
				resp.sendRedirect("newBusinessPersoInfo"); 
			//	resp.sendRedirect("businesses");
			}
		catch(Exception ex)
		{
			System.out.println("Error: "+ex.getMessage());
			ex.printStackTrace();
			resp.sendRedirect("newBusinessPersoInfo");
		}
		
	}


}