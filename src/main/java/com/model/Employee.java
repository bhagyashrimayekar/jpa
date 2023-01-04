package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Getter;
import lombok.Setter;

@Entity
@Setter
@Getter
public class Employee {
	@Id
	private int empid;
	private String empname;
	private String uname;
	private String upass;
	private String emailid;
	private Double salary;
	private String dob;
	private String gender;
	private String department;
	private long phone;
	private String address;
	private String facility;
	
}
