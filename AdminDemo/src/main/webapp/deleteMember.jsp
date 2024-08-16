<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Account</title>

<style>

	
	 body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: flex-start;
        height: 100vh;
    }
    
    header {
        text-align: center;
        background-color: #3498db;
        color: white;
        padding: 10px;
        width: 100%;
        box-sizing: border-box;
    }
    
    form {
        max-width: 400px;
        background-color: #ffffff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
        width: 100%;
        box-sizing: border-box;
    }
    
    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    
    input[type="submit"] {
        width: 100%;
        background-color: #e74c3c; 
        color: white;
        padding: 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }
    
     input[type="submit"]:hover {
        background-color: #c0392b; 
    }
    
    </style>


</head>
<body>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String position = request.getParameter("position");
		String username = request.getParameter("uname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String password = request.getParameter("pass");
	%>
	<h1>Member Account Delete</h1>
	
	
	<!-- Delete -->
	
<form action ="delete" method="post">                       <!-- no any sensitive data in the url -->

	Member ID <input type="text" name="memID" value="<%=id%>" readonly><br><br>
	Name <input type="text" name="name" value="<%=name%>"readonly> <br><br>
	Position<input type="text" name="position" value="<%=position%>"readonly> <br><br>
	User Name<input type="text" name="uname" value="<%= username%>"readonly> <br><br>
	Email<input type="text" name="email" value="<%=email %>"readonly> <br><br>
	Phone Number<input type="text" name="phone" value="<%=phone %>"readonly> <br><br>		
	Address<input type="text" name="address" value="<%=address %>"readonly> <br><br>
		
	<input type="submit" name="submit" value="Delete Account"><br><br>
	</form>

</body>
</html>