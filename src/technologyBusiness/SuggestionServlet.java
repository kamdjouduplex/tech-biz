package technologyBusiness;

import java.io.IOException;
import java.net.InetAddress;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class SuggestionServlet extends HttpServlet {
	public void doGet( HttpServletRequest req, HttpServletResponse
			resp ) throws IOException, ServletException {
			this.getServletContext().getRequestDispatcher("/WEB-INF/TecBizPages/others pages/suggestion.jsp").forward( req, resp);
			}
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException
	{
		//process suggestion request
		String subject="Suggestion Mail";
		String country = (String) req.getParameter("sender_country");
		String body = (String) req.getParameter("sender_suggestion") + "\n country: "+country;
		String from = (String) req.getParameter("sender_email");
		String to="larryakah@gmail.com"; 
		//initialisation of the javaMail API
		Properties props = new Properties();
		Session session =Session.getDefaultInstance(props, null);
		
		Message msg = new MimeMessage(session);
		try {
			msg.addRecipients(Message.RecipientType.TO, 
			new Address[]{new InternetAddress(to,"Larry Akah"), new InternetAddress("tony14pro@gmail","Tony Duplex")});
			msg.setFrom(new InternetAddress(from,"visitor"));
			msg.setSubject(subject);
			msg.setText(body);
			msg.setDescription("mail is sent to offer suggestion about the app in question");
			Transport.send(msg);
			resp.sendRedirect("login");
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch(NullPointerException np)
		{
			np.printStackTrace();
		}
		
	}

}