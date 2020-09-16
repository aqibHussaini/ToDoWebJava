        
<%@page import="java.util.List"%>
<%@page import="com.helper.pojoDao"%>
<%@page import="com.Pojo.TOdoPojo"%>
<%@page errorPage="errorPage_404.jsp" %>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="my.css"></link>
        <link href="https://fonts.googleapis.com/css2?family=Archivo&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"
  />
        <title>ToDo App</title>
    </head>
    <body class="font">
        <!--     navbar    -->
        <%@include file="navbar.jsp" %>
        <!--       navbar section end       -->
        
        <!--       header section start       -->
        <header class="header" id="home_section">
            <div class="container text-center h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-md-12 col-12 col-lg-12">
                        <h1 class="display-1 text-capitalize animate__animated animate__bounceInDown wow ">Welcome to Todo App</h1>
                        <p style="font-size: 25px;" class="animate__animated animate__fadeIn wow"data-wow-delay="700ms" >Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. </p>
                        <a href="addform.jsp"class="btn btn-info btn-lg animate__animated animate__backInUp font-weight-bold wow" >Add Todo</a>
                        <button class="btn btn-danger btn-lg animate__animated animate__backInUp font-weight-bold wow">View Todo</button>
                    </div>  
                </div>    
            </div>  
        </header>
        <!--       header section    end    -->
        <!-- message section start-->
        <section class=" py-5" style=" background-image: linear-gradient(to top, #a18cd1 0%, #fbc2eb 100%);" id="message_section">
            <div class="container text-center animate__animated animate__bounceInRight wow">
                <h1>Build fast, responsive sites with Bootstrap</h1>
                <p>Quickly design and customize responsive mobile-first sites with Bootstrap, the world?s most popular front-end open source toolkit, featuring Sass variables and mixins, responsive grid system, extensive prebuilt components, and powerful JavaScript plugins.</p>
                <button class="btn btn-primary animate__animated animate__bounceInUp wow">Checkout</button>
            </div>
        </section>

        <!-- message section end-->
        <!--       recent todo    start    -->
        <section class="todos mt-3" id="recent_Todo">
            <div class="container text-center">
                <h3 class="text-capitalize text-center">Recent Todo's</h3>
                <hr class="w-25 mx-auto"/>
                <div class="row">
                    <!--   fetching data -->
                    <%
                        List<TOdoPojo> list = pojoDao.fetchRecentPost();
                        for (TOdoPojo object : list) {%> 
                    <div class="col-md-4 ">
                        <div class="card animate__animated animate__bounceInLeft wow">
                            <div class="card-header bg-color text-white">
                                <%=object.getId()%>  
                            </div>
                            <div class="card-body">
                                <img src='pexels-photo-531844.jpeg' class="img-fluid"></img>
                                <p class="card-text "> Todo Name :  <%=object.getName()%></p>
                                <p  class="card-text">  Todo Description :<%=object.getDescription()%></p>
                            </div>
                            <div class="card-footer bg-color text-white">
                                <p><%=object.getStatus()%></p>
                            </div>
                        </div>

                    </div>
                    <%
                        }
                    %>

                    <div class=" container text-center mt-2">
                        <a href="viewTodo.jsp " class="btn btn-outline-danger">View More</a> 
                    </div>

                </div>
            </div> 
        </section>

        <!--      recent todo    end    -->
        <!--     footer start       -->
        <section class="footer mt-2 bg-color text-white "  style="height: 20vh;" id="footer_Section" >
            <div class="container align-items-center  text-center " >
                <h1 class="text-capitalize p-4">this is footer</h1>
                <a href="facebook.com" class="text-white font-weight-bold text-capitalize"><i class="fa fa-facebook-official fa-lg" aria-hidden="true"></i> facebook </a><br>
                <a href="google.com" class="text-white font-weight-bold text-capitalize"><i class="fa fa-google fa-lg" aria-hidden="true"></i>  GooGle </a>
            </div> 
        </section>
        <!--     footer end       -->
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="jquery.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="wao.js"></script>
       
         <script>
              new WOW().init();
          </script>
           <script src="smoothanimation.js"></script>     
    </body>
</html>