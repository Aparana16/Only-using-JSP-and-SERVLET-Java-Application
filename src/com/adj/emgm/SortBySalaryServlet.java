package com.adj.emgm;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SortBySalaryServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	EmployeStore employeeStore = new EmployeInMemoryStore();
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("welcome sort by salary servlet");
		List<Employee> emList = employeeStore.getEmployeListBySalary();
		req.setAttribute("List", emList);
		RequestDispatcher rd=req.getRequestDispatcher("SortBySalary.jsp");
			rd.forward(req, res);	
	}

}
