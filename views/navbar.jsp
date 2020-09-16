<%-- 
    Document   : navbar
    Created on : Jul 12, 2020, 11:10:58 PM
    Author     : Bhatti
--%>

<nav class="navbar navbar-expand-lg navbar-dark bg-color " style="position: fixed; width:100%;">
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
                        <li class="nav-item active">
                            <a class="nav-link " href="#recent_Todo" tabindex="-1" aria-disabled="true"> Recent Todo</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link " href="#message_section" tabindex="-1" aria-disabled="true">Message</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link " href="#footer_Section" tabindex="-1" aria-disabled="true">Footer</a>
                        </li>
                    </ul>               
                </div>
            </div>
        </nav>