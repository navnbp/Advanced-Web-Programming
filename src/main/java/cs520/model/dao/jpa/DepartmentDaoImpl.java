package cs520.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cs520.model.Application;
import cs520.model.Department;
import cs520.model.dao.DepartmentDao;

@Repository
public class DepartmentDaoImpl implements DepartmentDao{

	  @PersistenceContext
	    private EntityManager entityManager;
	
	  	@Override
	    public Department getDepartment( Integer id )
	    {
	  		String query = "FROM Department dept where dept.id=:id";
	    	List<Department> results= entityManager.createQuery( query, Department.class )
		            .setParameter( "id", id )
		            .getResultList();
	    	 return results.size() == 0 ? null : results.get(0);
	    	
	    }
	  	
	  	@Override
	  	@Transactional
	  	public Department addDepartment(Department dept)
	  	{
	  		return entityManager.merge(dept);
	  	}
	  
	  	@Override
	  	@Transactional
	  	public void deleteDepartmentById(Integer deptId)
	  	{
	  		 entityManager.remove(entityManager.find(Department.class, deptId));
	  	}

	  	@Override
		public List<Department> getDepartments() 
		{
		   return entityManager.createQuery( "from Department order by name ", Department.class ).getResultList();
		}

	
	
}
