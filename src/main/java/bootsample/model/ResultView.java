package bootsample.model;

import javax.persistence.Entity;
import javax.persistence.Id;

// Tên name là tên của bảng dưới cơ sở dữ liệu
@Entity(name = "interview_result_view")
public class ResultView {
	@Id
	private int no;
	private String candidate;
	private String position;
	private String interviewer;
	private String starttime;
	private String endtime;
	private String result;
	private String skill;
	private String university;
	private String gpa;
	private String gst;

	public ResultView(int no, String candidate, String position, String interviewer, String starttime, String endtime,
			String result, String skill, String university, String gpa, String gst) {
		super();
		this.no = no;
		this.candidate = candidate;
		this.position = position;
		this.interviewer = interviewer;
		this.starttime = starttime;
		this.endtime = endtime;
		this.result = result;
		this.skill = skill;
		this.university = university;
		this.gpa = gpa;
		this.gst = gst;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public String getGpa() {
		return gpa;
	}

	public void setGpa(String gpa) {
		this.gpa = gpa;
	}

	public String getGst() {
		return gst;
	}

	public void setGst(String gst) {
		this.gst = gst;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public ResultView() {
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getCandidate() {
		return candidate;
	}

	public void setCandidate(String candidate) {
		this.candidate = candidate;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getInterviewer() {
		return interviewer;
	}

	public void setInterviewer(String interviewer) {
		this.interviewer = interviewer;
	}

	public String getStarttime() {
		return starttime;
	}

	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}

	public String getEndtime() {
		return endtime;
	}

	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
}
