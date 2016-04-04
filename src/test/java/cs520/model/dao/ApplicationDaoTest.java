package cs520.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTransactionalTestNGSpringContextTests;
import org.testng.annotations.Test;

import cs520.model.Application;

@Test(groups = "ApplicationDaoTests")
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class ApplicationDaoTest extends AbstractTransactionalTestNGSpringContextTests {

	    @Autowired
	    ApplicationDao applicationDao;
	
	   /* private Boolean checkStudentDetailsExistsInApplications(List<Application> applications)
	    {
	    	Boolean flag=false;
	    	for (Application app : applications) 
	    	{
				if(app.getStudentInformation().getEmail().equals("student1@localhost.localdomain"))
				{
					flag=true;
					break;
				}
			}
	    	
	    	return flag;
	    }*/
	    
	    
		//Test Case to check Student1 has submitted the application
	   /* @Test
	    public void testCaseForApplicationStudentInformation()
	    {
	    	assert	checkStudentDetailsExistsInApplications(applicationDao.getApplications());
	    	
	    }*/
	    


	    //Test Case to check Accounting Department, has one application for Fall 2016.
	  /*  @Test
	    public void testCaseForApplicationsSubmittedForDepartment()
	    {
	    	
	    	List<Application> applications=applicationDao.getApplicationsByDepartment("Accounting");
	    	assert applications.size()==1 && applications.get(0).getTerm().equals("Fall 2016");
	    }*/



}
