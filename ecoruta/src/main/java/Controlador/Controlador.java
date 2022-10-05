/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.OrdenDao;
import model.RegistroDao;
import modelVo.OrdenVo;
import modelVo.RegistroVo;

/**
 *
 * @author Alex
 */
public class Controlador extends HttpServlet {
    
        String listar_usuario = "vistas/usuario.jsp";
    String listar_reciclador = "vistas/reciclador.jsp";
    String crear = "vistas/crear.jsp";
    String index = "index.html";
    String ini_sesion = "vistas/ini_sesion.jsp";
    RegistroVo reg = new RegistroVo();
    RegistroDao regDao = new RegistroDao();
    
    OrdenVo ord = new OrdenVo();
    OrdenDao ordDao = new OrdenDao();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("----------------- entro a controlador**** ");
        String acceso = "";
        String action = request.getParameter("accion");
        
        System.out.println("----------------- entro a controlador**** action" + action);
         System.out.println("----------------- entro a controlador**** listar" + listar_usuario);
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar_usuario;
        }else if (action.equalsIgnoreCase("listarReciclador")){
            acceso = listar_reciclador;
        }else if (action.equalsIgnoreCase("crear")){
            acceso = crear;
        }else if (action.equalsIgnoreCase("ini_sesion")){
            acceso = ini_sesion;
        }else if (action.equalsIgnoreCase("Agregar")){
            
            String tipoDocumento = request.getParameter("txtTipoId");
            String documento = request.getParameter("txtNumero");
            String nombre = request.getParameter("txtNombre");
            String apellido = request.getParameter("txtApellido");
            String correo = request.getParameter("txtCorreo");
            String telefono = request.getParameter("txtTelefono");
            String tipoUsuario = request.getParameter("txtTipo");
            String contrasena = request.getParameter("txtContrasena");
            
            if(tipoDocumento.equalsIgnoreCase("CEDULA")){
                reg.setTipo_documento(1);
            }else if(tipoDocumento.equalsIgnoreCase("RUT")) {
                reg.setTipo_documento(3);
            }else if(tipoDocumento.equalsIgnoreCase("NIT")) {
                reg.setTipo_documento(2);
            }
            
            if(tipoUsuario.equalsIgnoreCase("RECICLADOR")){
                reg.setTipo_usuario(5);
            }else if(tipoUsuario.equalsIgnoreCase("USUARIO")) {
                reg.setTipo_usuario(4);
            }
            
            reg.setNombre(nombre);
            reg.setApellido(apellido);
            reg.setNumero_documento(Integer.parseInt(documento));
            reg.setTelefono(Integer.parseInt(telefono));
            reg.setEmail(correo);
            reg.setContrasena(contrasena);
            regDao.add(reg);
            
            acceso = index;
            
         }else if (action.equalsIgnoreCase("Servicio")){
            
            String documento = request.getParameter("txtIdentificacion");
            String direccion  = request.getParameter("txtDireccion");
            String ciudad = request.getParameter("txtCiudad");
            String fecaRecoleccion = request.getParameter("date");
            String dimensiones = request.getParameter("txtDimension");
            String descripcion = request.getParameter("txtDescripcion");
            
            System.out.println("----------------- entro a controlador**** fecaRecoleccion" + fecaRecoleccion);
            
            ord.setIdentificacion_usuario(Integer.parseInt(documento));
            ord.setDireccion(direccion);
            ord.setCiudad(ciudad);
            
            /*SimpleDateFormat formato = new SimpleDateFormat("yyyy/MM/dd");
            Date dataFormateada = null;
            try { 
                dataFormateada = formato.parse(fecaRecoleccion);
            } catch (ParseException ex) {
                Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
            }*/
            
            ord.setFecha_orden_recogida(fecaRecoleccion);
            ord.setDimensiones(dimensiones);
            ord.setDescripcion(descripcion);
            ordDao.add(ord);
            
            acceso = index;
            
         }else if (action.equalsIgnoreCase("Acceder")){
            
            String documento = request.getParameter("txtIdentificacion");
            String contrasena  = request.getParameter("txtContrasena");
            System.out.println("----------------- entro a controlador Acceder");
            reg.setNumero_documento(Integer.parseInt(documento));
            reg.setContrasena(contrasena);
            
            try {
                List<RegistroVo> consulta_login = regDao.consulta_login(reg);

                System.out.println("----------------- entro a controlador consulta_login" + consulta_login);
                Iterator<RegistroVo> iter_ordent = consulta_login.iterator();
                RegistroVo regOrdent = null;
                while (iter_ordent.hasNext()){
                regOrdent = iter_ordent.next();
                System.out.println("nombre "+ regOrdent.getNombre() + " apellido "+ regOrdent.getApellido()+ " tipo "+ regOrdent.getTipo_usuario());
                }
            } catch (SQLException ex) {
                Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            
            acceso = index;
            
         }
        System.out.println("----------------- entro a controlador");
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
