<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Form</title>
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
        background-color: #3498db; 
        color: white;
        padding: 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }
    
     input[type="submit"]:hover {
        background-color: #2980b9; 
    }
    
    </style>
    </head>

	<body>
	
	<header>
		<h3>Update Form</h3>
	</header>
	
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
	
                       <!-- update database -->

	<form action ="update" method="post">
	Member ID <input type="text" name="memID" value="<%=id%>" readonly><br><br>
	Name <input type="text" name="name" value="<%=name%>"> <br><br>
	Position<input type="text" name="position" value="<%=position%>"> <br><br>
	User Name<input type="text" name="uname" value="<%= username%>"> <br><br>
	Email<input type="text" name="email" value="<%=email %>"> <br><br>
	Phone Number<input type="text" name="phone" value="<%=phone %>"> <br><br>		
	Address<input type="text" name="address" value="<%=address %>"> <br><br>
	Password<input type="password" name="pass" value="<%=password %>"> <br><br>
	
	<input type="submit" name="submit" value="Update Data"><br><br>
	</form>



</body>
</html>