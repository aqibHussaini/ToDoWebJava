<%-- 
    Document   : viewTodo
    Created on : Jul 13, 2020, 4:21:30 PM
    Author     : Bhatti
--%>

<%@page import="com.Pojo.TOdoPojo"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.pojoDao"%>
<%@page errorPage="errorPage_404.jsp" %>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
           <link rel="stylesheet" href="my.css"></link>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>View Todo</title>

    </head>
    <body style="background: #2196f3;">
      
          <!-- navbar start-->
       <nav class="navbar navbar-expand-lg navbar-dark bg-color " >
            <div class="container">
                <a class="navbar-brand animate__animated animate__heartBeat" href="home.jsp">MyTodoApp</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto text-capitalize menus">
                        <li class="nav-item active">
                            <a class="nav-link " href="#home_section"><span class="fa fa-home  fa-lg"></span>Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="addform.jsp"><span class="fa fa-plus  fa-lg"></span>addTodo</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link " href="viewTodo.jsp" tabindex="-1" aria-disabled="true"> <span class="fa fa-envelope-open-o  fa-lg fa-spin"></span> viewTodo</a>
                        </li>
                       
                    </ul>               
                </div>
            </div>
        </nav>
            <!-- navbar end-->
        <div class="container">
        <%
            List<TOdoPojo> list = pojoDao.fetchAllTodo();
            for (TOdoPojo object : list) {
        %>
        <div class="card text-center mt-3">
            <div class="card-header bg-dark text-white">
                <h3 >ID : <%= object.getId()%></h3> 
            </div>
            <div class="card-body">
                <h3 class="card-title">Todo Name : <%= object.getName()%></h3>
                <h3 class="card-text text-capitalize">Todo Description : <%= object.getDescription()%></h3>
                <h4 class="card-text">Status :  <%= object.getStatus()%> </h4>
                <a href="updateTodo.jsp?id=<%= object.getId()%>" class="btn btn-outline-success">update</a>
                <a href="deletetodo?id=<%= object.getId()%>" class="btn btn-outline-danger">delete</a>
            </div>
            <div class="card-footer ">
                <h5>Time: <%= object.getDate()%></h5>
            </div>
        </div>

        <%
            }
        %>
             
        </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>