<%-- 
    Document   : nosotros
    Created on : 4 oct 2022, 17:28:17
    Author     : Paolita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>EcoRuta/nosotros</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="icon" href="img/icono.png"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
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
                        <button type="button" onclick="location.href='ini_sesion.jsp'" class="btn btn-outline-light me-2"> Iniciar Sesion</button>
                       
                        <button type="button" onclick="location.href='crear_cuenta.jsp'" class="btn btn-warning">Registro</button>
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
                                <a class="nav-link" href="nosotros.jsp">NOSOTROS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contactanos.jsp">CONTACTANOS</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </body>
    <<h1>Nosotros</h1>
    <div class="clearfix">
        <img src="./img/" class="col-md-6 float-md-end mb-3 ms-md-3" alt="...">
        <p>
            Un p??rrafo de texto de marcador de posici??n. Lo estamos usando aqu?? para mostrar el uso de la clase clearfix. Estamos agregando bastantes frases sin sentido aqu?? para demostrar c??mo las columnas interact??an aqu?? con la imagen flotante.
        </p>
        <p>
            Como puedes ver, los p??rrafos se envuelven con gracia alrededor de la imagen flotante. Ahora imaginate c??mo se ver??a esto con alg??n contenido real aqu??, en lugar de solo este aburrido texto de marcador de posici??n que sigue y sigue, pero que en realidad no transmite informaci??n tangible. Simplemente ocupa espacio y en realidad no debe leerse.
        </p>
        <p>
            Y, sin embargo, aqu?? est??s, a??n perseverando en la lectura de este texto de marcador de posici??n, con la esperanza de obtener m??s informaci??n o alg??n huevo de pascua oculto de contenido. Una broma, tal vez. Desafortunadamente, no hay nada de eso aqu??.
        </p>
    </div>        ?? 2020 Copyright:
    <a class="text-white" href="">Grupo 63-1</a>
</div>
<div class="container overflow-hidden">
    <div class="row gx-5">
        <div class="col">
            <div class="p-3 border bg-light">Custom column padding</div>
        </div>
        <div class="col">
            <div class="p-3 border bg-light">Custom column padding</div>
        </div>
    </div>
</div>
    </body>
</html>
