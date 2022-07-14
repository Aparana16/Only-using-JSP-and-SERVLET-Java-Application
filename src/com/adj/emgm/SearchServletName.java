package com.adj.emgm;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SearchServletName extends HttpServlet {


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	EmployeStore employeeStore = new EmployeInMemoryStore();

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		String name = req.getParameter("SearchName");
		List<Employee> searchResultList = employeeStore.getsearchEmployee(name);
		
		req.setAttribute("list", searchResultList);
		
       RequestDispatcher rd=req.getRequestDispatcher("SearchName.jsp");
		rd.forward(req, resp);
		//resp.sendRedirect("SearchName.jsp");
       
	}

}
