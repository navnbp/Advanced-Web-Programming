package cs520.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="student_additional_records")
public class StudentAdditionalRecords implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="additional_record_id")
	private int id;
	
	@Column(nullable=false)
	private String fieldValue;
	
	@OneToOne(targetEntity=DepartmentAdditionalFields.class)
	private DepartmentAdditionalFields additionalField;
	
	@ManyToOne
	private Application application;
	
	 public StudentAdditionalRecords() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFieldValue() {
		return fieldValue;
	}

	public void setFieldValue(String fieldValue) {
		this.fieldValue = fieldValue;
	}

	public DepartmentAdditionalFields getAdditionalField() {
		return additionalField;
	}

	public void setAdditionalField(DepartmentAdditionalFields additionalField) {
		this.additionalField = additionalField;
	}

	public Application getApplication() {
		return application;
	}

	public void setApplication(Application application) {
		this.application = application;
	}
	
	
}
