<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Member Data</title>


<style>

	body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: flex-start;
        min-height: 100vh;
    }

	table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        background-color: #fff;
    }

	 th, td {
        padding: 15px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
        
    th {
        background-color: #f2f2f2;
        font-weight: bold;
    }

    tr:hover {
        background-color: #f5f5f5;
    }
    
     a {
        text-decoration: none;
        color: #4caf50;
        transition: color 0.3s;
    }
    
    a:hover {
        color: #45a049;
    }
    
    header{
    	background-color: #4caf50;
        color: white;
        padding: 15px 0;
        width: 100%;
        text-align: center;
        box-sizing: border-box;
    }
    
    .update-button {
        background-color: #45a049; 
        color: white;
        border: none;
        padding: 15px 30px; 
        border-radius: 5px;
        cursor: pointer;
        font-size: 18px; 
        transition: background-color 0.3s;
        margin-top: 20px;
    }
    
 .update-button:hover {
        background-color: #4caf50; 
    }        
</style>

</head>

<body>

<header>
<h2>Member Data</h2>
</header>

	<table>
		<thead>
			<tr>
				<th>Heading</th>
				<th>Data</th>
	
	<c:forEach var = "crew" items = "${mntDetails}">
	
	<c:set var="id" value="${ crew.id}"/>
	<c:set var="name" value="${ crew.name}"/>
	<c:set var="position" value="${ crew.position}"/>
	<c:set var="username" value="${ crew.username}"/>	
	<c:set var="email" value="${ crew.email}"/>
	<c:set var="phone" value="${ crew.phone}"/>
	<c:set var="address" value="${ crew.address}"/>
	<c:set var="password" value="${ crew.password}"/>
	
	                                                       <!-- Information in the database  -->
	<tr>
		<td>Member ID</td>
		<td>${crew.id }</td>
	</tr>
	<tr>
		<td>Member Name</td>
		<td>${crew.name }</td>
	</tr>
	<tr>
		<td>Member Position</td>
		<td>${crew.position }</td>
	</tr>
	<tr>
		<td>Member User Name</td>
		<td>${crew.username }</td>
	</tr>
	<tr>
		<td>Member Email</td>
		<td>${crew.email }</td>
	</tr>
	<tr>
		<td>Member Phone Number</td>
		<td>${crew.phone }</td>
	</tr>
	<tr>
		<td>Member Address</td>
		<td>${crew.address }</td>
	</tr>
	<tr>
		<td>Member Password</td>
		<td>${crew.password   }</td>
	</tr>
	

	</c:forEach>


	</table>
	                               
	<c:url value="updateCrew.jsp" var="crewUpdate"> 
		<c:param name="id" value ="${id}"/>
		<c:param name="name" value ="${name}"/>
		<c:param name="position" value ="${position}"/>
		<c:param name="uname" value ="${username}"/>
		<c:param name="email" value ="${email}"/>
		<c:param name="phone" value ="${phone}"/>
		<c:param name="address" value ="${address}"/>
		<c:param name="pass" value ="${password}"/>
	</c:url>
	
	
	
	<a href="${crewUpdate}">
	<input type="button" name="update" value="Update Data">
	</a>
	<br>
	
	<c:url value = "deleteMember.jsp" var = "memDelete">
		<c:param name="id" value = "${id}"/>
		<c:param name="name" value = "${name}"/>
		<c:param name="position" value = "${position}"/>
		<c:param name="uname" value = "${username}"/>
		<c:param name="email" value = "${email}"/>
		<c:param name="phone" value = "${phone}"/>
		<c:param name="address" value = "${address}"/>
		<c:param name="pass" value = "${password}"/>
		
	</c:url>
	
	<a href="${memDelete}">
	<input type = "button" name = "delete" value = "Delete Account">
	</a>
	
</body>
</html>