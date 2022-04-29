package com.austin.ripnshipecommerce.repo;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.austin.ripnshipecommerce.model.User;

@Repository
public interface UserRepo extends CrudRepository<User, Long> {
	Optional<User> findByEmail(String email); 
	List<User> findAll(); //this should always be added to the Repo ---> allows findAll to return a list vs an iterable. 
}

