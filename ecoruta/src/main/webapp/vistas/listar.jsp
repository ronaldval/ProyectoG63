<%-- 
    Document   : listar
    Author     : Alex
--%>

<%@page import="model.vo.OrdenVo"%>
<%@page import="model.dao.OrdenDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.vo.RegistroVo"%>
<%@page import="model.dao.RegistroDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Personas </h1>
            <table border = "1">
                <thead>
                    <tr>
                        <td>Nombre</td>
                        <td>Apellido</td>
                        <td>Tipo de usuario</td>
                        <td>Acciones</td>
                    </tr>
                </thead>
                <% 
                    RegistroDao dao = new RegistroDao();
                    List<RegistroVo> list = dao.listar();
                    Iterator<RegistroVo> iter = list.iterator();
                    RegistroVo reg = null;
                    while (iter.hasNext()){
                        reg = iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td><%= reg.getNombre() %></td>
                        <td><%= reg.getApellido() %></td>
                        <td><%= reg.getTipo_usuario() %></td>
                        <td>
                            <a>Editar</a>
                            <a>Remove</a>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
        <div>
            <h1>Ordenes </h1>
            <table border = "1">
                <thead>
                    <tr>
                        <td>Id orden</td>
                        <td>Identificacion Usuario</td>
                        <td>Identificacion recolector</td>
                        <td>Estado</td>
                        <td>Fecha Creacion</td>
                        <td>Fecha recogida</td>
                        <td>Descripcion</td>
                        <td>Dimensiones</td>
                        <td>Acciones</td>
                    </tr>
                </thead>
                <% 
                    OrdenDao ordendao = new OrdenDao();
                    List<OrdenVo> listorden = ordendao.listar();
                    Iterator<OrdenVo> iter_orden = listorden.iterator();
                    OrdenVo regOrden = null;
                    while (iter_orden.hasNext()){
                        regOrden = iter_orden.next();
                    
                %>
                <tbody>
                    <tr>
                        <td><%= regOrden.getId_orden() %></td>
                        <td><%= regOrden.getIdentificacion_usuario() %></td>
                        <td><%= regOrden.getIdentificacion_recolector() %></td>
                        <td><%= regOrden.getEstado() %></td>
                        <td><%= regOrden.getFecha_orden_creacion() %></td>
                        <td><%= regOrden.getFecha_orden_recogida() %></td>
                        <td><%= regOrden.getDescripcion() %></td>
                        <td><%= regOrden.getDimensiones() %></td>
                        <td>
                            <a>Editar</a>
                            <a>Remove</a>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </body>
</html>
