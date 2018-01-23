package bootsample.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="interview_process")
public class Interview_process {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int no;
	private String processname;
	private int position_id;
	private String startdate;
	private String status;


	public Interview_process() {
		
	}
	
	public Interview_process(int no, String processname, int position_id, String startdate, String status) {
		super();
		this.no = no;
		this.processname = processname;
		this.position_id = position_id;
		this.startdate = startdate;
		this.status = status;
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
