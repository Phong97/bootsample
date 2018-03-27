package bootsample.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity(name = "interview_result")
public class InterviewResult {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int no;
	private int candidate_id;
	private int interviewer_id;
	private Date starttime;
	private Date endtime;
	private String result;
	private int interview_round_no;
	private Integer interview_mask_no;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "candidate_id", nullable = false, insertable = false, updatable = false)
	private Candidate candidate;

	public InterviewResult(int no, int candidate_id, int interviewer_id, Date starttime, Date endtime, String result,
			int interview_round_no, int interview_mask_no, Candidate candidate) {
		super();
		this.no = no;
		this.candidate_id = candidate_id;
		this.interviewer_id = interviewer_id;
		this.starttime = starttime;
		this.endtime = endtime;
		this.result = result;
		this.interview_round_no = interview_round_no;
		this.interview_mask_no = interview_mask_no;
		this.candidate = candidate;
	}

	public Candidate getCandidate() {
		return candidate;
	}

	public void setCandidate(Candidate candidate) {
		this.candidate = candidate;
	}

	

	public InterviewResult() {
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getCandidate_id() {
		return candidate_id;
	}

	public void setCandidate_id(int candidate_id) {
		this.candidate_id = candidate_id;
	}

	public int getInterviewer_id() {
		return interviewer_id;
	}

	public void setInterviewer_id(int interviewer_id) {
		this.interviewer_id = interviewer_id;
	}

	public Date getStarttime() {
		return starttime;
	}

	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}

	public Date getEndtime() {
		return endtime;
	}

	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public int getInterview_round_no() {
		return interview_round_no;
	}

	public void setInterview_round_no(int interview_round_no) {
		this.interview_round_no = interview_round_no;
	}

	public Integer getInterview_mask_no() {
		return interview_mask_no;
	}

	public void setInterview_mask_no(Integer interview_mask_no) {
		this.interview_mask_no = interview_mask_no;
	}

}
