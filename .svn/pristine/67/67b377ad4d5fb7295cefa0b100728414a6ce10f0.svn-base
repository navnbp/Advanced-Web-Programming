package cs520.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cs520.model.StudentAdditionalRecords;
import cs520.model.StudentEducationalBackground;
import cs520.model.dao.StudentAdditionalRecordsDao;

@Repository
public class StudentAdditionalRecordsDaoImpl implements StudentAdditionalRecordsDao {

	 @PersistenceContext
	    private EntityManager entityManager;
	 
	@Override
	 @Transactional
	public StudentAdditionalRecords addRecords(StudentAdditionalRecords record) {
		return entityManager.merge(record);
	}

	@Override
	public List<StudentAdditionalRecords> getRecords() {
		String query = "FROM StudentAdditionalRecords order by id asc";
    	List<StudentAdditionalRecords> results= entityManager.createQuery( query, StudentAdditionalRecords.class )
	            .getResultList();
    	 return results.size() == 0 ? null : results;
	}

	@Override
	public StudentAdditionalRecords getRecords(int id) {
		return entityManager.find(StudentAdditionalRecords.class, id);
	}

	@Override
	@Transactional
	public void deleteAdditionalRecords(Integer id) {
		 entityManager.remove(entityManager.find(StudentAdditionalRecords.class, id));
		
	}

}
