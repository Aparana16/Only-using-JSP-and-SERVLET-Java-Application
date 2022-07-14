package com.adj.emgm;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteServletId extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	EmployeStore employeeStore = new EmployeInMemoryStore();

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		String empId = req.getParameter("id");
		int id = Integer.parseInt(empId);
		System.out.println("employeeid :" + id);
		Employee emp = employeeStore.getEmployeeById(id);
		employeeStore.deleteEmployeeId(emp);
		// RequestDispatcher rd = req.getRequestDispatcher("displaylist.jsp");
		// rd.forward(req, res);
		res.sendRedirect("DisplayServlet");
	}

}
