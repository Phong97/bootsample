package bootsample.dao;

import org.springframework.data.repository.CrudRepository;

import bootsample.model.ResultView;

public interface ResultRepository extends CrudRepository<ResultView, Integer>{

}