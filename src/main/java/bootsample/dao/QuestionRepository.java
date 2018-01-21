package bootsample.dao;

import org.springframework.data.repository.CrudRepository;

import bootsample.model.Question;

public interface QuestionRepository extends CrudRepository<Question, Integer> {

}
