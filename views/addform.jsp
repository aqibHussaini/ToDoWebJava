<%@page errorPage="errorPage_404.jsp" %>
<!doctype html>

<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Hello, world!</title>
        <link rel="stylesheet" href="my.css"></link>
        <script src="jquery.js"></script>
    </head>
    <body class="font text-capitalize"  style="background: url('bg.jpeg');  ">
        <!--     navbar    -->
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
        <!--       navbar section end       -->
        <div class="container "  >
            <div class="row mt-5 "  >
                <div class="col-md-6 offset-md-3 col-12">
                    <div class="card " >
                        <div class="card-header bg-color text-center text-white">
                            Add Todo
                        </div>
                        <div class="card-body">
                            <form id="T_form" action="addTodoServlet" method="POST">
                                <div class="form-group">
                                    <label >name of Todo</label>
                                    <input type="text" class="form-control " name="name" placeholder="enter name here" required/>
                                </div>
                                <div class="form-group">
                                    <label >description of todo</label>
                                    <textarea type="text" class="form-control " name="description" rows="5" required></textarea>
                                </div>
                                <div class="text-center" id="button">
                                    <button type="submit" id="btn_sub" class="btn btn-outline-success btn-lg">Submit</button>
                                </div>
                                <div id="loader" class="text-center" style="display: none;">
                                    <i class="fa fa-lg fa-refresh fa-spin fa-3x fa-fw "></i><br>
                                    <span>Loading... </span>

                                </div>
                            </form>
                        </div>
                    </div>
                </div> 
            </div>
        </div>



        <script>
            $("document").ready(function () {
                $("#T_form").submit(function (event)
                {
                    event.preventDefault();
                    var formdata = $("#T_form").serialize()
                    $("#loader").show();
                    $("#button").hide();
                    $.ajax({

                        url: "addTodoServlet",
                        data: formdata,
                        type: 'POST',
                        success: function (data)
                        {
                            swal({
                                title: "Good job!",
                                text: data,
                                icon: "success",
                                button: "ok",
                            });
                            $("#loader").hide();
                            $("#button").show();
                        },
                        error: function (data)
                        {
                            alert(data)
                            $("#loader").hide();
                            $("#button").show();
                        }
                    });
                });
            });
        </script>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>