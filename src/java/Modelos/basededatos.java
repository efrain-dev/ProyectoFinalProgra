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
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author efrai
 */
public class basededatos {
   
    private Conexion conn;
    private Connection cn;
    private PreparedStatement prstmt = null;
    private ResultSet result = null;
    private String[][] usuario;
    private  StringBuffer sb = new StringBuffer();
    
    public basededatos(){
        conn= new Conexion();
        cn=conn.conectar();

    }

     public String insert(String codigo, String email,String pass,String nombre,String apellido,String dpi,String nit){
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
                    return "1";
                }else{
                    return"0";
                }
       }catch(SQLException e){
            String error = e.getMessage();  
            if(error.indexOf("ORA-00001") != -1){
                return "0";
            }else{
                return "0";
            }
        }
        

    }
    public StringBuffer login(String email,String pass){
       
        PreparedStatement prstmt = null;
        ResultSet result = null;
        String sql = "SELECT * FROM USUARIOS WHERE EMAIL='"+email+"' AND PASS ='"+pass+"'";
        try{
            
     
             prstmt = cn.prepareStatement(sql); 
            
             result = prstmt.executeQuery();
            
              
                  

                while(result.next()){
            sb.append("[");    sb.append("{\"id\": \""+result.getString(1)+"\",\"contra\": \""+result.getString(2)
                      +"\",\"nombre\": \""+result.getString(3)+"\",\"apellido\":\""+result.getString(4)
                      +"\",\"nit\": \""+result.getString(5)+"\",\"dpi\": \""+result.getString(6)
                      +"\",\"email\": \""+result.getString(7)+"\"}");
	sb.append("]");
                      
                }
              
              
                  
                  
              
       }catch(SQLException e){
            String error = e.getMessage();  
            if(error.indexOf("ORA-00001") != -1){
                sb.append("ORA-00001");

            }else{
               
            }
        }
   
       return sb; 
          
    
    }
      public StringBuffer loginAdmin(String email,String pass){
       String respuesta="";
        PreparedStatement prstmt = null;
        ResultSet result = null;
        String sql = "SELECT * FROM ADMINISTRADORES WHERE EMAIL='"+email+"' AND PASS ='"+pass+"'";
        try{
            
     
             prstmt = cn.prepareStatement(sql); 
            
             result = prstmt.executeQuery();
              
                  
                sb.append("0");   
                while(result.next()){
                     sb.append("1");      
                }
              
              
                  
                  
              
       }catch(SQLException e){
            String error = e.getMessage();  
            if(error.indexOf("ORA-00001") != -1){
                respuesta =("ORA-00001");

            }else{
               
            }
        }
   
       return sb; 
          
    
    }
     public String insertRegistros(String id, String idcontenedor,String tipodaño,String area,String costo,String causa,String mec,String sup,String img1, String img2){
        String sql = "INSERT INTO REGISTRO(IDUSUARIO ,IDECONTENEDOR ,TIPODAÑO ,AREA  ,COSTO ,CAUSA ,MEC ,SUP ,IMG1 ,IMG2)  VALUES(?,?,?,?,?,?,?,?,?,?)";
        try{
             prstmt = cn.prepareStatement(sql); 
            prstmt.setString(1, id);
            prstmt.setString(2, idcontenedor);
            prstmt.setString(3, tipodaño);
            prstmt.setString(4, area);
            prstmt.setString(5, costo);
            prstmt.setString(6, causa);
            prstmt.setString(7, mec);
            prstmt.setString(8, sup);
            prstmt.setString(9, img1);
            prstmt.setString(10, img2);
          
            
             int resultado = prstmt.executeUpdate(); 
                if(resultado > 0){
                    return "1";
                }else{
                    return"0";
                }
       }catch(SQLException e){
            String error = e.getMessage();  
            if(error.indexOf("ORA-00001") != -1){
                return "0";
            }else{
                return "0";
            }
        }
        

    }
   public void verRegistros(StringBuffer respuesta){   
        String sql="select * from REGISTROS";
        try{
        prstmt = cn.prepareStatement(sql);                        
        result = prstmt.executeQuery();            
            respuesta.append("<table id=\"tabla_elementos\" border='1' class=\"tabla-1\">");
            respuesta.append("<thead>");  
            //respuesta.append("<center><h5 >").append(" Registros Existentes  ").append("</tr></center>");
            respuesta.append("<tr id=\"trprincipal\" >");
            respuesta.append("<td style=\"width:100px;\">").append("ALUMNO_ID").append("</td>");//titulo de la columna
            respuesta.append("<td style=\"width:340px;\">").append("NOMBRE").append("</td>");//titulo de la column
            respuesta.append("</tr>");
            respuesta.append("</thead>");
            if (result!=null){
                while (result.next()){
                respuesta.append("<tr>");
                 respuesta.append("<td >").append(result.getString("ALUMNO_ID")).append("</td>");
                respuesta.append("<td >").append(result.getString("NOMBRE")).append("</td>");
               // respuesta.append("<td id=\"").append(index).append("_1\"  ondblclick=\"edit(this.id);\">").append(result.getString("DESCRIPCION")).append("</td>");
                respuesta.append("</tr>");
                }
            }else{
                respuesta.append("error al consultar");
            }
            respuesta.append("</table>");
        }
        catch(SQLException ex){
            ex.printStackTrace();
        }
    }
    
