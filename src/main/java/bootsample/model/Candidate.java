package bootsample.model;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity(name = "candidate")
public class Candidate {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private int idcard;
	private Date birth;
	private String email;
	private int phone;
	private String address;
	private String university;
	private String major;
	private Double gpa;
	private int graduationyear;
	private int skill_id;
	private String gst;
	private String others;
	private int position_id;

	private int intervieweradmin_id;
	private int coincidence;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "position_id", nullable = false, insertable = false, updatable = false)
	private Position position;

	// thuộc tính fectch là LAZY
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "candidate", cascade = CascadeType.ALL)
	private Set<InterviewResult> interviewresult = new HashSet<InterviewResult>(0);

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "intervieweradmin_id", nullable = false, insertable = false, updatable = false)
	private Interviewer interviewer;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "skill_id", nullable = false, insertable = false, updatable = false)
	private Skill skill;

	public Candidate(int id, String name, int idcard, Date birth, String email, int phone, String address,
			String university, String major, Double gpa, int graduationyear, int skill_id, String gst, String others,
			int position_id, int intervieweradmin_id, int coincidence, Position position,
			Set<InterviewResult> interviewresult, Interviewer interviewer, Skill skill) {
		super();
		this.id = id;
		this.name = name;
		this.idcard = idcard;
		this.birth = birth;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.university = university;
		this.major = major;
		this.gpa = gpa;
		this.graduationyear = graduationyear;
		this.skill_id = skill_id;
		this.gst = gst;
		this.others = others;
		this.position_id = position_id;
		this.intervieweradmin_id = intervieweradmin_id;
		this.coincidence = coincidence;
		this.position = position;
		this.interviewresult = interviewresult;
		this.interviewer = interviewer;
		this.skill = skill;
	}

	public Skill getSkill() {
		return skill;
	}

	public void setSkill(Skill skill) {
		this.skill = skill;
	}

	public Interviewer getInterviewer() {
		return interviewer;
	}

	public void setInterviewer(Interviewer interviewer) {
		this.interviewer = interviewer;
	}

	public Position getPosition() {
		return position;
	}

	public void setPosition(Position position) {
		this.position = position;
	}

	public Candidate() {
	}

	public Set<InterviewResult> getInterviewresult() {
		return interviewresult;
	}

	public void setInterviewresult(Set<InterviewResult> interviewresult) {
		this.interviewresult = interviewresult;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getIdcard() {
		return idcard;
	}

	public void setIdcard(int idcard) {
		this.idcard = idcard;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public Double getGpa() {
		return gpa;
	}

	public void setGpa(Double gpa) {
		this.gpa = gpa;
	}

	public int getGraduationyear() {
		return graduationyear;
	}

	public void setGraduationyear(int graduationyear) {
		this.graduationyear = graduationyear;
	}

	public int getSkill_id() {
		return skill_id;
	}

	public void setSkill_id(int skill_id) {
		this.skill_id = skill_id;
	}

	public String getGst() {
		return gst;
	}

	public void setGst(String gst) {
		this.gst = gst;
	}

	public String getOthers() {
		return others;
	}

	public void setOthers(String others) {
		this.others = others;
	}

	public int getPosition_id() {
		return position_id;
	}

	public void setPosition_id(int position_id) {
		this.position_id = position_id;
	}

	public int getIntervieweradmin_id() {
		return intervieweradmin_id;
	}

	public void setIntervieweradmin_id(int intervieweradmin_id) {
		this.intervieweradmin_id = intervieweradmin_id;
	}

	public int getCoincidence() {
		return coincidence;
	}

	public void setCoincidence(int coincidence) {
		this.coincidence = coincidence;
	}

}
