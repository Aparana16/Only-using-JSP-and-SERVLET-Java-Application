package com.adj.emgm;

import java.util.List;

public interface EmployeStore {
	public int addEmployee(Employee employee) ;
	public void deleteEmployee(int id);
	public	List<Employee> getsearchEmployee(String employeeName);
	public List<Employee> getEmployeeList();
	public Employee getEmployeeById(int employeeId);
	public Employee getEmployeeByContact_Number(long contact_numberForSearch);
	public List<Employee> getsearchEmployeeCity(String employeeCity);
	public void deleteEmployeeContact_Number(long contact_numberForSearch);
	public List<Employee> getEmployeListBySalary();
	public List<Employee> getEmployeListByName();
	public Employee findEmployeeMinimumSalary();
	public void deleteEmployeeId(Employee empId) ;
	

	
}
