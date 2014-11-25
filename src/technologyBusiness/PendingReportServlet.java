package technologyBusiness;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import technologyBusiness.Forms;

import com.googlecode.objectify.ObjectifyService;

@SuppressWarnings("serial")
public class PendingReportServlet extends HttpServlet {
	static
	{
		ObjectifyService.reset();
		ObjectifyService.register(Forms.class);
	}
	public void doGet( HttpServletRequest req, HttpServletResponse
			resp ) throws IOException, ServletException {
		
		List<Forms> forms = ofy().load().type(Forms.class).list();//filter("biz_owner",owner).list();
		req.setAttribute("reportforms", forms);
			this.getServletContext().getRequestDispatcher("/WEB-INF/TecBizPages/Employees/pendingReports.jsp").forward( req, resp);
			}

}