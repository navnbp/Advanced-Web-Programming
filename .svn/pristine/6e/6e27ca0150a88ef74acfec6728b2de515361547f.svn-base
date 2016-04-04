package cs520.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import cs520.model.Department;
import cs520.model.DepartmentAdditionalFields;
import cs520.model.Program;
import cs520.model.User;
import cs520.model.dao.DepartmentAdditionalFieldsDao;
import cs520.model.dao.DepartmentDao;
import cs520.model.dao.ProgramDao;


@Controller
public class AdminController {

	@Autowired
    private DepartmentDao departmentDao;
	
	@Autowired
	private ProgramDao programDao;
	
	@Autowired
	private DepartmentAdditionalFieldsDao deptAdditionalFieldsDao;
	
	@RequestMapping(value="/admin/home.html")
	public String studentHome()
	{
		return "/admin/home";
	}
	
	@RequestMapping(value="/admin/viewDepartment.html")
	public String viewDepartments(ModelMap models)
	{
		models.put("deptartment", departmentDao.getDepartments());
		return "/admin/viewDepartment";
	}
	
	
	@RequestMapping(value="/admin/viewDeptDetails/{id}.html")
	public String viewDepartmentDetails(@PathVariable Integer id,ModelMap models)
	{
	
		models.put("departmentDetails", departmentDao.getDepartment(id));
		return "/admin/viewDeptDetails";
	}
	
	 @RequestMapping(value="/admin/addDepartment.html",method=RequestMethod.GET)
		public String addDepartment(ModelMap models)
		{
	    	models.put("department", new Department());
	    	/*models.put("program", new Program());*/
	    	return "/admin/addDepartment";
		}
	 
	 @RequestMapping(value="/admin/addDepartment.html",method=RequestMethod.POST)
		public String addDepartment(@ModelAttribute Department dept,ModelMap models,HttpServletRequest request)
		{
		 Department d=dept;
		 String[] split,splitFieldName,splitFieldType,splitFieldRequired;
		 
		 if(request.getParameter("progvalues").contains("#"))
		 {
		  split=request.getParameter("progvalues").split("#");
		  dept.setPrograms(dept.getPrograms()==null?new ArrayList<Program>():dept.getPrograms());
			 for (String p : split) 
			 {
					dept.getPrograms().add(new Program(p));
				}
		 }
		 
		 if(request.getParameter("fieldName").contains("#") && request.getParameter("fieldType").contains("#") && request.getParameter("fieldRequired").contains("#"))
		 {
			  splitFieldName=request.getParameter("fieldName").split("#");
			  splitFieldType=request.getParameter("fieldType").split("#");
			  splitFieldRequired=request.getParameter("fieldRequired").split("#");
			  
			  if(splitFieldName.length==splitFieldType.length && splitFieldType.length==splitFieldRequired.length)
			  {
				  dept.setAdditionalFields(dept.getAdditionalFields()==null?new ArrayList<DepartmentAdditionalFields>():dept.getAdditionalFields());
				  for(int i=0;i<splitFieldName.length;i++)
				  {
					 dept.getAdditionalFields().add(new DepartmentAdditionalFields(splitFieldName[i], splitFieldType[i], (Integer.parseInt(splitFieldRequired[i])==1)?Boolean.TRUE:Boolean.FALSE));
				  }
			  }
		  
		 }
			
			 dept= departmentDao.addDepartment(dept);
			 request.getSession().setAttribute("AddNewDept", dept);
		
		 return "redirect:/admin/viewDepartment.html";
		 }
	 
	 @RequestMapping(value="/admin/editDepartment.html",method=RequestMethod.GET)
	 public String editDept(ModelMap models)
		{
			models.put("deptartment", departmentDao.getDepartments());
			return "/admin/editDept";
		}

	 @RequestMapping(value="/admin/deleteDepartment/{id}.html",method=RequestMethod.GET)
	 public String deleteDepartment(@PathVariable Integer id,ModelMap models)
	 {
		 departmentDao.deleteDepartmentById(id);
		 models.put("editDepartment", departmentDao.getDepartments());
		 return "redirect:/admin/viewDepartment.html";
	 }
	 
	 @RequestMapping(value="/admin/editDepartment/{id}.html",method=RequestMethod.GET)
	 public String editDepartment(@PathVariable Integer id,ModelMap models,HttpServletRequest request)
	 {
		 Department dept=departmentDao.getDepartment(id);
		 request.getSession().setAttribute("deptId", id);
		 models.put("editDepartment", dept);
		 return "/admin/editDepartment";
	 }
	 
	 @RequestMapping(value="/admin/editProgram/{id}.html", method=RequestMethod.GET)
	 public String  editProgram(@PathVariable Integer id,ModelMap models)
	 {
		models.put("prog", programDao.getProgram(id));
		 return "/admin/editProgram";
	 }
	
	 @RequestMapping(value="/admin/editProgram/{id}.html", method=RequestMethod.POST)
	 public String  editProgram(@ModelAttribute Program  prog,ModelMap models,HttpServletRequest request)
	 {
		Department dept= departmentDao.getDepartment(Integer.parseInt(request.getSession().getAttribute("deptId").toString()));
		for(int i=0;i<dept.getPrograms().size();i++)
		{
			if(dept.getPrograms().get(i).getId()==prog.getId())
			{
				dept.getPrograms().get(i).setName(prog.getName());
				break;
			}
		}
		departmentDao.addDepartment(dept);
		 return "redirect:/admin/editDepartment/"+request.getSession().getAttribute("deptId")+".html";
	 }
	 
