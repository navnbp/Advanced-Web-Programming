package cs520.model.dao.jpa;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;


import cs520.model.ApplicationStatus;
import cs520.model.dao.ApplicationStatusDao;


@Repository
public class ApplicationStatusDaoImpl implements ApplicationStatusDao{
	
	  @PersistenceContext
	  private EntityManager entityManager;

	@Override
	public ApplicationStatus getApplicationStatus(Integer id) {
        return entityManager.find( ApplicationStatus.class, id );
	}
	  
	
	  

}
