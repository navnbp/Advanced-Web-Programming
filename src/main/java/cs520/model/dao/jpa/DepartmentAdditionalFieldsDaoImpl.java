package cs520.model.dao.jpa;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cs520.model.DepartmentAdditionalFields;
import cs520.model.dao.DepartmentAdditionalFieldsDao;

@Repository
public class DepartmentAdditionalFieldsDaoImpl implements DepartmentAdditionalFieldsDao {

	  @PersistenceContext
	    private EntityManager entityManager;

	@Override
	public DepartmentAdditionalFields getbyAdditionalFieldID(
			Integer id) {
		String query = "FROM DepartmentAdditionalFields where id=:id";
    	List<DepartmentAdditionalFields> results= entityManager.createQuery( query, DepartmentAdditionalFields.class ).setParameter( "id", id )
	            .getResultList();
    	 return results.size() == 0 ? null : results.get(0);
	}

	@Override
	public List<DepartmentAdditionalFields> getbyAdditionalField() {
		List<DepartmentAdditionalFields> results= entityManager.createQuery( "from DepartmentAdditionalFields order by fieldName", DepartmentAdditionalFields.class ).getResultList();
		 return results.size() == 0 ? null : results;
	}

	@Override
	public DepartmentAdditionalFields addAdditionalFields(DepartmentAdditionalFields field) {
		return entityManager.merge(field);
	}
	
	@Override
	@Transactional
	public void removeAdditionalFields(	DepartmentAdditionalFields field) {
		entityManager.remove(field);
		
	}
	  
	@Override
	@Transactional
	public void removeAdditionalFieldsById(	Integer id) 
	{
		entityManager.remove(entityManager.find(DepartmentAdditionalFields.class, id));
	}

}

/*
 	@Override
	public Program getProgram(Integer id) {
		String query = "FROM Program prog where prog.id=:id";
    	List<Program> results= entityManager.createQuery( query, Program.class ).setParameter( "id", id )
	            .getResultList();
    	 return results.size() == 0 ? null : results.get(0);
	}

	@Override
	public List<Program> getPrograms() {
		List<Program> results= entityManager.createQuery( "from Program order by name", Program.class ).getResultList();
		 return results.size() == 0 ? null : results;
	}

	@Override
	public Program addProgram(Program prog) {
		return entityManager.merge(prog);
	}

	@Override
	@Transactional
	public void deleteProgram(Program prog) {
		entityManager.remove(prog);
	}
	
*/
