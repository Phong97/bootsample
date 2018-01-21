package bootsample.model;

import javax.persistence.Entity;
import javax.persistence.Id;

//Tên name là tên của bảng dưới cơ sở dữ liệu
@Entity(name = "interview_schedule_view")
public class ScheduleView {

	@Id
	private int id;
	private String fullname;
	private String start;
	private String position;
	private String round;

	public ScheduleView(int id, String fullname, String start, String position, String round) {
		super();
		this.fullname = fullname;
		this.start = start;
		this.position = position;
		this.round = round;
		this.id = id;
	}
	
	public ScheduleView() {
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	
	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getRound() {
		return round;
	}

	public void setRound(String round) {
		this.round = round;
	}

}