	 @RequestMapping(value="/admin/deleteProgram/{id}.html", method=RequestMethod.GET)
	 public String  deleteProgram(@PathVariable Integer id,ModelMap models,HttpServletRequest  request)
	 {
		 Department dept= departmentDao.getDepartment(Integer.parseInt(request.getSession().getAttribute("deptId").toString()));
			
			for(int i=0;i<dept.getPrograms().size();i++)
			{
				if(dept.getPrograms().get(i).getId()==id)
				{
					dept.getPrograms().remove(i);
					break;
				}
				
			}
			departmentDao.addDepartment(dept);
			programDao.deleteProgram(programDao.getProgram(id));
			
		 return "redirect:/admin/editDepartment/"+request.getSession().getAttribute("deptId")+".html";
	 }
	 
	 @RequestMapping(value="/admin/AddProgram.html", method=RequestMethod.GET)
	 public String addProgram(ModelMap models)
	 {
		 models.put("prog", new Program());
		 return "/admin/addProgram";
	 }
	
	 @RequestMapping(value="/admin/AddProgram.html", method=RequestMethod.POST)
	 public String addProgram(@ModelAttribute Program prog,ModelMap models,HttpServletRequest request)
	 {
		
		 Department dept= departmentDao.getDepartment(Integer.parseInt(request.getSession().getAttribute("deptId").toString()));
		  dept.setPrograms(dept.getPrograms()==null?new ArrayList<Program>():dept.getPrograms());
		  dept.getPrograms().add(new Program(prog.getName()));
			
			departmentDao.addDepartment(dept);
		 return "redirect:/admin/editDepartment/"+request.getSession().getAttribute("deptId")+".html";
	 }
	 
//	 editDeptName
	 @RequestMapping(value="/admin/editDeptName/{id}.html", method=RequestMethod.GET)
	 public String editDeptName(@PathVariable Integer id,ModelMap models)
	 {
		 models.put("dept", departmentDao.getDepartment(id));
		 return "/admin/editDeptName";
	 }
	 
	 @RequestMapping(value="/admin/editDeptName/{id}.html", method=RequestMethod.POST)
	 public String  editDeptName(@ModelAttribute Department  dept,ModelMap models,HttpServletRequest request)
	 {
		 Department d= departmentDao.getDepartment(dept.getId());
		 d.setName(dept.getName());
		 departmentDao.addDepartment(d);
		  return "redirect:/admin/editDepartment/"+request.getSession().getAttribute("deptId")+".html";
	 }
	
//	     editAdditionalField addAdditionalField.html"
	 @RequestMapping(value="/admin/editAdditionalField/{id}.html", method=RequestMethod.GET)
	 public String editAdditionalField(@PathVariable Integer id,ModelMap models)
	 {
		 models.put("field", deptAdditionalFieldsDao.getbyAdditionalFieldID(id));
		 return "/admin/editAdditionalField";
	 }
	 
	 @RequestMapping(value="/admin/editAdditionalField/{id}.html", method=RequestMethod.POST)
	 public String  editAdditionalField(@ModelAttribute DepartmentAdditionalFields  field,ModelMap models,HttpServletRequest request)
	 {
		
		Boolean flag=request.getParameter("hdnOptional").equals("1")?Boolean.TRUE:Boolean.FALSE;
		
		 Department dept= departmentDao.getDepartment(Integer.parseInt(request.getSession().getAttribute("deptId").toString()));
			for(int i=0;i<dept.getAdditionalFields().size();i++)
			{
				if(dept.getAdditionalFields().get(i).getId()==field.getId())
				{
					dept.getAdditionalFields().get(i).setFieldName(request.getParameter("fieldName"));
					dept.getAdditionalFields().get(i).setFieldValueType(request.getParameter("fieldValueType").toString());
					dept.getAdditionalFields().get(i).setOptional(flag);
					break;
				}
			}
			departmentDao.addDepartment(dept);
		  return "redirect:/admin/editDepartment/"+request.getSession().getAttribute("deptId")+".html";
	 }
	 
	 @RequestMapping(value="/admin/deleteAdditionalField/{id}.html", method=RequestMethod.GET)
	 public String  deleteAdditionalField(@PathVariable Integer id,ModelMap models,HttpServletRequest  request)
	 {
		 Department dept= departmentDao.getDepartment(Integer.parseInt(request.getSession().getAttribute("deptId").toString()));
			
			for(int i=0;i<dept.getAdditionalFields().size();i++)
			{
				if(dept.getAdditionalFields().get(i).getId()==id)
				{
					dept.getAdditionalFields().remove(i);
					break;
				}
				
			}
			departmentDao.addDepartment(dept);
			deptAdditionalFieldsDao.removeAdditionalFieldsById(id);
			
		 return "redirect:/admin/editDepartment/"+request.getSession().getAttribute("deptId")+".html";
	 }
	
	 @RequestMapping(value="/admin/addAdditionalField.html", method=RequestMethod.GET)
	 public String addAdditionalField(ModelMap models)
	 {
		 models.put("field", new DepartmentAdditionalFields());
		 return "/admin/addAdditionalField";
	 }
	
	 @RequestMapping(value="/admin/addAdditionalField.html", method=RequestMethod.POST)
	 public String addAdditionalField(@ModelAttribute DepartmentAdditionalFields field,ModelMap models,HttpServletRequest request)
	 {
		
		 Boolean flag=request.getParameter("hdnOptional").equals("1")?Boolean.TRUE:Boolean.FALSE;
			
		 Department dept= departmentDao.getDepartment(Integer.parseInt(request.getSession().getAttribute("deptId").toString()));
			dept.getAdditionalFields().add(new DepartmentAdditionalFields(request.getParameter("fieldName"), request.getParameter("fieldValueType").toString(), flag));
			departmentDao.addDepartment(dept);
		  return "redirect:/admin/editDepartment/"+request.getSession().getAttribute("deptId")+".html";
	 }

	
	 
	 
}
