package bootsample.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="interviewer")
public class Interviewer {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String name;
	private String accountfsoft;
	private String email;

	public Interviewer() {
		
	}
	
	public Interviewer(int id, String name, String accountfsoft, String email) {
		super();
		this.id = id;
		this.name = name;
		this.accountfsoft = accountfsoft;
		this.email = email;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAccountfsoft() {
		return accountfsoft;
	}

	public void setAccountfsoft(String accountfsoft) {
		this.accountfsoft = accountfsoft;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Interviewer [id=" + id + ", name=" + name + ", accountfsoft=" + accountfsoft + ", email=" + email + "]";
	}
}
