package cs520.model;

import java.io.Serializable;
import java.util.Date;

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
@Table(name="application_status_update_history")
public class ApplicationStatusUpdateHistory implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="update_history_id")
	private int id;
	
	@Column(name="changed_date")
	private Date changedDate;
	
	@ManyToOne()
	private Application application;

	private String comments;
	
	/*@OneToOne(targetEntity=ApplicationStatus.class)
	private ApplicationStatus statusChangedFrom;*/
	
	@ManyToOne(targetEntity=ApplicationStatus.class)
	private ApplicationStatus statusChangedTo;
	
	@ManyToOne(targetEntity=User.class)
	private User changedBy;
		

	public ApplicationStatusUpdateHistory(){}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getChangedDate() {
		return changedDate;
	}

	public void setChangedDate(Date changedDate) {
		this.changedDate = changedDate;
	}

	public Application getApplication() {
		return application;
	}

	public void setApplication(Application application) {
		this.application = application;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}
/*
	public ApplicationStatus getStatusChangedFrom() {
		return statusChangedFrom;
	}

	public void setStatusChangedFrom(ApplicationStatus statusChangedFrom) {
		this.statusChangedFrom = statusChangedFrom;
	}*/

	public ApplicationStatus getStatusChangedTo() {
		return statusChangedTo;
	}

	public void setStatusChangedTo(ApplicationStatus statusChangedTo) {
		this.statusChangedTo = statusChangedTo;
	}

	public User getChangedBy() {
		return changedBy;
	}

	public void setChangedBy(User changedBy) {
		this.changedBy = changedBy;
	}


	
	
	

	
}
