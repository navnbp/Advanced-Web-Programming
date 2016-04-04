package cs520.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;



import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;



import cs520.model.DepartmentAdditionalFields;
import cs520.model.Program;
import cs520.model.dao.ProgramDao;

@Repository
public class ProgramDaoImpl implements ProgramDao {
	  @PersistenceContext
	    private EntityManager entityManager;

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
	
	
	
	
}
