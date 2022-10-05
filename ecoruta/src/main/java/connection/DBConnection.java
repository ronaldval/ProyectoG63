
package connection;

/**
*Para esta conexión se debe crear la base de datos en MariaDb
* Este script es para copiar y correrlo en MariaDb
-----------------------------------------------------------------------
CREATE DATABASE ecorutadb;
USE ecorutadb;

DROP TABLE IF EXISTS `clasificacion`;
CREATE TABLE IF NOT EXISTS `clasificacion` (
  `Id_Clasificacion` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(60) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`Id_Clasificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

INSERT INTO `clasificacion` (`Id_Clasificacion`, `Descripcion`) VALUES
(1, 'Cedula'),
(2, 'Nit'),
(3, 'Rut'),
(4, 'Usuario'),
(5, 'Reciclador'),
(6, 'Ingresada'),
(7, 'En proceso'),
(8, 'Finalizada');

DROP TABLE IF EXISTS `orden`;
CREATE TABLE IF NOT EXISTS `orden` (
  `Id_Orden` int(11) NOT NULL AUTO_INCREMENT,
  `Numero_orden` int(11) NOT NULL,
  `Identificacion_Usuario` int(11) NOT NULL,
  `Identificacion_Reciclador` int(11) NOT NULL,
  `Estado` int(11) NOT NULL,
  `Fecha_Orden_Creacion` date NOT NULL,
  `Fecha_Orden_Recogida` date NOT NULL,
  `Decripcion` text COLLATE latin1_spanish_ci NOT NULL,
  `Dimensiones` varchar(60) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`Id_Orden`),
  KEY `Identificacion_Usuario` (`Identificacion_Usuario`),
  KEY `Identificacion_Reciclador` (`Identificacion_Reciclador`),
  KEY `Estado` (`Estado`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

INSERT INTO `orden` (`Id_Orden`, `Numero_orden`, `Identificacion_Usuario`, `Identificacion_Reciclador`, `Estado`, `Fecha_Orden_Creacion`, `Fecha_Orden_Recogida`, `Decripcion`, `Dimensiones`) VALUES
(1, 1, 1010010100, 12345678, 7, '2022-09-30', '2022-09-30', 'aceite viejo', '2 kilos'),
(2, 1, 1010010100, 12345678, 7, '2022-09-30', '2022-09-30', 'aceite viejo', '2 kilos'),
(3, 1, 1010010100, 12345678, 7, '2022-09-30', '2022-09-30', 'aceite viejo', '2 kilos'),
(7, 4, 1010010100, 789456123, 8, '2022-09-30', '2022-09-30', 'aceite viejo', '2 kilos');

DROP TABLE IF EXISTS `registro`;
CREATE TABLE IF NOT EXISTS `registro` (
  `Id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(60) COLLATE latin1_spanish_ci NOT NULL,
  `Apellidos` varchar(60) COLLATE latin1_spanish_ci NOT NULL,
  `Tipo_Documento` int(11) NOT NULL,
  `Numero_Documento` int(11) NOT NULL,
  `Email` varchar(40) COLLATE latin1_spanish_ci NOT NULL,
  `Tipo_Usuario` int(11) NOT NULL,
  `Contrasena` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`Id_registro`),
  UNIQUE KEY `Numero_Documento` (`Numero_Documento`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

INSERT INTO `registro` (`Id_registro`, `Nombre`, `Apellidos`, `Tipo_Documento`, `Numero_Documento`, `Email`, `Tipo_Usuario`, `Contrasena`) VALUES
(1, 'Alex', 'Pinchao', 1, 1010010100, 'alexpinchao@gmail', 4, ''),
(2, 'pepito', 'perez', 2, 12345678, 'pepitoperez@gmail.com', 5, 'gggggg'),
(3, 'juana', 'rodri', 2, 789456123, 'juanarodir@gmail.com', 5, '22222');
 
ALTER TABLE `orden`
  ADD CONSTRAINT `orden_ibfk_1` FOREIGN KEY (`Identificacion_Usuario`) REFERENCES `registro` (`Numero_Documento`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orden_ibfk_2` FOREIGN KEY (`Identificacion_Reciclador`) REFERENCES `registro` (`Numero_Documento`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orden_ibfk_3` FOREIGN KEY (`Estado`) REFERENCES `clasificacion` (`Id_Clasificacion`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*
**/
import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

public class DBConnection {
    Connection connection;
    static String bd="ecorutadb";
    static String port="3306";
    static String login="root";
    static String password="admin";
    public DBConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:"+this.port+"/"+this.bd;
            connection = (Connection) DriverManager.getConnection(url, this.login, this.password);
            System.out.println("conexion establecida");
        } catch (Exception ex) {
            System.out.println("error en la conexion");
        }
    }
    public Connection getConnection(){
        return connection;
    } 
    public void Desconectar(){
        connection = null;
    }
}   