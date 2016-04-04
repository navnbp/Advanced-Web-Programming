package cs520.model.dao;

import java.util.List;

import cs520.model.Department;


public interface DepartmentDao {

	Department getDepartment( Integer id );
	
	  List<Department> getDepartments();
	  
	  Department addDepartment(Department dept);

	void deleteDepartmentById(Integer deptId);

}
