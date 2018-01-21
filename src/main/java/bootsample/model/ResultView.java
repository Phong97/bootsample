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

	public ResultView(int no, String candidate, String position, String interviewer, String starttime, String endtime,
			String result) {
		super();
		this.no = no;
		this.candidate = candidate;
		this.position = position;
		this.interviewer = interviewer;
		this.starttime = starttime;
		this.endtime = endtime;
		this.result = result;
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
