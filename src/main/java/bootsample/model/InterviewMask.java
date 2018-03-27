package bootsample.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity(name="interview_mask")
public class InterviewMask {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int no;
	private int question_id;
	private String mask;
	private String note;
	private int interview_result_no;
	
	public InterviewMask() {}
	
	public InterviewMask(int no, int question_id, String mask, String note, int interview_result_no) {
		super();
		this.no = no;
		this.question_id = question_id;
		this.mask = mask;
		this.note = note;
		this.interview_result_no = interview_result_no;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getQuestion_id() {
		return question_id;
	}

	public void setQuestion_id(int question_id) {
		this.question_id = question_id;
	}

	public String getMask() {
		return mask;
	}

	public void setMask(String mask) {
		this.mask = mask;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public int getInterview_result_no() {
		return interview_result_no;
	}

	public void setInterview_result_no(int interview_result_no) {
		this.interview_result_no = interview_result_no;
	}

}
