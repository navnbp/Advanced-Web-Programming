package cs520.model.dao;

import java.util.List;

import cs520.model.DepartmentAdditionalFields;

public interface DepartmentAdditionalFieldsDao {

	DepartmentAdditionalFields getbyAdditionalFieldID(Integer id);
	
	List<DepartmentAdditionalFields> getbyAdditionalField();
	
	DepartmentAdditionalFields addAdditionalFields(DepartmentAdditionalFields field);
		
	  void removeAdditionalFields(DepartmentAdditionalFields field);
	     
	  void removeAdditionalFieldsById(	Integer id);
}
