/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;

/**
 *INSERT INTO USUARIOS(ID_EMPLEADO,PASS,NOMBRE,APELLIDO,DPI,NIT,EMAIL)  VALUES(?,?,?,?,?,?,?)
 * @author efrai
 */
public class Usuario {
    String id;
    String pass;
    String nombre;
    String apellido;
    String dpi;
    String nit;
    String email;
    
       Usuario() {
        
        }
    public Usuario(String id, String pass, String nombre, String apellido, String dpi, String nit, String email) {
        this.id = id;
        this.pass = pass;
        this.nombre = nombre;
        this.apellido = apellido;
        this.dpi = dpi;
        this.nit = nit;
        this.email = email;
    }

    


   
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDpi() {
        return dpi;
    }

    public void setDpi(String dpi) {
        this.dpi = dpi;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Usuario{" + "id=" + id + ", pass=" + pass + ", nombre=" + nombre + ", apellido=" + apellido + ", dpi=" + dpi + ", nit=" + nit + ", email=" + email + '}';
    }

    
    
}
