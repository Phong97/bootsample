package bootsample.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import bootsample.dao.InterviewResultRepository;
import bootsample.model.InterviewResult;

@Service
@Transactional
public class InterviewResultService {

	private final InterviewResultRepository interviewResultRepository;

	public InterviewResultService(InterviewResultRepository interviewResultRepository) {
		super();
		this.interviewResultRepository = interviewResultRepository;
	}

	public List<InterviewResult> findAll() {
		
		List<InterviewResult> interviewResult = new ArrayList<>();
		
		for (InterviewResult interviewResul : interviewResultRepository.findAll()) {
			interviewResult.add(interviewResul);
		}	
		return interviewResult;
	}
}
