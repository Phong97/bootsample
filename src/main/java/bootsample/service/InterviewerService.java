package bootsample.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import bootsample.dao.InterviewerRepository;
import bootsample.model.Interviewer;

@Service
@Transactional
public class InterviewerService {

	private final InterviewerRepository interviewerRepository;

	public InterviewerService(InterviewerRepository interviewerRepository) {
		super();
		this.interviewerRepository = interviewerRepository;
	}
	
	public List<Interviewer> findAll(){
		List<Interviewer> interviewers = new ArrayList<>();
		for(Interviewer interviewer:interviewerRepository.findAll()) {
			interviewers.add(interviewer);
		}
		
		return interviewers;
	}
	
	public Interviewer findInterviewer(int id) {
		return interviewerRepository.findOne(id);
	}
	
	public void save(Interviewer interviewer) {
		interviewerRepository.save(interviewer);
	}
	
	public void delete (int id) {
		interviewerRepository.delete(id);
	}
	
}
