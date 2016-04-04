package cs520.model.dao;

import java.util.List;

import cs520.model.Program;

public interface ProgramDao {

	
		Program getProgram( Integer id );
	
	  List<Program> getPrograms();
	  
	  Program addProgram(Program prog);
	
	  void deleteProgram(Program prog);
	  
	 

	
}
