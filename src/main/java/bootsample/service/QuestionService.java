package bootsample.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import bootsample.dao.QuestionRepository;
import bootsample.model.*;

@Service
@Transactional
public class QuestionService {

	private final QuestionRepository questionRepository;

	public QuestionService(QuestionRepository questionRepository) {
		super();
		this.questionRepository = questionRepository;
	}
	
	public List<Question> findAll(){
		List<Question> questions = new ArrayList<>();
		for(Question question:questionRepository.findAll()) {
			questions.add(question);
		}
		
		return questions;
	}
	
	public Question findQuestion(int no) {
		return questionRepository.findOne(no);
	}
	
	public void save(Question question) {
		questionRepository.save(question);
	}
	
	public void delete (int no) {
		questionRepository.delete(no);
	}
}
