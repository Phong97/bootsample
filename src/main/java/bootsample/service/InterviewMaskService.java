package bootsample.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import bootsample.dao.InterviewMaskRepository;
import bootsample.model.InterviewMask;

@Service
@Transactional
public class InterviewMaskService {

	private final InterviewMaskRepository interviewMaskRepository;
	
	public InterviewMaskService(InterviewMaskRepository interviewMaskRepository) {
		super();
		this.interviewMaskRepository= interviewMaskRepository;
	}
	
	public List<InterviewMask> findAll(){
		List<InterviewMask> interviewmask = new ArrayList<>();
		
		for(InterviewMask interviewmas : interviewMaskRepository.findAll() ) {
			interviewmask.add(interviewmas);
		}
		
		return interviewmask;
	}
}
