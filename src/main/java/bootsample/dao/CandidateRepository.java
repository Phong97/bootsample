package bootsample.dao;

import org.springframework.data.repository.CrudRepository;

import bootsample.model.Candidate;

public interface CandidateRepository extends CrudRepository<Candidate, Integer>{

}
