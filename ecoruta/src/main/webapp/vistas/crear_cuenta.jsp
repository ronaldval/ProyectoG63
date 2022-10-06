<%-- 
    Document   : crear_cuenta
    Created on : 4 oct 2022, 17:19:29
    Author     : Paolita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>EcoRuta/Registro</title>
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
<<<<<<< Updated upstream:ecoruta/src/main/webapp/vistas/crear_cuenta.jsp
                        <button type="button" onclick="location.href='ini_sesion.jsp'" class="btn btn-outline-light me-2"> Iniciar Sesion</button>
                       
                        <button type="button" onclick="location.href='crear_cuenta.jsp'" class="btn btn-warning">Registro</button>
=======
                        <button type="button" onclick="location.href = 'ini_sesion.jsp'" class="btn btn-outline-light me-2"> Iniciar Sesion</button>

                        <button type="button" onclick="location.href = 'crear.jsp'" class="btn btn-warning">Registro</button>
>>>>>>> Stashed changes:ecoruta/src/main/webapp/vistas/crear.jsp
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
<<<<<<< Updated upstream:ecoruta/src/main/webapp/vistas/crear_cuenta.jsp
                                <a class="nav-link" href="contactanos.jsp">CONTACTANOS</a>
=======
                                <a class="nav-link" href="contactanos.html">CONTACTANOS</a>
>>>>>>> Stashed changes:ecoruta/src/main/webapp/vistas/crear.jsp
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
                                <div><h3 class="text-center" style="color:green;">BIENVENIDO A ECORUTA</h3></div>
                                <div class="col-md-6 col-lg-5 d-none d-md-block">
                                    <h4 class="text-center" style="color:teal;">Clasifica tus desechos<br> y ayudanos a cuidar el medio ambiente</h4>
                                    <img src="https://media.istockphoto.com/vectors/ewaste-recycle-bin-with-old-electronic-equipment-vector-id693971212?k=20&m=693971212&s=612x612&w=0&h=DXbIceUx-0GQBCO5pGbXb1VZiAl5mCCq_4I8pJTwwTc=" alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                                </div>
                                <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                    <div class="card-body p-4 p-lg-5 text-black">

<<<<<<< Updated upstream:ecoruta/src/main/webapp/vistas/crear_cuenta.jsp
                                        <form>
                                            <div class="col-xs-6">
                                                <a href="index.html" class="active" id="login-form-link">Inicio</a>
                                            </div>
=======
                                        <form action="Controlador"> 
                                            
>>>>>>> Stashed changes:ecoruta/src/main/webapp/vistas/crear.jsp
                                         
                                            <div class="input-group mb-3">
                                                <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">TIPO DE IDENTIFICACION</button>
                                                <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item" href="#">CEDULA</a></li>
                                                    <li><a class="dropdown-item" href="#">RUT</a></li>
                                                    <li><a class="dropdown-item" href="#">NIT</a></li>
                                                </ul>
<<<<<<< Updated upstream:ecoruta/src/main/webapp/vistas/crear_cuenta.jsp
                                                <input type="text" class="form-control" aria-label="Text input with dropdown button" required>
=======
                                                <input type="text" class="form-control" name="txtNumero" aria-label="Text input with dropdown button" required>
                                            </div>-->
                                            
                                            <div class="col-md-4">
                                                <label for="tipo"></label>
                                                <select name="txtTipoId" id="tipo" class="form-select" required>
                                                    <option selected disabled value="">Seleccione...</option>
                                                    <option>CEDULA</option>
                                                    <option>RUT</option> 
                                                    <option>NIT</option> 
                                                </select>
>>>>>>> Stashed changes:ecoruta/src/main/webapp/vistas/crear.jsp
                                            </div>

                                            <div class="form-group row">
                                                <label for="validationNombre" class="form-label">Nombre</label>
                                                <input id="nombre" name="nombre" type="text" class="form-control" required>
                                            </div>
                                            <div class="form-group row">
                                                <label for="apellido" class="form-label">Correo electronico</label>
                                                <input id="apellido" name="apellido" type="text" class="form-control" required>
                                            </div>
                                            <div class="form-group row">
                                                <label for="telefono" class="form-label">Telefono</label>
                                                <input id="telefono" name="telefono" type="text" class="form-control" required>
                                            </div>

                                            <div class="col-md-4">
                                                <label for="tipo">TIPO DE REGISTRO</label>
                                                <select name="tipo" id="tipo" class="form-select" required>
                                                    <option selected disabled value="">Seleccione...</option>
                                                    <option>RECICLADOR</option>
                                                    <option>USUARIO</option> 
                                                </select>
                                            </div>

                                            <div class="form-group row">
                                                <label for="inputPassword3" class="form-label">Contrasena</label>
                                                <div class="col-sm-10">
                                                    <input type="password" class="form-control" id="inputPassword3" placeholder="Contrasena" required>
                                                </div>
                                            </div><br>
                                            <!-- Submit button -->
                                            <button type="submit" class="btn btn-primary btn-block mb-4">CREAR CUENTA</button>
                                            
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
