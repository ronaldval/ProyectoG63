/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnection;
import java.time.LocalDate;
import modelVo.OrdenVo;
/**
 *
 * @author Alex
 */
public class OrdenDao {
    public List<OrdenVo> listar() throws SQLException {
        List<OrdenVo> respuesta_login = new ArrayList<OrdenVo>();
        
        //System.out.println("----------------- entro en registrodao"); 
        DBConnection cn = new DBConnection();
        Connection con = null;
        //Connection conn = JDBCUtilities.getConnection();
        //Statement stm = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String consulta = "SELECT Id_Orden, Identificacion_Usuario, Identificacion_Reciclador, Estado, Fecha_Orden_Creacion, Fecha_Orden_Recogida, Decripcion, Dimensiones FROM orden WHERE Estado <> 6";
        try {
            
            con = cn.getConnection();
                    
            ps = con.prepareStatement(consulta);
            rs = ps.executeQuery();
            
            while (rs.next()){
                OrdenVo vo = new OrdenVo();
                vo.setId_orden(rs.getInt("Id_Orden"));
                vo.setIdentificacion_usuario(rs.getInt("Identificacion_Usuario"));
                vo.setIdentificacion_recolector(rs.getInt("Identificacion_Reciclador"));
                vo.setEstado(rs.getInt("Estado"));
                vo.setFecha_orden_creacion(rs.getDate("Fecha_Orden_Creacion"));
                vo.setFecha_orden_recogida(rs.getString("Fecha_Orden_Recogida"));
                vo.setDescripcion(rs.getString("Decripcion"));
                vo.setDimensiones(rs.getString("Dimensiones"));
                respuesta_login.add(vo);
            }
        }finally {
            if (rs != null){
                rs.close();
            }
            if (ps != null){
                ps.close();
            }
            if (con != null){
                con.close();
            }
        }
        return respuesta_login;
    }
    
    public List<OrdenVo> listar_total() throws SQLException {
        List<OrdenVo> respuesta_login = new ArrayList<OrdenVo>();
        
        //System.out.println("----------------- entro en registrodao"); 
        DBConnection cn = new DBConnection();
        Connection con = null;
        //Connection conn = JDBCUtilities.getConnection();
        //Statement stm = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String consulta = "SELECT Id_Orden, Identificacion_Usuario, Decripcion FROM orden where Estado = 6";
        try {
            
            con = cn.getConnection();
                    
            ps = con.prepareStatement(consulta);
            rs = ps.executeQuery();
            
            while (rs.next()){
                OrdenVo vo = new OrdenVo();
                vo.setId_orden(rs.getInt("Id_Orden"));
                vo.setIdentificacion_usuario(rs.getInt("Identificacion_Usuario"));
                vo.setDescripcion(rs.getString("Decripcion"));
                respuesta_login.add(vo);
            }
        }finally {
            if (rs != null){
                rs.close();
            }
            if (ps != null){
                ps.close();
            }
            if (con != null){
                con.close();
            }
        }
        return respuesta_login;
    }
    
    public boolean add(OrdenVo ord){
        DBConnection cn = new DBConnection();
        Connection con = null;
        //Connection conn = JDBCUtilities.getConnection();
        //Statement stm = null;
        PreparedStatement ps = null;
        LocalDate hoy = LocalDate.now();
        //ResultSet rs = null;
        String consulta = "INSERT INTO orden(Numero_orden, Identificacion_Usuario, Identificacion_Reciclador, Estado, Direccion, Ciudad, Fecha_Orden_Creacion, Fecha_Orden_Recogida, Decripcion, Dimensiones)"
                +" VALUES (1,'"+ord.getIdentificacion_usuario()+"',0,6,'"+ord.getDireccion()+"','"+ord.getCiudad()+"','"+hoy+"', '"+ord.getFecha_orden_recogida()+"', '"+ord.getDescripcion()+"','"+ord.getDimensiones()+"' )" ;
        
        System.out.println("----------------- entro en ordenDao INSERT");
        System.out.println("----------------- entro en ordenDao consulta" + consulta); 
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(consulta);
            ps.executeUpdate();
        } catch (Exception e) {
            System.err.println("Error" + e);
        }
        return false;
    }
}
