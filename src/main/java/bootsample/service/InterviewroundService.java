
package bootsample.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import bootsample.dao.InterviewRoundRepository;
import bootsample.model.Interview_round;

@Service
@Transactional
public class InterviewroundService {
	private final InterviewRoundRepository interviewroundRepository;

	public InterviewroundService(InterviewRoundRepository interviewroundRepository) {
		super();
		this.interviewroundRepository = interviewroundRepository;
	}
	
	public List<Interview_round> findAll(){
		List<Interview_round> interviewrounds = new ArrayList<>();
		for(Interview_round interviewround:interviewroundRepository.findAll()) {
			interviewrounds.add(interviewround);
		}
		
		return interviewrounds;
	}
	public Interview_round findInterviewRound(int id) {
		return interviewroundRepository.findOne(id);
	}
	
	public void save(Interview_round interview_round) {
		interviewroundRepository.save(interview_round);
	}
	
	public void delete (int id) {
		interviewroundRepository.delete(id);
	}
}
