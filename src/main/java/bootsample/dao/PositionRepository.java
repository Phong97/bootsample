package bootsample.dao;

import org.springframework.data.repository.CrudRepository;

import bootsample.model.Position;

public interface PositionRepository extends CrudRepository<Position, Integer> {

}
