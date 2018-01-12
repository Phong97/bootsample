package bootsample.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import bootsample.dao.SkillRepository;
import bootsample.model.Skill;

@Service
@Transactional
public class SkillService {
	
	private final SkillRepository skillRepository;
	
	public SkillService(SkillRepository skillRepository) {
		super();
		this.skillRepository = skillRepository;
	}
	
	public List<Skill> findAll(){
		List<Skill> skills = new ArrayList<>();
		for (Skill skill:skillRepository.findAll()) {
			skills.add(skill);
		}
		
		return skills;
	}

	public Skill findSkill(int no) {
		return skillRepository.findOne(no);
	}
	
	public void save(Skill skill) {
		skillRepository.save(skill);
	}
	
	public void delete(int no) {
		skillRepository.delete(no);
	}
}
