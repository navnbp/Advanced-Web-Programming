package cs520.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="application")
public class Application implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="application_id")
	private int id;
	
	@ManyToOne
	private Department dept;
	
	@ManyToOne
	private Program program;
	
	@Column(nullable=false)
	private String term;
	
	@OneToOne
	private ApplicationStatus status;
	
	@OneToMany
	private List<ApplicationStatusUpdateHistory> statusUpdateHistory;

	@OneToMany
	private List<StudentAdditionalRecords> additionalRecords;
	
/*	@OneToOne
	private StudentInformation studentInformation;*/
	
	private Date submittedOn;
	
	public Application(){}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Program getProgram() {
		return program;
	}

	public void setProgram(Program program) {
		this.program = program;
	}

	public String getTerm() {
		return term;
	}

	public void setTerm(String term) {
		this.term = term;
	}

	public ApplicationStatus getStatus() {
		return status;
	}

	public void setStatus(ApplicationStatus status) {
		this.status = status;
	}

	/*public StudentInformation getStudentInformation() {
		return studentInformation;
	}

	public void setStudentInformation(StudentInformation studentInformation) {
		this.studentInformation = studentInformation;
	}*/

	public List<ApplicationStatusUpdateHistory> getStatusUpdateHistory() {
		return statusUpdateHistory;
	}

	public void setStatusUpdateHistory(
			List<ApplicationStatusUpdateHistory> statusUpdateHistory) {
		this.statusUpdateHistory = statusUpdateHistory;
	}

	public List<StudentAdditionalRecords> getAdditionalRecords() {
		return additionalRecords;
	}

	public void setAdditionalRecords(
			List<StudentAdditionalRecords> additionalRecords) {
		this.additionalRecords = additionalRecords;
	}

	public Date getSubmittedOn() {
		return submittedOn;
	}

	public void setSubmittedOn(Date submittedOn) {
		this.submittedOn = submittedOn;
	}

	public Department getDept() {
		return dept;
	}

	public void setDept(Department dept) {
		this.dept = dept;
	}

	/*public StudentInformation getStudentInformation() {
		return studentInformation;
	}

	public void setStudentInformation(StudentInformation studentInformation) {
		this.studentInformation = studentInformation;
	}*/
}
