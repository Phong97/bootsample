package bootsample.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import bootsample.dao.PositionRepository;
import bootsample.model.*;

@Service
@Transactional
public class PositionService {

	private final PositionRepository positionRepository;

	public PositionService(PositionRepository positionRepository) {
		super();
		this.positionRepository = positionRepository;
	}
	
	public List<Position> findAll(){
		List<Position> positions = new ArrayList<>();
		for(Position position:positionRepository.findAll()) {
			positions.add(position);
		}
		
		return positions;
	}
	
	public Position findPosition(int id) {
		
		return positionRepository.findOne(id);
	}
	
	public void save(Position position) {
		positionRepository.save(position);
	}
	
	public void delete (int id) {
		positionRepository.delete(id);
	}
}
