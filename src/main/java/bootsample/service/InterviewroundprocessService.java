package bootsample.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import bootsample.dao.InterviewRoundProcessRepository;
import bootsample.model.Interview_round_process;

@Service
@Transactional
public class InterviewroundprocessService {
	private final InterviewRoundProcessRepository interviewroundprocessRepository;

	public InterviewroundprocessService(InterviewRoundProcessRepository interviewroundprocessRepository) {
		super();
		this.interviewroundprocessRepository = interviewroundprocessRepository;
	}
	
	public List<Interview_round_process> findAll(){
		List<Interview_round_process> interviewroundprocesses = new ArrayList<>();
		for(Interview_round_process interviewroundprocess:interviewroundprocessRepository.findAll()) {
			interviewroundprocesses.add(interviewroundprocess);
		}
		
		return interviewroundprocesses;
	}
}
