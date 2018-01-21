package bootsample.service;

import java.util.*;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import bootsample.dao.ResultRepository;
import bootsample.model.ResultView;

@Service
@Transactional
public class ResultService {

	private final ResultRepository resultRepository;

	public ResultService(ResultRepository resultRepository) {
		super();
		this.resultRepository = resultRepository;
	}

	// Lấy tất cả dữ liệu và truyền vào list
	public List<ResultView> findAll() {
		List<ResultView> results = new ArrayList<>();
		for (ResultView result : resultRepository.findAll()) {
			results.add(result);
		}
		return results;
	}

	// Tìm kiếm theo id
	public ResultView findResult(int id) {
		return resultRepository.findOne(id);
	}

	// Lưu kết quả
	public void Save(ResultView result) {
		resultRepository.save(result);
	}

}
