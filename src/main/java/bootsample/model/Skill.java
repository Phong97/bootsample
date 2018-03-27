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

@Entity(name = "skill")
public class Skill {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int no;
	private String name;

	// thuộc tính fectch là LAZY
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "skill", cascade = CascadeType.ALL)
	private Set<Candidate> candidate = new HashSet<Candidate>(0);

	public Skill(int no, String name, Set<Candidate> candidate) {
		super();
		this.no = no;
		this.name = name;
		this.candidate = candidate;
	}

	public Set<Candidate> getCandidate() {
		return candidate;
	}

	public void setCandidate(Set<Candidate> candidate) {
		this.candidate = candidate;
	}

	public Skill() {
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Skill [no=" + no + ", name=" + name + "]";
	}
}
