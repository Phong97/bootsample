
package bootsample.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import bootsample.dao.InterviewProcessRepository;
import bootsample.model.Interview_process;

@Service
@Transactional
public class InterviewprocessService {
	private final InterviewProcessRepository interviewprocessRepository;

	public InterviewprocessService(InterviewProcessRepository interviewprocessRepository) {
		super();
		this.interviewprocessRepository = interviewprocessRepository;
	}
	
	public List<Interview_process> findAll(){
		List<Interview_process> interviewprocesses = new ArrayList<>();
		for(Interview_process interviewprocess:interviewprocessRepository.findAll()) {
			interviewprocesses.add(interviewprocess);
		}
		
		return interviewprocesses;
	}
	
	public Interview_process findInterviewProcess(int id) {
		return interviewprocessRepository.findOne(id);
	}
	
	public void save(Interview_process interview_process) {
		interviewprocessRepository.save(interview_process);
	}
	
	public void delete (int id) {
		interviewprocessRepository.delete(id);
	}
	
}
