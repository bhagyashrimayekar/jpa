package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.dao.EmployeeDao;
import com.model.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {
@Autowired
private EmployeeDao dao;
	@Override
	public void addemployee(Employee e) {
		
		dao.save(e);
	}
	@Override
	public List<Employee> getalldata() {
		/*
		 * pagination... List <Employee> e=dao.findAll(PageRequest.of(0,
		 * 10)).getContent(); Sorting.... return
		 * dao.findAll(Sort.by("empid").ascending()); return dao.findAll(); return
		 * dao.getalldata();
		 */
		
		 List <Employee> e=dao.findAll(PageRequest.of(0,10,Sort.by("empid").ascending())).getContent(); 
		return e;
	}
	@Override
	public void delete(int empid) {
		dao.deleteById(empid);
	}
	@Override
	public Employee edit(int empid) {
	
		return dao.findById(empid).get();
	}

	
	  @Override public List<Employee> login(String uname, String upass) {
	 
	  return dao.findByUnameAndUpass(uname, upass); }
	  
	@Override
	public List<Employee> getdata() {
		 List <Employee> e=dao.findAll(PageRequest.of(1,10)).getContent(); 
			return e;
		
	}
	/*
	 * @Override public List<Employee> sortdata() { return
	 * dao.findAll(Sort.by("empid").ascending()); }
	 */
	@Override
	public void sortdata() {
		dao.findAll(Sort.by("empid").ascending());	
		
	}
	 
	/*
	 * @Override public List<Employee> loginbyuname(String uname) { // TODO
	 * Auto-generated method stub return dao.findByUnameStartingWith(uname); }
	 */
	

}
