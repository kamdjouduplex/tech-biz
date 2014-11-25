package technologyBusiness;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.util.Date;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

@Entity
public class Forms {
	
	@Index
   @Id  Long formID;
	String formName;// the name of the form
	String data; //the entire form object as a string representation
	String owner; //owner who created the form
	String date; //date created
	String formLink; //a clickable link to the form's data
	String formDestination;// employee to whom the form is destined
	
	private Forms()
	{	}
	
	public Forms(String formData, String owner, String formname)
	{
		this.data = formData;
		this.owner = owner;
		this.date = new Date().toString();
		this.formName = formname;
	}
	
	public void saveForm()
	{
		ofy().save().entity(this).now();
	}
	
	public String getFormLink()
	{
		return this.formLink;
	}
	
	private void setFormLink(String ... linkParams)
	{
		this.formLink = linkParams[0]+linkParams[1];
	}
	
	public String getFormName()
	{
		return this.formName;
	}
	public String getFormDate()
	{
		return this.date;
	}
	public String getForm()
	{
		return this.data;
				
	}
	public String getFormOwner()
	{
		return this.owner;
	}
	public String getFormDestination()
	{
		return this.formDestination;
	}
}
