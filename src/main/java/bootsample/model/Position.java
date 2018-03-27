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

@Entity(name = "position")
public class Position {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String code;

	public Position(int id, String code, String name, Set<Candidate> candidate) {
		super();
		this.id = id;
		this.code = code;
		this.name = name;
		this.candidate = candidate;
	}

	private String name;
	// thuộc tính fectch là LAZY
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "position", cascade = CascadeType.ALL)
	private Set<Candidate> candidate = new HashSet<Candidate>(0);

	public Set<Candidate> getCandidate() {
		return candidate;
	}

	public void setCandidate(Set<Candidate> candidate) {
		this.candidate = candidate;
	}

	public Position() {
	}

	public Position(int id, String code, String name) {
		super();
		this.id = id;
		this.code = code;
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Position [id=" + id + ", code=" + code + ", name=" + name + "]";
	}
}
