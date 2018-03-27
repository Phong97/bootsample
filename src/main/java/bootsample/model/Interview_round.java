package bootsample.model;

<<<<<<< HEAD
import java.util.Set;

=======
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
>>>>>>> 8e040568b8b0133009c99f696a0ba9516875df83
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
<<<<<<< HEAD
import javax.persistence.ManyToMany;
=======
import javax.persistence.OneToMany;
>>>>>>> 8e040568b8b0133009c99f696a0ba9516875df83

@Entity(name = "interview_round")
public class Interview_round {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int no;
	private String roundname;
	private Integer guideline_id;
	private String description;
<<<<<<< HEAD
	
	@ManyToMany(mappedBy = "rounds")
	private Set<Interview_process> processes;
	
	public Interview_round() {}
	
	public Interview_round(int no, String roundname, int guideline_id, String description) {
=======

	// thuộc tính fectch là LAZY
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "interview_round", cascade = CascadeType.ALL)
	private Set<InterviewResult> interviewresult = new HashSet<InterviewResult>(0);

	public Set<InterviewResult> getInterviewresult() {
		return interviewresult;
	}

	public void setInterviewresult(Set<InterviewResult> interviewresult) {
		this.interviewresult = interviewresult;
	}

	public Interview_round() {
	}

	public Interview_round(int no, String roundname, Integer guideline_id, String description,
			Set<InterviewResult> interviewresult) {
		super();
>>>>>>> 8e040568b8b0133009c99f696a0ba9516875df83
		this.no = no;
		this.roundname = roundname;
		this.guideline_id = guideline_id;
		this.description = description;
		this.interviewresult = interviewresult;
	}
<<<<<<< HEAD
	
	public Set<Interview_process> getProcesses() {
		return processes;
	}
	
	public void setProcesses(Set<Interview_process> processes) {
		this.processes = processes;
	}
	
=======

>>>>>>> 8e040568b8b0133009c99f696a0ba9516875df83
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getRoundname() {
		return roundname;
	}

	public void setRoundname(String roundname) {
		this.roundname = roundname;
	}

	public Integer getGuideline_id() {
		return guideline_id;
	}

	public void setGuideline_id(Integer guideline_id) {
		this.guideline_id = guideline_id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
