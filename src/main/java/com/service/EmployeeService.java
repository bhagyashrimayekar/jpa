package com.service;

import java.util.List;

import com.model.Employee;

public interface EmployeeService {
	
	public void addemployee(Employee e);
	
	public List<Employee> getalldata();
	public List<Employee> getdata();
	public void sortdata();
	public void delete(int empid);
	
	public Employee edit(int empid);
	
	public List<Employee> login(String uname,String upass);
	//public List<Employee> loginbyuname(String uname);
	
	
}