public StringBuffer previewReg(String id){  
 PreparedStatement prstmt = null;
        ResultSet result = null;   
       String sql="SELECT * FROM REGISTRO WHERE IDUSUARIO='"+id+"'";
        try{
        prstmt = cn.prepareStatement(sql);                        
        result = prstmt.executeQuery();            
                while (result.next()){
                sb.append("<tr>");
                 sb.append("<td>").append(result.getString("IDECONTENEDOR")).append("</td>");
                sb.append("</tr>");
                }
          
        }
        catch(SQLException ex){
            ex.printStackTrace();
        }
        System.out.println("Adentro de el preview Registros");
        System.out.println(sb);
        return sb;
    }
public StringBuffer previewRegAdmin(){  
 PreparedStatement prstmt = null;
        ResultSet result = null;   
       String sql="SELECT * FROM REGISTRO";
        try{
        prstmt = cn.prepareStatement(sql);                        
        result = prstmt.executeQuery();            
                while (result.next()){
                sb.append("<tr>");
                 sb.append("<td>").append(result.getString("IDECONTENEDOR")).append("</td>");
                sb.append("</tr>");
                }
          
        }
        catch(SQLException ex){
            ex.printStackTrace();
        }
        
        return sb;
    }
public StringBuffer buscarRegistroAdmin(String idCon){  
 PreparedStatement prstmt = null;
        ResultSet result = null;   
       String sql="SELECT * FROM REGISTRO WHERE IDECONTENEDOR='"+idCon+"'";
        try{
            int subtotal=0; 
        prstmt = cn.prepareStatement(sql);                        
        result = prstmt.executeQuery();  
                   
                while (result.next()){
                    
                sb.append("<tr>");
                 sb.append("<td>").append(result.getString("IDUSUARIO")).append("</td>");
                 sb.append("<td>").append(result.getString("IDECONTENEDOR")).append("</td>");
                 sb.append("<td>").append(result.getString("TIPODAÑO")).append("</td>");
                 sb.append("<td>").append(result.getString("AREA")).append("</td>");
                 sb.append("<td>").append(result.getInt("COSTO")).append("</td>"); subtotal = subtotal+result.getInt("COSTO");
                 sb.append("<td>").append(result.getString("CAUSA")).append("</td>");
                 sb.append("<td>").append(result.getString("MEC")).append("</td>");
                 sb.append("<td>").append(result.getString("SUP")).append("</td>");
                 sb.append("<td>").append(result.getString("IMG1")).append("</td>");
                 sb.append("<td>").append(result.getString("IMG2")).append("</td>");
                sb.append("</tr>");
                }
                     
                sb.append("<tr>");
                 sb.append("<td>").append("</td>");
                 sb.append("<td>").append("</td>");
                 sb.append("<td>").append("</td>");
                 sb.append("<td>").append("TOTAL").append("</td>");
                 sb.append("<td>").append(subtotal).append("</td>");
                 sb.append("<td>").append("</td>");
                 sb.append("<td>").append("</td>");
                 sb.append("<td>").append("</td>");
                 sb.append("<td>").append("</td>");
                 sb.append("<td>").append("</td>");
                sb.append("</tr>");
          
        }
        catch(SQLException ex){
            ex.printStackTrace();
        }

        return sb;
    }
