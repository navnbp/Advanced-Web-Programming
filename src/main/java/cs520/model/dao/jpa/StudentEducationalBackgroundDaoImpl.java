package cs520.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cs520.model.StudentEducationalBackground;
import cs520.model.dao.StudentEducationalBackgroundDao;


@Repository
public class StudentEducationalBackgroundDaoImpl implements StudentEducationalBackgroundDao {

	 @PersistenceContext
	    private EntityManager entityManager;
	
	 @Override
	 @Transactional
		public StudentEducationalBackground addStudentEducationalBackground(StudentEducationalBackground background) {
			return entityManager.merge(background);
		}
	 
	 @Override
	public StudentEducationalBackground getStudentEducationalBackground(Integer id) {
		return entityManager.find(StudentEducationalBackground.class, id);
	}

	@Override
	public List<StudentEducationalBackground> getStudentEducationalBackground() {
		String query = "FROM StudentEducationalBackground order by endDate desc";
    	List<StudentEducationalBackground> results= entityManager.createQuery( query, StudentEducationalBackground.class )
	            .getResultList();
    	 return results.size() == 0 ? null : results;
	}

	@Override
	@Transactional
	public void deleteStudentEducationalBackground(Integer id) {
		entityManager.remove(entityManager.find(StudentEducationalBackground.class, id));
		
	}
 
}
