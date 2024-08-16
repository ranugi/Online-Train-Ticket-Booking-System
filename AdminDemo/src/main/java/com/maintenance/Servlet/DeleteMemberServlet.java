package com.maintenance.Servlet;

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


@WebServlet("/DeleteMemberServlet")
public class DeleteMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("memID");
		boolean isTrue;
		
		isTrue = maintenanceDBUtil.deleteMember(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("CrewInsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<maintenance_crew> mntDetails = maintenanceDBUtil.getMaintenance_crewDetails(id);
			request.setAttribute("mntDetails", mntDetails);
			
			RequestDispatcher dispatcher =request.getRequestDispatcher("crewAccount.jsp");
			dispatcher.forward(request, response);
			 
		}
		
		
	}

}
