package technologyBusiness;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import technologyBusiness.Forms;
import com.googlecode.objectify.ObjectifyService;

@SuppressWarnings("serial")
public class BusinessGeoLocationServlet extends HttpServlet {
	static
	{
		ObjectifyService.reset();
		ObjectifyService.register(Forms.class);	
	}
	public void doGet( HttpServletRequest req, HttpServletResponse
			resp ) throws IOException, ServletException {
			this.getServletContext().getRequestDispatcher("/WEB-INF/TecBizPages/Employers/Forms/previewForm.jsp").forward( req, resp);
			}

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException
	{
		//creates a form entry or entity
		try{
			if(req.getParameter("formlnk") != null)
			{
				String link = req.getParameter("formlnk");
				String owner = req.getParameter("owner");
				String title = req.getParameter("ftitle");
				Forms form = new Forms(link, owner, title);
				form.saveForm();
			}
			else{
				String owner = req.getParameter("owner");
				String data = req.getParameter("formdata");
				String title = req.getParameter("ftitle");
				System.out.println("Form Name"+title);
				Forms form = new Forms(data, owner, title);
				form.saveForm();
			}
				resp.sendRedirect("formCreation"); 
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}