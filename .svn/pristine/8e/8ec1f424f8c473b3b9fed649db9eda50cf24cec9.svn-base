package cs520.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cs520.model.Application;
import cs520.model.dao.ApplicationDao;

@Repository
public class ApplicationDaoImpl implements ApplicationDao {

	  @PersistenceContext
	    private EntityManager entityManager;

	    @Override
	    public  Application getApplication( Integer id )
	    {
	        return entityManager.find( Application.class, id );
	    }

	    @Override
	    public List<Application> getApplications()
	    {
	        return entityManager.createQuery( "from Application order by id", Application.class )
	            .getResultList();
	    }
	    
	    @Override
	    public List<Application> getApplicationsByDepartment(String dept)
		{
	    	String query = "from Application app where app.program in (select prog from Program prog  where prog.department.name =:department)";
	    	return entityManager.createQuery( query, Application.class )
		            .setParameter( "department", dept )
		            .getResultList();
	    	 
		}

		@Override
		@Transactional
		public Application addApplication(Application app) {
			return entityManager.merge(app);
		}
	    
	  
	    
	  	
	  
		  
		

}
