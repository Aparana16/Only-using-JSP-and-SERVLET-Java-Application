package com.adj.emgm;


import java.util.ArrayList;
import java.util.List;



public class EmployeInMemoryStore  implements EmployeStore {
		private static List<Employee> employelist = new ArrayList<Employee>();
		private static int curId=0;
		public int addEmployee(Employee employee) {
			int id=getNextId();
			employee.setId(id);
			employelist.add(employee);
			return id;

		}

		private int getNextId() {
			curId= curId+1;
			return curId;
		}

		public void deleteEmployeeId(Employee empId) {
			
					employelist.remove( empId);
				}
				
			

		

		public List<Employee> getsearchEmployee(String employeeName) {
			List<Employee> searchList = new ArrayList<Employee>();

			for (Employee e : employelist) {
				if (employeeName.equals(e.getName())) {
					searchList.add(e);
				}
			}

			return searchList;
		}

		public List<Employee> getEmployeeList() {
			return employelist;

		}

		public Employee getEmployeeById(int employeeId) {

			for (Employee employee : employelist) {
				if (employeeId == employee.getId()) {
					return employee;
				}
			}
			return null;
		}

		public Employee getEmployeeByContact_Number(long contact_numberForSearch) {

			for (Employee employee : employelist) {
				if (contact_numberForSearch == employee.getContact_no()) {
					return employee;
				}
			}
			return null;
		}

		// search employee detail by city
		public List<Employee> getsearchEmployeeCity(String employeeCity) {
			List<Employee> empList = new ArrayList<Employee>();
			for (int i = 0; i < employelist.size(); i++) {

				Employee employee = employelist.get(i);

				if (employeeCity.equals(employee.getCity())) {
					empList.add(employee);
				}
			}
			return empList;
		}
	// delete employee detail by contact number

		public void deleteEmployeeContact_Number(long contact_numberForSearch) {
			for (int i = (employelist.size() - 1); i >= 0; i--) {
				Employee employee = employelist.get(i);
				if (contact_numberForSearch == employee.getContact_no()) {
					employelist.remove(i);
				}
			}
		}

		public Employee findEmployeeMinimumSalary() {
			Employee employee = employelist.get(0);
			for (int i = 1; i < employelist.size(); i++) {
				Employee tmp = employelist.get(i);
				if (tmp.getSalary() < employee.getSalary()) {
					employee = tmp;
				}
			}
			return employee;

		}

		@Override
		public List<Employee> getEmployeListBySalary() {
			List<Employee> list = new ArrayList<Employee>();
			// Employee last= null;
			list.addAll(employelist);
			/*
			 * for (int i = 0; i < employelist.size(); i++) {
			 * 
			 * Employee tmp = employelist.get(0);
			 * 
			 * if(last ==null) {
			 * 
			 * for (int j = 0; j < employelist.size(); j++) { Employee cur =
			 * employelist.get(j); if(cur.getSalary()<tmp.getSalary()) { tmp = cur; } }
			 * 
			 * }else {
			 * 
			 * for (int j = 0; j < employelist.size(); j++) { Employee cur =
			 * employelist.get(j); if(cur.getSalary()>last.getSalary()) { tmp = cur; break;
			 * } }
			 * 
			 * for (int j = 0; j < employelist.size(); j++) { Employee cur =
			 * employelist.get(j); if(cur.getSalary()<tmp.getSalary() &&
			 * cur.getSalary()>last.getSalary()) { tmp = cur; } } }
			 * 
			 * list.add(tmp); last=tmp;
			 * 
			 * 
			 * //list.add(employee);
			 * 
			 * 
			 * }
			 */

			for (int i = 0; i <list.size(); i++) {
				Employee employee = list.get(i);
				for (int j = i+1; j < list.size(); j++) {
					Employee tmp = list.get(j);
					if (employee.getSalary() > tmp.getSalary()) {
						Employee temp = employee;
						list.set(i, tmp);
						list.set(j, temp);
						//list.addAll(employelist);
					}
				}
			}

			return list;
		}

		@Override
		
			public List<Employee> getEmployeListByName() {
				List<Employee> list = new ArrayList<Employee>();
				// Employee last= null;
				list.addAll(employelist);
				for (int i = 0; i <list.size(); i++) {
					Employee employee = list.get(i);
					for (int j = i+1; j < list.size(); j++) {
						Employee tmp = list.get(j);
						if (employee.getName().contentEquals(tmp.getName())) {
							Employee temp = employee;
							list.set(i, tmp);
							list.set(j, temp);
							//list.addAll(employelist);
						}
					}
				}
				return list;
			}

		@Override
		public void deleteEmployee(int id) {
			employelist.remove(id);
			
		}

		

	}


