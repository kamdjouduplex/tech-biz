package technologyBusiness;
import java.text.SimpleDateFormat;

import com.google.appengine.api.datastore.KeyFactory;
import com.googlecode.objectify.Key;
import com.googlecode.objectify.annotation.*;

import static com.googlecode.objectify.ObjectifyService.ofy;


@Entity
@Index
public class Employer {
	@Id String email;
	@Unindex String fname;
	String password,addr;
	int tel,st;
//	@Parent com.google.appengine.api.datastore.Key employer;

	
	@SuppressWarnings("unused")
	public Employer(){}
	
	public Employer(String fname, String addr, String email, int tel, String pass, int status)
	{
		this.fname = fname;
		this.addr = addr;
		this.email = email;
		this.tel = tel;
		this.password = pass;
		this.st = status;
	//	this.employer = KeyFactory.createKey("employer", "employer");
	}
	
	public void saveDetails()
	{
		//save all field data to the datastore;
		ofy().save().entity(this).now();
	}
	
	public int getStatus()
	{
		return this.st;
	}
	
	public String getPassword()
	{
		return this.password;
	}
	
	public String getName()
	{
		return this.fname;
	}
	
	public String getEmail()
	{
		return this.email;
	}
	
}
