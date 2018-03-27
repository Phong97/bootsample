package bootsample.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

@Entity(name="interview_process")
public class Interview_process {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int no;
	private String processname;
	private int position_id;
	private String startdate;
	private String status;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "position_id", nullable = false, insertable = false, updatable = false)
	private Position position;

	@ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "interview_round_process", joinColumns = @JoinColumn(name = "process_id", referencedColumnName = "no"), 
    inverseJoinColumns = @JoinColumn(name = "round_id", referencedColumnName = "no"))
	private Set<Interview_round> rounds;
	
	@ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "interview_round_process", joinColumns = @JoinColumn(name = "process_id", referencedColumnName = "no"), 
    inverseJoinColumns = @JoinColumn(name = "candidate_id", referencedColumnName = "id"))
	private Set<Candidate> candidates;
	
	public Interview_process() {
		
	}
	
	public Interview_process(int no, String processname, int position_id, String startdate, String status,
			Position position, Set<Interview_round> rounds, Set<Candidate> candidates) {
		super();
		this.no = no;
		this.processname = processname;
		this.position_id = position_id;
		this.startdate = startdate;
		this.status = status;
		this.position = position;
		this.rounds = rounds;
		this.candidates = candidates;
	}
	
	public Set<Interview_round> getRounds() {
		return rounds;
	}
	
	public void setRounds(Set<Interview_round> rounds) {
		this.rounds = rounds;
	}
	
	public Set<Candidate> getCandidates() {
		return candidates;
	}
	
	public void setCandidates(Set<Candidate> candidates) {
		this.candidates = candidates;
	}
	
	public Position getPosition() {
		return position;
	}

	public void setPosition(Position position) {
		this.position = position;
	}
	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getProcessname() {
		return processname;
	}

	public void setProcessname(String processname) {
		this.processname = processname;
	}

	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	public int getPosition_id() {
		return position_id;
	}

	public void setPosition_id(int position_id) {
		this.position_id = position_id;
	}
}
