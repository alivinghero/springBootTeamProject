package com.daoInterface;


import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.model.Student;

public interface DaoInterface extends CrudRepository<Student, Integer>{

	Student findAllByUnameAndPassword(String uname,String password);	
	Student findAllById(int id);
	List<Student> findAllByRole(String role);
	
}
