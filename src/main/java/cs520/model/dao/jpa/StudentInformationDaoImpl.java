package cs520.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cs520.model.Application;
import cs520.model.Program;
import cs520.model.StudentInformation;
import cs520.model.dao.StudentInformationDao;

@Repository
public class StudentInformationDaoImpl implements StudentInformationDao{

	 @PersistenceContext
	    private EntityManager entityManager;
	
	@Override
	public StudentInformation getStudentInfo(Integer id) {
    	return entityManager.find(StudentInformation.class, id);
	}
	
	

	@Override
	public List<StudentInformation> getStudentInfo() {
		List<StudentInformation> results= entityManager.createQuery( "from StudentInformation order by firstName", StudentInformation.class ).getResultList();
		 return results.size() == 0 ? null : results;
	}

	@Override
	@Transactional
	public StudentInformation addStudentInfo(StudentInformation info) {
		return entityManager.merge(info);
	}

	@Override
	@Transactional
	public void deleteStudentInfo(StudentInformation info) {
		entityManager.remove(info);
		
	}
	
	@Override
	public void deleteStudentInfo(Integer id)
	{
		entityManager.remove(entityManager.find(StudentInformation.class, id));
		
	}



	@Override
	public StudentInformation getStudentInfoByApplicationId(Integer id) {
		String query = "from StudentInformation info where info.application.id=:id";
		
		List<StudentInformation> results= entityManager.createQuery( query, StudentInformation.class )
	            .setParameter( "id", id )
	            .getResultList();
		 return results.size() == 0 ? null : results.get(0);
	}

}
