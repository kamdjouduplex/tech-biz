package technologyBusiness;

import static com.googlecode.objectify.ObjectifyService.ofy;

import com.googlecode.objectify.Key;
import com.googlecode.objectify.ObjectifyService;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

@Entity
@Index
public class Business
{
	@Id Long biz_id; 
	String biz_name; //the big business name as seen at the address.
	String biz_address; // //refined location of the business
	String biz_category; // in which category this type of business falls
	String biz_created_date; //when the business was created
	String biz_description; // what the business is all about
	String biz_city; //where the business in question is located
	long biz_contact; //used for the phone contact of the business in question
	String biz_owner; //the owner of a given business. by email
	String biz_country;
	//Objectify's constructor constraint
	public Business(){
		
	}
	
	public Business(String... details)
	{
		//set a new business' details
		this.biz_name = details[0];
		this.biz_address = details[1];
		this.biz_category = details[2];
		this.biz_created_date = details[3];
		this.biz_description = details[4];
		this.biz_city = details[5];
		this.biz_contact = Long.parseLong(details[6]);
		this.biz_country = details[7];
	/*	try{
			this.biz_owner = details[7];
		}
		catch(NullPointerException np)
		{
			np.printStackTrace();
			System.out.println(np.getMessage());
		}*/
		
	}
	
	public void setBusiness()
	{
		//persists this business's details in the datastore
		ObjectifyService.reset();
		ofy().save().entities(this).now();
	}
	
	public Business getBusiness()
	{
		Key<Business> biz_Key = Key.create(Business.class, "biz_id");
		Business business = ofy().load().type(Business.class).parent(Employer.class).id("biz_name").now();
		//List<Business> bus = (List<Business>) ofy().load().type(Business.class).parent(Employer.class).id("biz_name").now();
		//bus.
		// = ofy().load().key(biz_Key).now();
		//String ak = "follow, fool";
		
		return business;
	}
	
	public void setBusinessOwner(String owner)
	{
		this.biz_owner = owner;
	}
	
	public String getBizName()
	{
		return biz_name;
	}
	
	public String getBizCategory()
	{
		return biz_category;
	}
	
	public String getBizDate()
	{
		return biz_created_date;
	}
	
	public String getBizCity()
	{
		return biz_city;
	}
	
	public String getBusinessOwner()
	{
		return this.biz_owner;
		
	}
	
	public String getBizCountry()
	{
		return this.biz_country;
	}
	
	public void deleteBusiness()
	{
		ofy().delete().type(Business.class).id(this.biz_id).now();
	//	ofy().delete().entity(this).now();
		
	}
	
}

