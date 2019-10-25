        /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conexion {
    private String url="jdbc:oracle:thin:@localhost:1521:xe";//url de nuestro odbc
    private String usuario="system";
    private String clave="qwert"; 
    private Connection con=null;

    public Connection conectar(){   
        try{
            Class.forName("oracle.jdbc.OracleDriver");
            con=DriverManager.getConnection( url, usuario,clave);
        }  catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {   
           ex.printStackTrace();
        }  
       
        return con;
        
    }
}
