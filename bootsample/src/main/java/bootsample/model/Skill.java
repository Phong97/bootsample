package bootsample.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="skill")
public class Skill {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int no;
	private String name;
	
	public Skill() {}

	public Skill(String name) {
		super();
		this.name = name;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Skill [no=" + no + ", name=" + name + "]";
	}
}
