<%-- 
    Document   : ini_sesion
    Created on : 5/10/2022, 8:57:05 a. m.
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>EcoRuta/Iniciar Sesion</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script><link rel="icon" href="img/icono.png"/>
    </head>
    <body>
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
                        <input type="Buscar" class="form-control form-control-dark" placeholder="Buscar..." aria-label="Search">
                    </form>
                    <div class="text-end">
                        <button type="button" onclick="location.href='Controlador?accion=ini_sesion'" class="btn btn-outline-light me-2"> Iniciar Sesion</button>

                        <button type="button" onclick="location.href='Controlador?accion=crear'" class="btn btn-warning">Registro</button>
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
                                <a class="nav-link active" aria-current="page" href="index.html">INICIO</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="vistas/nosotros.html">NOSOTROS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="vistas/contactanos.html">CONTACTANOS</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <section class="vh-100" style="background-color: #16b14f;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col col-xl-10">
                        <div class="card" style="border-radius: 1rem;">
                            <div class="row g-0">
                                
                                <div>
                               
                                    
                                </div>
                                <div class="col-md-6 col-lg-5 d-none d-md-block">
                                    <img src="https://cdn.pixabay.com/photo/2013/07/13/12/05/earth-159131_960_720.png" alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                                </div>
                                <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                    <div class="card-body p-4 p-lg-5 text-black">

                                        <form action="Controlador">

                                            <div class="d-flex align-items-center mb-3 pb-1">
                                                <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                                                <span class="h1 fw-bold mb-0">EcoRuta</span>
                                            </div>

                                            <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Iniciar sesion en su cuenta</h5>
                                            
                                            <div class="col-md-4">
                                                <label for="tipo_iniciar">TIPO DE INGRESO</label>
                                                <select name="txtTipo" id="tipo_iniciar" class="form-select" required>
                                                    <option selected disabled value="">Seleccione...</option>
                                                    <option>RECICLADOR</option>
                                                    <option>USUARIO</option> 
                                                </select>
                                            </div><br><br>

                                            <div class="form-outline mb-4">
                                                <input type="number" id="Identificacion"   name="txtIdentificacion" class="form-control form-control-lg" />
                                                <label class="form-label" for="Identificacion">Identificacion</label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="password" id="contraseña" name="txtContrasena" class="form-control form-control-lg" />
                                                <label class="form-label" for="contraseña">Contraseña</label>
                                            </div>

                                            <div class="pt-1 mb-4">
                                                <button type="submit" class="btn btn-dark btn-lg btn-block" name="accion" value="Acceder">acceder</button>
                                            </div>


                                            <p class="mb-5 pb-lg-2" style="color: #393f81;">aun no tiene cuenta? <a href="crear.jsp" style="color: #393f81;">Registrese aqui</a></p>

                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
