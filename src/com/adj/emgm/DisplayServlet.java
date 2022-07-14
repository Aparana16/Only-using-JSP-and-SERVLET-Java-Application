package com.adj.emgm;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DisplayServlet extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	EmployeStore employeeStore = new EmployeInMemoryStore();
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		List<Employee>emplist =employeeStore.getEmployeeList();
		req.setAttribute("employeelist", emplist);
		//res.sendRedirect("displaylist.jsp");
		RequestDispatcher rd=req.getRequestDispatcher("displaylist.jsp");
		rd.forward(req, res);
	}
}
