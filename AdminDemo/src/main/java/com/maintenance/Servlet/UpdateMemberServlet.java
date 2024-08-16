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

@WebServlet("/UpdateMemberServlet")

                //Using Inheritance

public class UpdateMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("memID");
		String name=request.getParameter("name");
		String position=request.getParameter("position");
		String usernameme=request.getParameter("uname");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String password=request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = maintenanceDBUtil.updateMember(id, name, position, usernameme, email, phone, address, password);
		
		if(isTrue == true) {
			
			List<maintenance_crew> mntDetails = maintenanceDBUtil.getMaintenance_crewDetails(id);
			request.setAttribute("mntDetails", mntDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("crewAccount.jsp");
			dis.forward(request, response);
			
		}
		
		else{
			
			List<maintenance_crew> mntDetails = maintenanceDBUtil.getMaintenance_crewDetails(id);
			request.setAttribute("mntDetails", mntDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("crewAccount.jsp");
			dis.forward(request, response);
		}
	}

}
