package com.serviceInterface;

import java.util.List;

import com.model.Student;

public interface ServiceInterface {

	public int saveStudent(Student student); 
	public boolean deleteStudent(Student student); 
	public Student updateStudent(Student student); 
	public List<Student> getAllStudent();
	public Student getStudentByUnameAndPassword(String username, String password);
	public Student getStudentById(int id);
	public List<Student> getAllStudentByRole(String role);
		
}
