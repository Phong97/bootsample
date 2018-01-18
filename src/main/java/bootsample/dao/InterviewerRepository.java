package bootsample.dao;

import org.springframework.data.repository.CrudRepository;

import bootsample.model.Interviewer;

public interface InterviewerRepository extends CrudRepository<Interviewer, Integer>{
	
}
