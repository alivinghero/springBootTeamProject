package com.client;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.Student;
import com.serviceInterface.ServiceInterface;
 

@Controller
public class Mycontroller {
	
	 @Autowired
	 ServiceInterface service;
	 Student currentStudent;
	 String role;
	 int curid;
	 


	 @RequestMapping(value="/")public String goToLoginPage() {
		 
		 System.out.println("ok commit pranay kohad ................................");
		 return "login";}  
	 
	 @RequestMapping(value="/register")public String goToRegistrationPage() {return "registration";} 
	 	 	 
	 @RequestMapping(value="/goTosuccess2Page")
	 public ModelAndView goTosuccess2Page() {  
		
		 Map<String,Object> map = getMyList();
		 
		 return new ModelAndView("success2","map",map);

	 }	 
	 	
	 @RequestMapping(value="/checkUser")
	 public ModelAndView loginCheck(
			 @RequestParam(name="uname") String username, 
			 @RequestParam(name="password") String password) { 
		 
		 		 
		 Student u = service.getStudentByUnameAndPassword(username, password);		 

		 if(u.getId()>0) {
			 
			 role = u.getRole();
			 curid = u.getId();
			 
			 Map<String,Object> map = getMyList();
			 
			 return new ModelAndView("success2","map",map);
		 }
		 else
			 return new ModelAndView("error","error",u.getName());
	 }  
	 
	 @RequestMapping(value="/saveUser")
	 public ModelAndView saveUser(@ModelAttribute Student student) {  		 
				
		 
		 String userRole = "user";
		 
		 if(student.getRole().equals("0")) 
			 student.setRole(userRole);	
		 
		 int id = service.saveStudent(student);	

		 if(id>0) 
			 return new ModelAndView("login");	
		 else 
			 return new ModelAndView("error","error","duplicate username is not allowed!!!");	 	 
		 
	 } 
	 
	 
	 @RequestMapping(value="/goToUpdatePage")
	 public ModelAndView sendToUpdatePage(@RequestParam(name="record")String record) { 
		 
		 currentStudent = service.getStudentById(0);

		 
		 return new ModelAndView("update","person",currentStudent);	

	 }
	 

	 
	 @RequestMapping(value="/deleteRow/{val}")
	 public ModelAndView deletStudent(@PathVariable(name="val") String record) {  
		 
		 System.out.println(record);
	
		 Student s = service.getStudentById(0);
	
		 service.deleteStudent(s);

		 
		 Map<String,Object> map1 = getMyList();
		 
		 return new ModelAndView("success2","map",map1);

	 }

	 

	 @RequestMapping(value="/updateOneStudent")
	 public ModelAndView updateOneStudent(@RequestParam(name="name") String name) {  
		 
		 
		 System.out.println("update btn clicked "+name);
		 
//	 		 
//		 if(map.get("name")!="")
//			 currentStudent.setName(map.get("name"));
//		 	 
//		 if(map.get("uname")!="")
//			 currentStudent.setUname(map.get("uname"));
//		 
//		 if(map.get("password")!="") 
//			 currentStudent.setPassword(map.get("password"));
//		 
//		 if(map.get("address")!="")
//			 currentStudent.setAddress(map.get("address"));
//		 	 
//		 Student s = service.updateStudent(currentStudent);
//
//		 System.out.println("uptde stsatr");
//		 System.out.println(currentStudent.getName());
//		 System.out.println(currentStudent.getUname());
//		 System.out.println(currentStudent.getName());
//		 System.out.println("uptde enda");
//		 
//		 if(s != null) {		 
//
//			 Map<String,Object> map1 = getMyList();
//			 
//			 return new ModelAndView("success2","map",map1);			 
//		 }
//		 else {
			 return new ModelAndView("error","error","some error in updating data!!!");	
//		 }
		 				 
	 }
	
	
	 @RequestMapping(value="/deleteStudent")
	 public ModelAndView deleteStudent(@RequestParam(name="record") int id) {  
		
		 if(id == curid)
			 return new ModelAndView("error","error","you cannot delete your own record!!!");
		 
		 
		 boolean del = false;	 

	 
		 del = service.deleteStudent(service.getStudentById(id)); 
		 
		 
		 if(del) {		 
	
			 Map<String,Object> map = getMyList();

			 return new ModelAndView("success2","map",map);
		 }
		 else {
			 return new ModelAndView("error","error","some error in deleting data!!!");	
		 }	 		 
		 
	 }
	
	 private Map<String, Object> getMyList() {
		 
		 List<Student> studentList = new ArrayList<Student>();
		 
		 if(role.equals("admin")) {
				
			 Student stu1 = service.getStudentById(curid);
			 List<Student> list2 = service.getAllStudentByRole("manager");	
			 List<Student> list3 = service.getAllStudentByRole("user");
			 
			 studentList.add(stu1);
			 studentList.addAll(list2);
			 studentList.addAll(list3);
			 

		 }
		 else if(role.equals("manager")) {

			 Student stu1 = service.getStudentById(curid);
			 List<Student> list2 = service.getAllStudentByRole("user");
			
			 studentList.add(stu1); 
			 studentList.addAll(list2);
		 }
		 else {

			 Student stu1 = service.getStudentById(curid);				 
			
			 studentList.add(stu1);
		 }
		 
		 int checkForUser=0;
		 
		 if(role.equals("user"))
			 checkForUser=1;
		 

		 
		 Map<String,Object> map = new HashMap<>();
		 map.put("studentList", studentList);
		 map.put("curid", curid);
		 map.put("role", checkForUser);
		 
		 return map;
	}
	
}
