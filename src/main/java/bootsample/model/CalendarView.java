package bootsample.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity(name="calendarview")
public class CalendarView {
	@Id
	private int interviewer_id;
	private String room;
	private Date starttime;
	private Date endtime;
	private String roundname;
	private String processname;
	private Date startdate;
	public CalendarView(int interviewer_id, String room, Date starttime, Date endtime, String roundname, String processname,
			Date startdate) {
		super();
		this.interviewer_id = interviewer_id;
		this.room = room;
		this.starttime = starttime;
		this.endtime = endtime;
		this.roundname = roundname;
		this.processname = processname;
		this.startdate = startdate;
	}
	public CalendarView() {
	}
	public int getInterviewer_id() {
		return interviewer_id;
	}
	public void setInterviewer_id(int interviewer_id) {
		this.interviewer_id = interviewer_id;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
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
	public String getRoundname() {
		return roundname;
	}
	public void setRoundname(String roundname) {
		this.roundname = roundname;
	}
	public String getProcessname() {
		return processname;
	}
	public void setProcessname(String processname) {
		this.processname = processname;
	}
	public Date getStartdate() {
		return startdate;
	}
	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}
	@Override
	public String toString() {
		return "CalendarView [interviewer_id=" + interviewer_id + ", room=" + room + ", starttime=" + starttime
				+ ", endtime=" + endtime + ", roundname=" + roundname + ", processname=" + processname + ", startdate="
				+ startdate + "]";
	}
}
