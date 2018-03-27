package bootsample.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name = "interviewer")
public class Interviewer {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String accountfsoft;
	private String email;

	// thuộc tính fectch là LAZY
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "interviewer", cascade = CascadeType.ALL)
	private Set<Candidate> candidate = new HashSet<Candidate>(0);

	public Interviewer(int id, String name, String accountfsoft, String email, Set<Candidate> candidate) {
		super();
		this.id = id;
		this.name = name;
		this.accountfsoft = accountfsoft;
		this.email = email;
		this.candidate = candidate;
	}

	public Set<Candidate> getCandidate() {
		return candidate;
	}

	public void setCandidate(Set<Candidate> candidate) {
		this.candidate = candidate;
	}

	public Interviewer() {

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
