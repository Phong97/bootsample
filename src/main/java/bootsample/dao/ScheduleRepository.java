package bootsample.dao;

import org.springframework.data.repository.CrudRepository;

import bootsample.model.ScheduleView;

public interface ScheduleRepository extends CrudRepository<ScheduleView, Integer>{

}
