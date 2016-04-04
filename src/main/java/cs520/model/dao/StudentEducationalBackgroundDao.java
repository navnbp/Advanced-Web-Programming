package cs520.model.dao;

import java.util.List;

import cs520.model.StudentEducationalBackground;

public interface StudentEducationalBackgroundDao {

	
	
	StudentEducationalBackground getStudentEducationalBackground(Integer id);
	List<StudentEducationalBackground> getStudentEducationalBackground();
	void deleteStudentEducationalBackground(Integer id);
	StudentEducationalBackground addStudentEducationalBackground(StudentEducationalBackground background) ;
	}
