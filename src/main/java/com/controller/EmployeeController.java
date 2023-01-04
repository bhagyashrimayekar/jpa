package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.Employee;
import com.service.EmployeeService;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService ser;

	@RequestMapping("/")
	public String openloginpage()
	{
		
		return "login";
	}
	
	@RequestMapping("/registration")
	public String openregistrationpage()
	{
		
		return "registration";
	}
	
	@RequestMapping("/addemployee")
	public String addemployee(@ModelAttribute Employee e)
	{
		
		ser.addemployee(e);
		return "login";
	}
  @RequestMapping("/getalldata")
	public String alldata(Model m)
	{
	 
	 List<Employee> e=ser.getalldata();
	 m.addAttribute("data", e);
	  return "success";
		
	}
  @RequestMapping("/deleteemployee")
  public String deleteemployee(@RequestParam int empid, Model m)
  
  {
	  
	  ser.delete(empid);
	  List<Employee> e=ser.getalldata();
		 m.addAttribute("data", e);
	  
	  return "success";
  }
  @RequestMapping("/editemployee")
  public String editemp(@RequestParam int empid,Model m)
  {
	  Employee e=ser.edit(empid);
	  m.addAttribute("data",e);
	  return "edit";
  }
  @RequestMapping("/update")
  public String update(@ModelAttribute Employee e,Model m)
  
  {
	  ser.addemployee(e);
	  List<Employee> e1=ser.getalldata();
		 m.addAttribute("data", e1);
	  
	  return "success";
	  
  }
  @RequestMapping("/nextrecord")
  public String getdata(Model m)
  
  {    ser.sortdata();
	  List<Employee>e1=ser.getdata();
	  m.addAttribute("data", e1);
	 
	  return "success";
	  
  }
	
	 @RequestMapping("/login")
	 public String login(@RequestParam String uname,String upass,Model m) 
	 { List<Employee> e= ser.login(uname, upass);
	 
	  m.addAttribute("data", e);
	  return "success"; 
	 }
	 
  
	/*
	 * @RequestMapping("/login") public String login(@RequestParam String uname
	 * ,Model m) { List<Employee> e= ser.loginbyuname(uname); m.addAttribute("data",
	 * e); return "success"; }
	 */
  
	
}
