package com.adj.emgm;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SearchServletId extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	EmployeStore employeeStore = new EmployeInMemoryStore();
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		res.setContentType("text/html");
		String empId=req.getParameter("searchId");
		int id=Integer.parseInt(empId);
				
		Employee emp1 = employeeStore.getEmployeeById(id);
		req.setAttribute("emp", emp1);
		
		RequestDispatcher rd=req.getRequestDispatcher("searchByid.jsp");
		rd.forward(req, res);
	
	}
	
}
