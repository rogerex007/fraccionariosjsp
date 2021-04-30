<%-- 
    Document   : index
    Created on : 30 abr 2021, 9:02:10
    Author     : roger
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link href="public/css/main.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-md ">
                <div class="container">

                    <h2 style = "color: #fff;">Operaciones con fraccionarios</h2>

                    <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
                            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon">
                            <i class="fi-xnsuxl-three-bars-solid" style="color:#fff; font-size:28px;"></i>
                        </span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="#inicio">Inicio
                                    <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/formularioSumaFraccionario.html">Suma</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/formularioRestaFraccionario.html">Resta</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/formularioMultFraccionario.html">Multiplicación</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/formularioDivFraccionario.html">División</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <br>
        <br>
        <br>
        <br>
        <br>
        <section>
            <h1 style="text-align: center;">Operaciónes con fracciónes</h1>
            <div class="c-container">
                
                <div class="card">
                    <img src="public/img/op_2.png" alt="" srcset="">
                    <h4> Suma
                    </h4>
                </div>
                <div class="card">
                    <img src="public/img/op_2.png" alt="" srcset="">
                    <h4> Resta</h4>
                </div>
                <div class="card">
                    <img src="public/img/op_2.png" alt="" srcset="">
                    <h4> Multiplicación</h4>
                </div>
                <div class="card">
                    <img src="public/img/op_2.png" alt="" srcset="">
                    <h4>División
                    </h4>
                </div>
            </div
        </div>
    </section>

    <footer>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8=" crossorigin="anonymous"></script>
        <script defer src="https://friconix.com/cdn/friconix.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    </footer>
</body>
</html>
