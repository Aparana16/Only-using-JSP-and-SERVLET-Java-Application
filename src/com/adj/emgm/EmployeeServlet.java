package com.adj.emgm;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Method;

public class EmployeeServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -93851071473721556L;
	EmployeStore employeeStore = null;// new EmployeInMemoryStore();

	/**
	 *
	 */
	@SuppressWarnings("deprecation")
	@Override
	public void init(ServletConfig config) throws ServletException {
		String store = config.getInitParameter("Storage");		  
		try {
			 Class<?> c = Class.forName(store);
			
			 employeeStore=(EmployeStore)c.newInstance();
			 System.out.println(c.getName());
			 System.out.println();
			  System.out.println("pakage name :" +c.getPackageName());
			  System.out.println();
			  System.out.println("simple is :" +c.getSimpleName());
			  System.out.println();
			  
			  Method method[] = c.getDeclaredMethods();
			 for(int i=0;i<method.length;i++) {
				System.out.println("Methods ("+(i+1) +")" +method[i]);
				System.out.println("**************************************************************************");
			 }
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch bloc
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		super.init(config);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		/*
		 * ServletConfig config=getServletConfig(); String
		 * emp=config.getInitParameter("arrayListStorage"); System.out.println(emp);
		 */
		String name = req.getParameter("firstName");
		String salary = req.getParameter("salary");
		double sal = Double.parseDouble(salary);
		String city = req.getParameter("city");
		String contactno = req.getParameter("contactno");
		long con = Long.parseLong(contactno);
		// System.out.println(name);
		Employee employee = new Employee(name, sal, con, city);

		int curId = employeeStore.addEmployee(employee);

		RequestDispatcher rd = req.getRequestDispatcher("addemployee.jsp");
		rd.include(req, res);

		System.out.println(curId +" Employee add successfully");
		out.println("add successfully");
	}
}
