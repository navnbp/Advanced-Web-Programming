package cs520.model;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="student_educational_background")
public class StudentEducationalBackground implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="educational_background_id")
	private int id;
	
	@Column(name="university",nullable=false)
	private String university;
	
	@Column(nullable=false)
	private String degree;
	
	
	@Column(nullable=false)
	private String major;
	
	@Column(name="start_date")
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date startDate;
	
	@Column(name="end_date")
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date endDate;
	
public StudentEducationalBackground() {
	
}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(String date) throws Exception {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		startDate=formatter.parse(date);
	}
	
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
	public void setEndDate(String date) throws Exception {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		endDate=formatter.parse(date);
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	
	

}
