
package bootsample.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import bootsample.dao.UserRepository;
import bootsample.model.User;

@Service
@Transactional
public class UserService {
	private final UserRepository userRepository;

	public UserService(UserRepository userRepository) {
		super();
		this.userRepository = userRepository;
	}
	
	public List<User> findAll(){
		List<User> users = new ArrayList<>();
		for(User user:userRepository.findAll()) {
			users.add(user);
		}
		
		return users;
	}
	
	public User findUser(int id) {
		return userRepository.findOne(id);
	}
	
	public void save(User user) {
		userRepository.save(user);
	}
	
	public void delete (int id) {
		userRepository.delete(id);
	}
	
}
