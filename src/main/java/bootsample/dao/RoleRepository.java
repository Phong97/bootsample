package bootsample.dao;

import org.springframework.data.repository.CrudRepository;

import bootsample.model.Role;

public interface RoleRepository extends CrudRepository<Role, Integer> {

}
