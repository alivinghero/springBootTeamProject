package com.serviceImplimentation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daoInterface.DaoInterface;
import com.model.Student;
import com.serviceInterface.ServiceInterface;

@Service
public class ServiceImplementation implements ServiceInterface{
	
	@Autowired
	DaoInterface daoInterface;

	@Override
	public int saveStudent(Student student) {
		
		Student s = daoInterface.save(student);
		return s.getId();
		
	}

	@Override
	public boolean deleteStudent(Student student) {
		
		try {
			daoInterface.deleteById(student.getId());
		}
		catch (Exception e) {
			return false;
		}
		
		return true;
		
	}

	@Override
	public Student updateStudent(Student student) {
		
		return daoInterface.save(student);
		
	}

	@Override
	public List<Student> getAllStudent() {
		
		return (List<Student>) daoInterface.findAll();
		
	}

	@Override
	public Student getStudentByUnameAndPassword(String username, String password) {
		Student stu=null;
		try {
			stu = daoInterface.findAllByUnameAndPassword(username, password);
			return stu;
		}
		catch (Exception e) {
			stu.setId(-1);
			stu.setName(e.getMessage());
			return stu;
		}

	}

	@Override
	public Student getStudentById(int id) {
		
		return daoInterface.findAllById(id);

	}

	@Override
	public List<Student> getAllStudentByRole(String role) {
		
		return daoInterface.findAllByRole(role);
	
	}

}
