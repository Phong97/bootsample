package bootsample.dao;

import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;

import bootsample.model.InterviewResult;

@Transactional
public interface InterviewResultRepository extends CrudRepository<InterviewResult, Integer>{

}
