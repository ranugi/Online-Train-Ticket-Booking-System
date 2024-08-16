<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>

<style>
	body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }
    
    header{
    	text-align: center;
    	color:black;
    	padding:10px 0;
    	width: 100%;
    	box-sizing: border-box;
    }
    
    form {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
        text-align: center;
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
        background-color: #4caf50; 
        color: white;
        padding: 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }
    
     input[type="submit"]:hover {
        background-color: #45a049; 
    }
    
    
</style>

</head>

<body>
	             <!-- Login -->
	
	<form action="Log" method="post">              <!-- no any sensitive data in the url -->
	
	<header><h1>Login Form</h1></header>
	<br><br>
	            
		User Name <input type="text" name="uid" placeholder="Enter your username"> <br><br>
		Password <input type="password" name="pass" placeholder="Enter your password"> <br><br><br>
		
		<input type="submit" name="submit" value="Login">
		
	</form>
		
</body>
</html> 