package com.maintenance.model;

public class maintenance_crew {

	private int id;
	private String name;
	private String position;
	private String username;
	private String email;
	private String phone;
	private String address;
	private String password;
	private static maintenance_crew maintenance_crew;
	
	           //singleton design pattern 
	
	private maintenance_crew() {
		
	}
	
	public static maintenance_crew getInstanceOfmaintenance_crew() {
		if(maintenance_crew == null) {
			maintenance_crew = new maintenance_crew();
		}
		
		return maintenance_crew;
	}
	
	public maintenance_crew(int id, String name, String position, String username, String email,
			String phone, String address, String password) {
		
		this.id = id;
		this.name = name;
		this.position = position;
		this.username = username;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.password = password;		
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getPosition() {
		return position;
	}

	public String getUsername() {
		return username;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getAddress() {
		return address;
	}
	
	public String getPassword() {
		return password;
	}
}
