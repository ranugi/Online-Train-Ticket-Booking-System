package com.maintenance.Servlet;
                             //controller class
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maintenance.model.maintenance_crew;
import com.maintenance.service.maintenanceDBUtil;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//validation
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		try {
		List<maintenance_crew> mntDetails = maintenanceDBUtil.validate(username, password);
		request.setAttribute("mntDetails", mntDetails);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("crewAccount.jsp");
		dis.forward(request, response);
	}

}
