/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;

import java.io.Writer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author efrai
 */
public class basededatos {
   
    private Conexion conn;
    private Connection cn;
    private PreparedStatement prstmt = null;
    private ResultSet result = null;
    
    public basededatos(){
        conn= new Conexion();
        cn=conn.conectar();
        
        
    }

     public void insert(String codigo, String email,String pass,String nombre,String apellido,String dpi,String nit,StringBuffer salida){
        String sql = "INSERT INTO USUARIOS(ID_EMPLEADO,PASS,NOMBRE,APELLIDO,DPI,NIT,EMAIL)  VALUES(?,?,?,?,?,?,?)";
         
        try{
             prstmt = cn.prepareStatement(sql); 
            prstmt.setString(1, codigo);
            prstmt.setString(2, pass);
            prstmt.setString(3, nombre);
           prstmt.setString(4, apellido);
            prstmt.setString(5, dpi);
            prstmt.setString(6, nit);
            prstmt.setString(7, email);
          
            
             int resultado = prstmt.executeUpdate(); 
                if(resultado > 0){
                    salida.append("1");
                }else{
                    salida.append("0");
                }
       }catch(SQLException e){
            String error = e.getMessage();  
            if(error.indexOf("ORA-00001") != -1){
                salida.append("ORA-00001");
            }else{
                salida.append(error);
            }
        }

    }
    
}
