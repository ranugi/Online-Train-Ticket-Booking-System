<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success message</title>

<style>
body {
    font-family: Arial, sans-serif;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
    background-color: #f2f2f2;
    margin: 0;
}
.success-message {
    text-align: center;
    background-color: #27ae60; 
    color: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
    display: flex;
    flex-direction: column;
    align-items: center;
}
.success-icon {
    font-size: 48px;
    margin-bottom: 10px;
}
</style>

</head>
<body>

	<div class="success-message">
        <div class="success-icon">&#10004;</div> 

	<h2>Data Inserted Successfully</h2>
	
	</div>
	
</body>
</html>