package technologyBusiness;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class DashboardServlet extends HttpServlet {
	public void doGet( HttpServletRequest req, HttpServletResponse
			resp ) throws IOException, ServletException {
			this.getServletContext().getRequestDispatcher("/WEB-INF/TecBizPages/Employers/Reports/dashboard.jsp").forward( req, resp);
			}

}
