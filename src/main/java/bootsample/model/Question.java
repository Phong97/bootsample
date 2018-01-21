package bootsample.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="question")
public class Question {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int no;
	private int position_id;
	private String question1;
	private String answer;
	
	public Question() {}

	public Question(int no, int position_id, String question1, String answer) {
		super();
		this.no = no;
		this.position_id = position_id;
		this.question1 = question1;
		this.answer = answer;
	}



	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getPosition_id() {
		return position_id;
	}

	public void setPosition_id(int position_id) {
		this.position_id = position_id;
	}

	public String getQuestion1() {
		return question1;
	}

	public void setQuestion1(String question1) {
		this.question1 = question1;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
}
