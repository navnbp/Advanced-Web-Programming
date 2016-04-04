package cs520.model;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.OrderBy;
import javax.persistence.Table;

import org.springframework.context.annotation.Scope;
import org.springframework.format.annotation.DateTimeFormat;
@Entity
@Table(name = "student_info")
@Scope("session")
public class StudentInformation implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="student_id")
	private int studentId;
	
	@Column(name="first_name",nullable=false)
	private String firstName;
	
	@Column(name="last_name",nullable=false)
	private String lastName;
	
	@Column(nullable=true)
	private String cin;
	
	@Column(name="phone_number")
	private String phoneNumber;
	
	@Column(nullable=false)
	private String email;
	
	@Column()
	private String gender;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@Column()
	private Date dob;
	
	@Column()
	private String citizenship;
	

	
	@Column(name="international_student")
	private Boolean isInternationalStudent;
	
	@OneToOne(cascade = CascadeType.ALL)
	private Application application;
	
	@OneToOne(cascade = CascadeType.ALL)
	private StudentAcademicRecord academicRecords;
	
	@OneToMany(cascade = CascadeType.ALL)
	@OrderBy("startDate desc")
	private List<StudentEducationalBackground> educationalBackground; 
	
	/*@OneToMany
	private List<StudentAdditionalRecords> additionalRecords;*/
	
	public StudentInformation() {
		
	}
	
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getCin() {
		return cin;
	}
	public void setCin(String cin) {
		this.cin = cin;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}

	public void setDob(String date) throws Exception {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		dob=formatter.parse(date);
	}
	public String getCitizenship() {
		return citizenship;
	}
	public void setCitizenship(String citizenship) {
		this.citizenship = citizenship;
	}
	public Boolean getIsInternationalStudent() {
		return isInternationalStudent;
	}
	public void setIsInternationalStudent(Boolean isInternationalStudent) {
		this.isInternationalStudent = isInternationalStudent;
	}

	public Application getApplication() {
		return application;
	}

	public void setApplication(Application applications) {
		this.application = applications;
	}

	public StudentAcademicRecord getAcademicRecords() {
		return academicRecords;
	}

	public void setAcademicRecords(StudentAcademicRecord academicRecords) {
		this.academicRecords = academicRecords;
	}

	public List<StudentEducationalBackground> getEducationalBackground() {
		return educationalBackground;
	}

	public void setEducationalBackground(
			List<StudentEducationalBackground> educationalBackground) {
		this.educationalBackground = educationalBackground;
	}



	/*public List<StudentAdditionalRecords> getAdditionalRecords() {
		return additionalRecords;
	}

	public void setAdditionalRecords(
			List<StudentAdditionalRecords> additionalRecords) {
		this.additionalRecords = additionalRecords;
	}
*/

}
