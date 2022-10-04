/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


import java.sql.*;
import java.util.*;
import modelVo.RegistroVo;
import connection.DBConnection;
/**
 *
 * @author Alex
 */
public class RegistroDao {
    public List<RegistroVo> listar() throws SQLException {
        List<RegistroVo> respuesta_login = new ArrayList<RegistroVo>();
        
        System.out.println("----------------- entro en registrodao"); 
        DBConnection cn = new DBConnection();
        Connection con = null;
        //Connection conn = JDBCUtilities.getConnection();
        //Statement stm = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String consulta = "SELECT Nombre, Apellidos, Tipo_Usuario from Registro";
        try {
            
            con = cn.getConnection();
                    
            ps = con.prepareStatement(consulta);
            rs = ps.executeQuery();
            
            while (rs.next()){
                RegistroVo vo = new RegistroVo();
                vo.setNombre(rs.getString("Nombre"));
                vo.setApellido(rs.getString("Apellidos"));
                vo.setTipo_usuario(rs.getInt("Tipo_Usuario"));
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
