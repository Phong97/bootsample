package bootsample.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="interview_round")
public class Interview_round {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int no;
	private String roundname;
	private int guideline_id;
	private String description;
	
	public Interview_round() {}
	
	public Interview_round(int no, String roundname, int guideline_id, String description) {
		this.no = no;
		this.roundname = roundname;
		this.guideline_id = guideline_id;
		this.description = description;
	}
	
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
	public int getGuideline_id() {
		return guideline_id;
	}
	public void setGuideline_id(int guideline_id) {
		this.guideline_id = guideline_id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
