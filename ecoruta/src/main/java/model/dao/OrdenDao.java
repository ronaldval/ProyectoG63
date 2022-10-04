/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.vo.OrdenVo;
import utils.JDBCUtilities;

/**
 *
 * @author Alex
 */
public class OrdenDao {
    public List<OrdenVo> listar() throws SQLException {
        List<OrdenVo> respuesta_login = new ArrayList<OrdenVo>();
        
        //System.out.println("----------------- entro en registrodao"); 
        JDBCUtilities cn = new JDBCUtilities();
        Connection con = null;
        //Connection conn = JDBCUtilities.getConnection();
        //Statement stm = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String consulta = "SELECT Id_Orden, Identificacion_Usuario, Identificacion_Reciclador, Estado, Fecha_Orden_Creacion, Fecha_Orden_Recogida, Decripcion, Dimensiones FROM orden WHERE 1";
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
                vo.setFecha_orden_recogida(rs.getDate("Fecha_Orden_Recogida"));
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
}
