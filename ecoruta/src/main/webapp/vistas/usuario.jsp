<%-- 
    Document   : usuario
    Created on : 3/10/2022, 11:57:42 p. m.
    Author     : Alex
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="modelVo.OrdenVo"%>
<%@page import="model.OrdenDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
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

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script><link rel="icon" href="img/icono.png"/>
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
                    <!--<form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3"> 
                        <input type="Buscar" class="form-control form-control-dark" placeholder="Buscar..." aria-label="Search">
                    </form>
                    <div class="text-end">
                        <button type="button" class="btn btn-outline-light me-2" href="crear.html">Iniciar</button>
                        <button type="button" class="btn btn-warning">Registro</button>
                    </div>  -->
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
                                <a class="nav-link" href="nosotros.html">NOSOTROS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contactanos.html">CONTACTANOS</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <div class="container">
            <div class="row g-0">
                <div class="col-sm-6 col-md-8">
                    <form action="Controlador">
                        <h1>SOLICITUD DE RECOLECCION</h1>
                        <div class="form-group row">
                            <label for="validationNombre" class="form-label">Identificacion</label>
                            <input id="nombre" name="txtIdentificacion" type="text" class="form-control" required>
                        </div>
                        <div class="form-group row">
                            <label for="direccion" class="form-label">Direccion</label>
                            <input id="direccion" name="txtDireccion" type="text" class="form-control" required>
                        </div>
                        <div class="form-group row">
                            <label for="ciudad" class="form-label">Ciudad</label>
                            <input id="ciudad" name="txtCiudad" type="text" class="form-control" required>
                        </div>
                        <div class="form-group row">
                            <label for="start">Fecha de recolecion</label>
                            <input type="date" id="start" name="date" value="2022-07-22" min="2022-01-01" max="2023-12-31" required>
                        </div>
                        <div class="form-group row">
                            <label for="ciudad" class="form-label">Dimensiones</label>
                            <input id="ciudad" name="txtDimension" type="text" class="form-control" required>
                        </div><br>
                        <div class="form-floating">
                            <textarea class="form-control" name="txtDescripcion" placeholder="Leave a comment here" id="descripcion" style="height: 100px"></textarea>
                            <label for="descripcion">Deja una breve descripcion del los productos a recojer</label>
                        </div>

                        <!-- Submit button -->
                        <button type="submit" class="btn btn-primary btn-block mb-4"name="accion" value="Servicio">SOLICITAR SERVICIO</button>

                    </form>
                </div>
                <div class="col-6 col-md-4">

                </div>
            </div>

        </div>
        <div class="container">
            <h2>LISTA DE PEDIDOS</h2>
        <table class="table table-bordered border-dark">
                <thead>
                    <tr>
                       <th scope="col">Id orden</th>
                        <th scope="col">Descripción</th>
                        <th scope="col">Fecha de recolección</th>
                        <th scope="col">Estado</th>
                        <th scope="col">Dimensiones</th>
                    </tr>
                </thead>
                <% 
                    HttpSession s = request.getSession();
                    Integer documento = (Integer)s.getAttribute("documento");
                    OrdenDao ordendao = new OrdenDao();
                    List<OrdenVo> listorden = ordendao.listar_ordenes_usuario(documento);
                    Iterator<OrdenVo> iter_orden = listorden.iterator();
                    OrdenVo regOrden = null;
                    while (iter_orden.hasNext()){
                        regOrden = iter_orden.next();
                        String estado = null;
                    
                %>
                <tbody>
                    <tr>
                        <td><%= regOrden.getId_orden() %></td>
                        <td><%= regOrden.getDescripcion() %></td>
                        <td><%= regOrden.getFecha_orden_recogida() %></td>
                        <% if ( regOrden.getEstado().equals("6") ) {
                               estado = "Ingresada";
                            }else if ( regOrden.getEstado().equals("7") ) {
                               estado = "En proceso";
                            } else if( regOrden.getEstado().equals("8") ) {
                               estado = "Finalizada";}
                            
                        %>
                        <td><%= regOrden.getEstado() %></td>
                        <td><%= regOrden.getDimensiones() %></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
    </div>
    </body>
</html>
