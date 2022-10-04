/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.sql.*;

/**
 *
 * @author Alex
 */
public class JDBCUtilities {
    /*private static final String UBICACION_BD = "ecorutaDb.db";

    public static Connection getConnection() throws SQLException {
        String url = "jdbc:sqlite:" + UBICACION_BD;
        return DriverManager.getConnection(url);
    }*/
    Connection con;
    public JDBCUtilities (){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecoruta","root", "");
            
            System.out.println("----------------- entro en bd");
        }catch (Exception e){
            
            System.err.println("Error" + e);
        }
    }
    
    public Connection getConnection(){
        return con;
     }
}
