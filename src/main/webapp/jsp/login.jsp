<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>   
<!doctype html>
<html lang="en">
  <head>
  <style>
  h1 { color: #ffffff; font-family: 'Raleway',sans-serif; font-size: 62px; font-weight: 800; line-height: 72px; margin: 0 0 24px; text-align: center; text-transform: uppercase; }
  p{ color: #ff4411; font-size: 48px; font-family: 'Signika', sans-serif; padding-bottom: 10px; }
</style>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Login Page</title>
  </head>
  
  <body>
    
    <div class="container mt-5 ">
    <h1 class="text-center">Login</h3>
    
   
		
		
    	
    	<!-- we have to give relative path here not absolute -->
	    <form action="loginProcess " method="post" modelAttribute="login">
	    
	    	 
		  	<div class="form-group">
		    <label for="userName">User Name</label>
		    <input required name="username" type="text" class="form-control" id="userName" aria-describedby="emailHelp" placeholder="Enter here">
		  	</div>
		  	
		  	<div class="form-group">
		    <label for="password">User Password</label>
		    <input required name="password" type="password" class="form-control" id="userPassword" aria-describedby="emailHelp" placeholder="Enter here">
		  	</div>
	    	
	    	
	    	<div class="container text-center">
	    	<button type="submit" class="btn btn-success">Log In</button>
	    	</div>	
	    
	    </form>
	    
	    <p style="font-style: italic; color: red;">${message}</p>
    
    </div>
    <h1><a href="home.jsp">Home</a></h1>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>