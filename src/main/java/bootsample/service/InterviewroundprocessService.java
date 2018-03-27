package bootsample.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import bootsample.dao.InterviewRoundProcessRepository;
import bootsample.model.InterviewRoundProcess;

@Service
@Transactional
public class InterviewroundprocessService {
	private final InterviewRoundProcessRepository interviewroundprocessRepository;

	public InterviewroundprocessService(InterviewRoundProcessRepository interviewroundprocessRepository) {
		super();
		this.interviewroundprocessRepository = interviewroundprocessRepository;
	}
	
	public List<InterviewRoundProcess> findAll(){
		List<InterviewRoundProcess> interviewroundprocesses = new ArrayList<>();
		for(InterviewRoundProcess interviewroundprocess:interviewroundprocessRepository.findAll()) {
			interviewroundprocesses.add(interviewroundprocess);
		}
		
		return interviewroundprocesses;
	}
}
