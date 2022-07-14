package com.adj.emgm;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	EmployeStore employeeStore = new EmployeInMemoryStore();
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		
		
		String employeeid=req.getParameter("empId");
		int eid=Integer.parseInt(employeeid);
		Employee emobj=employeeStore.getEmployeeById(eid);
		req.setAttribute("editList", emobj);
		RequestDispatcher rd=req.getRequestDispatcher("editEmployee.jsp");
		rd.forward(req, res);
		
		
	}
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		String empid=req.getParameter("id");
		int id=Integer.parseInt(empid);
		Employee emp=employeeStore.getEmployeeById(id);
		String name=req.getParameter("name");
		String salary=req.getParameter("salary");
		double sal=Double.parseDouble(salary);
		String contactno=req.getParameter("contact_no");
		long con=Long.parseLong(contactno);
		String city=req.getParameter("city");
		emp.setName(name);
		emp.setSalary(sal);
		emp.setContact_no(con);
		emp.setCity(city);
		//RequestDispatcher rd=req.getRequestDispatcher("DisplayServlet");
		//rd.forward(req, res);
		res.sendRedirect("DisplayServlet");
		out.println("<h4>Update Successfully........</h4>");
	}

}
