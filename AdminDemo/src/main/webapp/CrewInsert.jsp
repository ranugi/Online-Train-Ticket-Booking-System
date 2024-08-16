<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Member Data</title>

<style>
	    
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f7f7;
        margin: 0;
        padding: 0;
        display: flex;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
    }
    
    form {
        max-width: 400px;
        width: 100%;
        background-color: #ffffff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        text-align: center;
        box-sizing: border-box;
    }
    
   input[type="text"], input[type="password"] {
        width: calc(100% - 20px);
        margin-bottom: 20px;
        padding: 12px;
        border: 1px solid #cccccc;
        border-radius: 5px;
        font-size: 14px;
        box-sizing: border-box;
    }
    
    input[type="submit"] {
        width: calc(100% - 20px);
        padding: 12px;
        background-color: #4caf50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s;
        box-sizing: border-box;
    }
    
        input[type="submit"]:hover {
        background-color: #45a049;
    }
    
    h2 {
        margin-bottom: 30px;
        font-size: 24px;
        color: #333333;
    }
    
    </style>
    
  </head>
    
<body>                   <!-- data inserting -->

	<form action="insert" method = "post">    <!-- no any sensitive data in the url -->
	<h1>New Member Data</h1>
		Name<input type="text" name="name" placeholder="Enter your name"><br><br>
		Position <input type="text" name="position" placeholder="Enter your position"><br><br>
		Username<input type="text" name="uid" placeholder="Enter your username"><br><br>
		Email<input type="text" name="email" placeholder="Enter your email"><br><br>
		Phone Number<input type="text" name="phone" placeholder="Enter your phone number"><br><br>
		Address<input type="text" name="address" placeholder="Enter your address"><br><br>
		Password<input type="text" name="pwd" placeholder="Enter your password"><br><br><br>
		
		<input type ="submit" name="submit" value="Create a member">
	</form>

</body>
</html>