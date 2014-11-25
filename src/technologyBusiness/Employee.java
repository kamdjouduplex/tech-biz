package technologyBusiness;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.googlecode.objectify.Key;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
import com.googlecode.objectify.annotation.Unindex;

@Entity
@Index 
public class Employee{
	@Id Long emp_id; //gooogle generates this id accordingly
	String fullname,addr;
	 String email; //each employee has a unique email
	@Unindex String b_day;
	String date_created;
	long phone; int st; //each employee has a unique phone
	String emp_key;
	String emp_pass;
	String emp_employer; //the email of the Employer
	String emp_business;
	private String emp_country;
	
	public Employee()
	{
		
	}
	
	public Employee(String fname, String addr, String email,String bday, String pass, long phone, String employer, String country)
	{
		this.fullname = fname;
		this.addr = addr;
		this.st = 0;
		this.email = email;
		this.b_day = bday;
		Date d = new Date();
		this.date_created = new String(d.toGMTString());
		this.phone = phone;
		this.emp_pass = pass;
		this.emp_employer = employer;
		this.emp_country = country;
	}

	public Employee getEmployee()
	{
		//retrieve from data Store this data
		Key<Employee> empKey = getKey();
		Employee entityEmployee = ofy().load().key(empKey).now();
		return entityEmployee;
		//return (new String[]{this.fullname,this.addr,this.category,this.email,this.b_day,this.date_created,""+this.phone});
	}
	
	public void setEmployer(String emp)
	{
		this.emp_employer = emp;
	}
	
	public void setEmployee()
	{
		//save all field data to the datastore;
		ofy().save().entity(this).now();
	}
	
	public void setEmployeeBusiness(String biz)
	{
		this.emp_business = biz;
	}
	
	public Key<Employee> getKey()
	{
		return Key.create(Employee.class, this.emp_key);
	}
	
	public void setKey()
	{
		this.emp_key = "employee";
	}

	public String getEmployeeName()
	{
		return fullname;
	}
	
	public String getEmployeeBusiness()
	{
		return emp_business;
		
	}
	
	public String getEmployeeCity()
	{
		return addr;
		
	}
	
	public String getEmployeeEmail()
	{
		return email;		
	}
	
	public String getEmployeeCountry()
	{
		return emp_country;
		
	}

	public String getEmployeePassword()
	{
		return this.emp_pass;
	}
	
	public void deleteEmployee()
	{
		ofy().delete().type(Employee.class).id(this.emp_id).now();
	//	ofy().delete().entity(this).now();
	}
}

