<%-- 
    Document   : sumaFraccionarios
    Created on : 16/04/2021, 02:36:25 PM
    Author     : roger
--%>

<%@page import="logicaNegocio.Fraccionario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link href="../public/css/main.css" rel="stylesheet" type="text/css"/>
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
                                <a class="nav-link" href="../index.jsp">Inicio
                                    <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../pages/formularioSumaFraccionario.html">Suma</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#beneficios">Resta</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#team">Multiplicación</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#contacto">División</a>
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
        <div class="container">
            <h1>Multiplicación Fraccionario</h1>
            <hr>
            <%
                int n1 = Integer.parseInt(request.getParameter("numerador1"));
                int d1 = Integer.parseInt(request.getParameter("denominador1"));
                int n2 = Integer.parseInt(request.getParameter("numerador2"));
                int d2 = Integer.parseInt(request.getParameter("denominador2"));
                Fraccionario f1 = new Fraccionario(n1, d1);
                Fraccionario f2 = new Fraccionario(n2, d2);
                Fraccionario r = new Fraccionario();
                r = f1.multiplicacion(f2);
            %>
            <h3>Faccion Nro. 1</h3>
            <table border="1" class="table">
                <tbody>
                    <tr>
                        <td>Numerador</td>
                        <td><%= f1.getNumerador()%></td>
                    </tr>
                    <tr>
                        <td>Denominador</td>
                        <td><%= f1.getDenominador()%></td>
                    </tr>
                </tbody>
            </table>

            <h3>Faccion Nro. 2</h3>
            <table border="1" class="table">
                <tbody>
                    <tr>
                        <td>Numerador</td>
                        <td><%= f2.getNumerador()%></td>
                    </tr>
                    <tr>
                        <td>Denominador</td>
                        <td><%= f2.getDenominador()%></td>
                    </tr>
                </tbody>
            </table>

            <h3>Faccion respuesta</h3>
            <table border="1" class="table">
                <tbody>
                    <tr>
                        <td>Numerador</td>
                        <td><%= r.getNumerador()%></td>
                    </tr>
                    <tr>
                        <td>Denominador</td>
                        <td><%= r.getDenominador()%></td>
                    </tr>
                </tbody>
            </table>
        </div>

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