public StringBuffer buscarRegistro(String id, String idCon){  
 PreparedStatement prstmt = null;
        ResultSet result = null;   
       String sql="SELECT * FROM REGISTRO WHERE IDUSUARIO='"+id+"' AND IDECONTENEDOR='"+idCon+"'";
        try{
            int subtotal=0; 
        prstmt = cn.prepareStatement(sql);                        
        result = prstmt.executeQuery();  
                   
                while (result.next()){
                    
                sb.append("<tr>");
                 sb.append("<td>").append(result.getString("IDUSUARIO")).append("</td>");
                 sb.append("<td>").append(result.getString("IDECONTENEDOR")).append("</td>");
                 sb.append("<td>").append(result.getString("TIPODAÑO")).append("</td>");
                 sb.append("<td>").append(result.getString("AREA")).append("</td>");
                 sb.append("<td>").append(result.getInt("COSTO")).append("</td>"); subtotal = subtotal+result.getInt("COSTO");
                 sb.append("<td>").append(result.getString("CAUSA")).append("</td>");
                 sb.append("<td>").append(result.getString("MEC")).append("</td>");
                 sb.append("<td>").append(result.getString("SUP")).append("</td>");
                 sb.append("<td>").append(result.getString("IMG1")).append("</td>");
                 sb.append("<td>").append(result.getString("IMG2")).append("</td>");
                sb.append("</tr>");
                }
                     
                sb.append("<tr>");
                 sb.append("<td>").append("</td>");
                 sb.append("<td>").append("</td>");
                 sb.append("<td>").append("</td>");
                 sb.append("<td>").append("TOTAL").append("</td>");
                 sb.append("<td>").append(subtotal).append("</td>");
                 sb.append("<td>").append("</td>");
                 sb.append("<td>").append("</td>");
                 sb.append("<td>").append("</td>");
                 sb.append("<td>").append("</td>");
                 sb.append("<td>").append("</td>");
                sb.append("</tr>");
          
        }
        catch(SQLException ex){
            ex.printStackTrace();
        }

        return sb;
    }
public StringBuffer listarUsuarios(){  
 PreparedStatement prstmt = null;
        ResultSet result = null;   
       String sql="SELECT * FROM USUARIOS";
        try{
        prstmt = cn.prepareStatement(sql);                        
        result = prstmt.executeQuery();  
                   
                while (result.next()){
                    
                sb.append("<tr>");
                 sb.append("<td>").append(result.getString("ID_EMPLEADO")).append("</td>");
                 sb.append("<td>").append(result.getString("PASS")).append("</td>");
                 sb.append("<td>").append(result.getString("NOMBRE")).append("</td>");
                 sb.append("<td>").append(result.getString("APELLIDO")).append("</td>");
                 sb.append("<td>").append(result.getString("DPI")).append("</td>");
                 sb.append("<td>").append(result.getString("NIT")).append("</td>");
                 sb.append("<td>").append(result.getString("EMAIL")).append("</td>");
                sb.append("</tr>");
                }
        }
        catch(SQLException ex){
            ex.printStackTrace();
        }

        return sb;
    }
}
