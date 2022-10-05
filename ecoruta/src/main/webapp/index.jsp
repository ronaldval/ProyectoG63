<%-- 
    Document   : index
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>EcoRuta</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>7
        <link rel="icon" href="img/icono.png"/>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body  background="./img/header-bg.jpg">
        <header class="p-3 mb-2 bg-success text-white">
            <div class="container">
                <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                    <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
                    </a>
                    <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-lg-start mb-md-0">
                        <li><a href="#" class="nav-link px-2 text-white">Telefonos: 00+00000000</a></li>
                        <li><a href="#" class="nav-link px-2 text-white">Correo: info@ecoruta.com</a></li>
                    </ul>
                    <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
                        <input type="Buscar" class="form-control form-control-dark" placeholder="Buscar..." aria-label="Buscar">
                    </form>
                    <div class="text-end">
                        <button type="button" onclick="location.href = 'vistas/ini_sesion.jsp'" class="btn btn-outline-light me-2"> Iniciar Sesion</button>

                        <button type="button" onclick="location.href = 'vistas/crear_cuenta.jsp'" class="btn btn-warning">Registro</button>
                    </div>
                </div>
            </div>
        </header>
        <div class="container-fluid">
            <nav class="navbar navbar-expand-lg navbar-light bg-light p-3" id="menu">
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="index.jsp">INICIO</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="vistas/nosotros.jsp">NOSOTROS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="vistas/contactanos.jsp">CONTACTANOS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link"  href="Controlador?accion=listar" > Listar Usuario</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link"  href="Controlador?accion=listarReciclador" > Listar Reciclador</a>
                            </li>

                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <br> <br>
        <div class="container">
            <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="./img/img1.jpg" class="d-block w-100" alt="..." width="150" height="450">
                        <div class="carousel-caption d-none d-md-block">
                            <h1 style="color:#11C156; background-color: rgba(195, 155, 211, 0.4);" >EcoRuta</h1>
                            <h4 style="color:#000000; background-color: rgba(195, 155, 211, 0.4);">EcoRuta brinda la mejor solucion para recojer los desechos
                                ya sean tecnologicos, contaminantes o reciclaje
                                y asi disminuir la contaminacion en el medio ambiente</h4>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="./img/img2.jpg" class="d-block w-100" alt="..." width="150" height="450">
                        <div class="carousel-caption d-none d-md-block">
                            <h1 style="color:#000000; background-color: rgba(195, 155, 211, 0.4);">DESECHOS TECNOLOGICOS</h1>
                            <h4 style="color:#000000; background-color: rgba(195, 155, 211, 0.4);">Sabias que la basura tecnologica esta aumentando debido a la alta demanda 
                                y que el tratamiento inadecuado puede ocasionar graves impactos al medio 
                                y poner en riesgo la salud humana</h4>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="./img/img3.jpg" class="d-block w-100" alt="..." width="150" height="450">
                        <div class="carousel-caption d-none d-md-block">
                            <h1 style="color:#000000; background-color: rgba(195, 155, 211, 0.4);">RECICLAJE DE PILAS</h1>
                            <h4 style="color:#000000; background-color: rgba(195, 155, 211, 0.4);">Sabias que al reciclar las pilas la materia prima puede ser utilizada 
                                nuevamente y disminuye los daños al medio ambiente</h4>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        <br> <br>
        <div class="container">
            <div class="card-group">
            <div class="card" style="width: 18rem;">
                <img src="..." class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Beatriz Giraldo</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </div>

            <div class="card" style="width: 18rem;">
                <img src="..." class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Nancy Basto</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </div>

            <div class="card" style="width: 18rem;">
                <img src="..." class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Edith Tapias</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </div><br>
            </div>
<div class="card-group">
            <div class="card" style="width: 18rem;">
                <img src="..." class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Alex Pinchao</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </div>

            <div class="card" style="width: 18rem;">
                <img src="..." class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Ronald valdes</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </div>
        </div>
        </div>
        <br> <br>
        <section class="">
            <!-- Footer -->
            <footer class="bg-success text-white text-center">
                <!-- Grid container -->
                <div class="container p-4">
                    <!--Grid row-->
                    <div class="row">
                        <!--Grid column-->
                        <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                            <h5 class="text-uppercase">Footer Content</h5>

                            <p>
                                Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iste atque ea quis
                                molestias. Fugiat pariatur maxime quis culpa corporis vitae repudiandae
                                aliquam voluptatem veniam, est atque cumque eum delectus sint!
                            </p>
                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                            <h5 class="text-uppercase">Redes Sociales</h5>

                            <ul class="list-unstyled mb-0">
                                <li>
                                    <a href="#!" class="text-white">Link 1</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">Link 2</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">Link 3</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">Link 4</a>
                                </li>
                            </ul>
                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                            <h5 class="text-uppercase mb-0">Integrantes</h5>

                            <ul class="list-unstyled">
                                <li>
                                    <a href="#!" class="text-white">Ronald Valdes</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">Beatriz Giraldo</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">Nancy Basto</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">Alex Pinchao</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">Edith Tapias</a>
                                </li>
                            </ul>
                        </div>
                        <!--Grid column-->
                    </div>
                    <!--Grid row-->
                </div>
                <!-- Grid container -->

                <!-- Copyright -->
                <div class="text-center p-3" style="background-color: rgba(143,143,143);">
                    © 2020 Copyright:
                    <a class="text-white" href="">Grupo 63-1</a>
                </div>
                <!-- Copyright -->
            </footer>
            <!-- Footer -->
        </section>
        
    </body>
</html>
