<%-- 
    Document   : updateTodo
    Created on : Jul 13, 2020, 7:30:35 PM
    Author     : Bhatti
--%>

<%@page import="com.Pojo.TOdoPojo"%>
<%@page import="com.helper.pojoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
              <link rel="stylesheet" href="my.css"></link>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body>
    <%
    int id=Integer.parseInt(request.getParameter("id"));
    TOdoPojo object=pojoDao.fetchTodoById(id);
    
    %>
    <div class="container">
     <div class="row">
     <div class="col-md-6 offset-3">
         <form action="update" method="POST">
         <div  class="card">
            <div class="card-header bg-dark text-white">
                <h1 class="card-text ">Update Todo</h1>
         </div>  
             <div class="card-body">
                 <h3 class="card-text">Todo ID :  <%=object.getId()%> </h3> 
                 <input type="hidden"  name="id" value="<%=object.getId()%>"></input>
                 <h5 class="card-text">Todo Name :  <%=object.getName()%> </h5> 
                  <input type="hidden" name="name" value="<%=object.getName()%>"></input>
                 <h5 class="card-text">Todo Description :  <%=object.getDescription()%> </h5> 
                  <input type="hidden"  name="Description" value="<%=object.getDescription()%>"></input>
                   <div class="text-center form-group">
                 <select class="form-control" name="status"> 
                     <option>done</option>
                     <option>pending</option>
                 </select>
                   </div>
                     <input type="hidden"  name="date" value="<%=object.getDate()%>"  > </input>
                     <div class="text-center form-group">
                          <button class="btn btn-outline-info"> update</button>
                     </div>
                    
             </div>
             <div class="card-footer">
                  <h3 class="card-text">Todo Date :  <%=object.getDate()%> </h3>
             </div>
                  
                
         </div>       
         </form>
    </div>
    </div>   
    </div>
    
    </body>
</html>
