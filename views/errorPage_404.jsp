<%-- 
    Document   : errorPage_404
    Created on : Jul 14, 2020, 12:30:36 PM
    Author     : Bhatti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
              <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <img class="img-fluid" src="HTML-404-Page-Animated.png"></img>
            <div class="text-center">
             <p class="text-capitalize text-danger font-weight-bold"> page not found</p>
            <a class="btn btn-outline-success" href="home.jsp"> Go Home</a>   
            </div>
            
        </div>
    </body>
</html>
