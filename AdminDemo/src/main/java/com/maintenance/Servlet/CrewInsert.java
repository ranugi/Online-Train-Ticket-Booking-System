package com.maintenance.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maintenance.service.maintenanceDBUtil;
 

/**
 * Servlet implementation class CrewInsert
 */
@WebServlet("/CrewInsert")
public class CrewInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name=request.getParameter("name");	
		String position=request.getParameter("position");
		String username=request.getParameter("uid");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone"); 
		String address=request.getParameter("address");
		String password=request.getParameter("pwd");
		
		boolean isTrue;
		
		isTrue = maintenanceDBUtil.insertCrew(name, position, username, email, phone, address, password);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request,response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request,response);
		}
	
	
	}	
}
