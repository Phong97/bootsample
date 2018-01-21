package bootsample.service;

import java.util.*;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import bootsample.dao.ScheduleRepository;
import bootsample.model.ScheduleView;

@Service
@Transactional
public class SchdeduleService {

	private final ScheduleRepository scheduleRepository;

	public SchdeduleService(ScheduleRepository scheduleRepository) {
		super();
		this.scheduleRepository = scheduleRepository;
	}

	// Lấy tất cả dữ liệu và truyền vào list
	public List<ScheduleView> findAll() {
		List<ScheduleView> schedules = new ArrayList<>();
		for (ScheduleView schedule : scheduleRepository.findAll()) {
			schedules.add(schedule);
		}
		return schedules;
	}

	// Tìm kiếm theo id
	public ScheduleView findSchedule(int id) {
		return scheduleRepository.findOne(id);
	}

	// Lưu kết quả
	public void Save(ScheduleView schedule) {
		scheduleRepository.save(schedule);
	}
}
