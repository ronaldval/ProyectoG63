
package connection;

import com.mysql.jdbc.Connection;

public class DBConnection {
    Connection connection;
    static String bd="xxxxx";
    static String port="3306";
    static String login="root";
    static String password="admin";

    public DBConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:"+this.port+"/"+this.bd;
            System.out.println("conexion establecida");
            
        } catch (Exception ex) {
            System.out.println("error en la conexion");
        }
    }
    
    
}   