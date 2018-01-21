package bootsample.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import bootsample.dao.CandidateRepository;
import bootsample.model.*;

@Service
@Transactional
public class CandidateService {

	private final CandidateRepository candidateRepository;

	public CandidateService(CandidateRepository candidateRepository) {
		super();
		this.candidateRepository = candidateRepository;
	}
	
	public List<Candidate> findAll(){
		List<Candidate> candidates = new ArrayList<>();
		for(Candidate candidate:candidateRepository.findAll()) {
			candidates.add(candidate);
		}
		
		return candidates;
	}
	
	public Candidate findCandidate(int id) {
		return candidateRepository.findOne(id);
	}
	
	public void save(Candidate candidate) {
		candidateRepository.save(candidate);
	}
	
	public void delete (int id) {
		candidateRepository.delete(id);
	}
}
