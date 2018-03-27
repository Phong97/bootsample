package bootsample.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="interview_round_process")
public class InterviewRoundProcess {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private int round_id;
	private int process_id;
	private int candidate_id;
	private String video;
	
	public InterviewRoundProcess(){}

	public InterviewRoundProcess(int id, int round_id, int process_id, int candidate_id, String video) {
		super();
		this.id = id;
		this.round_id = round_id;
		this.process_id = process_id;
		this.candidate_id = candidate_id;
		this.video = video;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getRound_id() {
		return round_id;
	}

	public void setRound_id(int round_id) {
		this.round_id = round_id;
	}

	public int getProcess_id() {
		return process_id;
	}

	public void setProcess_id(int process_id) {
		this.process_id = process_id;
	}

	public int getCandidate_id() {
		return candidate_id;
	}

	public void setCandidate_id(int candidate_id) {
		this.candidate_id = candidate_id;
	}

	public String getVideo() {
		return video;
	}

	public void setVideo(String video) {
		this.video = video;
	}

}
