package com.maintenance.service;
                                    //validation
import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.maintenance.Util.DBConnect;
import com.maintenance.model.maintenance_crew;

public class maintenanceDBUtil {
	
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	
	
	public static List<maintenance_crew> validate(String userName, String password){
		
		ArrayList<maintenance_crew> mt = new ArrayList<>();
		

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from maintenance_crew where username = '"+userName+"' and password = '"+password+"'";             
		    rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String position = rs.getString(3);
				String userM = rs.getString(4);
				String email = rs.getString(5);
				String phone = rs.getString(6);
				String address = rs.getString(7);	
				String passM = rs.getString(8);
				
				maintenance_crew mc =new maintenance_crew(id, name, position, userM, email, phone, address, passM);
				mt.add(mc);
			}	
			
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		
		return mt;
	}
	
	
	
	//insert member to the maintenance crew
		
		public static boolean insertCrew(String name, String position,String username, String email, String phone,
				String address, String password) {
			
			boolean isSuccess=false;
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "insert into maintenance_crew values (0,'"+name+"', '"+position+"','"+username+"', '"+email+"', '"+phone+"', '"+address+"', '"+password+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
			}
			
			catch(Exception e){
				e.printStackTrace();
				
			}
			
			return isSuccess;
		}
		
		public static boolean updateMember(String id, String name, String position, String username, String email, String phone, String address, String password) {
	
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "update maintenance_crew set name='"+name+"', position='"+position+"', username='"+username+"', email='"+email+"', phone='"+phone+"', address='"+address+"', password='"+password+"'"
						+ "where id='"+id+"'";
				
				int rs = stmt.executeUpdate(sql);
				
				if(rs>0) {
					isSuccess = true;
				}
				
				else {
					isSuccess = false;
				}
				
			}
			
			catch(Exception e) {
				e.printStackTrace();
			}
			
		return isSuccess;
		
		}
		
		public static List<maintenance_crew> getMaintenance_crewDetails(String Id){
			
			int convertedID = Integer.parseInt(Id);
			
			ArrayList<maintenance_crew> mnt = new ArrayList<>();
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from maintenance_crew where id='"+convertedID+"' ";
				rs = stmt.executeQuery(sql);
				
				while (rs.next()) {
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String position = rs.getString(3);
					String username = rs.getString(4);
					String email = rs.getString(5);
					String phone = rs.getString(6);
					String address = rs.getString(7);
					String password = rs.getString(8);
					
					maintenance_crew m = new maintenance_crew(id, name, position, username, email, phone, address, password);
					mnt.add(m);
				
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			
			return mnt; 
		}
		
		
		
		public static boolean deleteMember(String id) {
		
			int convId = Integer.parseInt(id);
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "delete from maintenance_crew where id='"+convId+"'";
				int r = stmt.executeUpdate(sql);
				
				if(r>0) {
					isSuccess = true;
				}
				
				else {
					isSuccess = false;
				}
				
			}
			
			catch(Exception e) {
				e.printStackTrace();
			}
			
		return isSuccess;
		
		}
}
