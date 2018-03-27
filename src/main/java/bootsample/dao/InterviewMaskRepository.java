package bootsample.dao;

import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;

import bootsample.model.InterviewMask;

public interface InterviewMaskRepository  extends CrudRepository<InterviewMask, Integer>{

}
