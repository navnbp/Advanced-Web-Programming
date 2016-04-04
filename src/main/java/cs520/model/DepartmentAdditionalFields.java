package cs520.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.context.annotation.Scope;

@Entity
@Table(name="department_additional_filed")
@Scope("session")
public class DepartmentAdditionalFields implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="additional_field_id")
	private int id;
	
	@Column(name="field_name")
	private String fieldName;
	
	@Column(name="field_value_type")
	private String fieldValueType;
	
	@Column(name="optional")
	private Boolean optional;
	
/*	@ManyToOne(cascade = CascadeType.ALL)
	private Department department;*/
	
	public DepartmentAdditionalFields(){}

	public DepartmentAdditionalFields(String fieldName,String fieldValueType,Boolean optional)
	{
		this.fieldName=fieldName;
		this.fieldValueType=fieldValueType;
		this.optional=optional;
//		this.department=dept;
		
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getFieldName() {
		return fieldName;
	}


	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
	}


	public String getFieldValueType() {
		return fieldValueType;
	}


	public void setFieldValueType(String fieldValueType) {
		this.fieldValueType = fieldValueType;
	}


	public Boolean getOptional() {
		return optional;
	}


	public void setOptional(Boolean optional) {
		this.optional = optional;
	}



	/*public Department getDepartment() {
		return department;
	}


	public void setDepartment(Department department) {
		this.department = department;
	}
	
*/	
	

}
