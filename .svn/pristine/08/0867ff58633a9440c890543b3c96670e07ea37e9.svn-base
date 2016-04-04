package cs520.model;

import java.io.Serializable;
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

import org.springframework.context.annotation.Scope;

@Entity
@Table(name = "users")
@Scope("session")
public class User implements Serializable{
	
	
	private static final long serialVersionUID = 1L;

	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 @Column(name="user_id") 
     private Integer id;
  
	 @Column(name="first_name", nullable=false, length=512)
	 private String firstName;
	  
	 @Column(name="last_name", nullable=false, length=512)
     private String lastName;
	  
	  @Column(name="email_id", nullable=false, length=512)
	  private String emailId;
    
	  @Column(nullable=false)
	  private String pwd;
      
	  
	  @ManyToOne
	  private Role role;
	  
	  @OneToMany
	  private List<StudentInformation> studentInformation;
    
	  public User(String firstName, String lastName, String emailId, String pwd,
			Role role) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.emailId = emailId;
		this.pwd = pwd;
		this.role = role;
	}

	public User() {
		
	}
   
	public Integer getId() {
		return id;
	}

    public void setId(Integer id) {
		this.id = id;
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
	
  
	public String getEmailId() {
		return emailId;
	}
	
    public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	
    @Column(nullable=false)
	public String getPwd() {
		return pwd;
	}
	
    public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
    @OneToOne
	public Role getRole() {
		return role;
	}
	
    public void setRole(Role role) {
		this.role = role;
	}

	public List<StudentInformation> getStudentInformation() {
		return studentInformation;
	}

	public void setStudentInformation(List<StudentInformation> studentInformation) {
		this.studentInformation = studentInformation;
	}
	
	public void setStudentInformation(StudentInformation studentInformation) {
		this.studentInformation.add(studentInformation);
	}
   


}
