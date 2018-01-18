package bootsample.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import bootsample.dao.CalendarViewRepository;
import bootsample.model.CalendarView;

@Service
@Transactional
public class CalendarViewService {
	
	private final CalendarViewRepository calendarViewRepository;

	public CalendarViewService(CalendarViewRepository calendarViewRepository) {
		super();
		this.calendarViewRepository = calendarViewRepository;
	}
	
	public List<CalendarView> findById(int id){
		List<CalendarView> calendars = new ArrayList<>();
		for(CalendarView calendar:calendarViewRepository.findAll()) {
			if (calendar.getInterviewer_id() == id)
				calendars.add(calendar);
		}
		
		return calendars;
	}
}
