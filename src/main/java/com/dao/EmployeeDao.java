package com.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.model.Employee;

@Repository
public interface EmployeeDao extends JpaRepository<Employee, Integer> {
	
	public List<Employee> findByUnameAndUpass(String uname,String upass);
	//public List<Employee> findByUnameOrUpass(String uname,String upass);
	
	//public List<Employee> findByUname(String uname);
	//public List<Employee> findByUnameStartingWith(String uname);
	/*
	 * name Query.....
	 * 
	 * @Query("from Employee") public List<Employee> getalldata();
	 */
	//native Query.....
	/*
	 * @Query(value="select * from Employee",nativeQuery = true) public
	 * List<Employee> getalldata();
	 */
}
