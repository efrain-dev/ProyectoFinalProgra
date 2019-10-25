<%-- 
    Document   : registro
    Created on : 15-oct-2019, 23:45:24
    Author     : efrai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
            <link href="css/style.css" rel="stylesheet" type="text/css"/>
            <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
            <script src="js/jquery-3.4.1.js" type="text/javascript"></script>
            <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
            <link href="css/fontawesome-free-5.11.2-web/css/all.min.css" rel="stylesheet" type="text/css"/>

            <script>
                $(document).ready(function(){
              $('.navbar').load('plantillas/barra.html');
           });            
           </script>
    </head>
    <body>
           
            <nav class="navbar navbar-expand navbar-dark sticky-top bg-dark"></nav>
            <div class="divregistro row justify-content-center align-items-center">

                <div class="registro my-2 mx-2 p-5 bg-dark text-white">
                          
                        <form class="formulario">
                            <div class="alert alert-success" id="mensajeRegistroO" role="alert" style="display: none;" >
                                Registro relizado Exitosamente
                                </div> <div class="alert alert-danger" id="mensajeRegistroI" role="alert" style="display: none;" >
                                    Datos Incorrectos
                                </div>
                                <div class="alert alert-danger" id="mensajeRegistroC" role="alert" style="display: none;" >
                                    Las contraseñas no coinciden 
                                </div>
                              <center> <h3 class="p-3">Registro</h3> </center>  
                           <div class="input-group form-group">
                              <div class="input-group-prepend">
                                <span class="input-group-text"> <li class=" fas fa-user"></li></span> 
                              </div>
                                <input type="text" class="form-control" id="inputNombre" placeholder="Escriba su Nombre">
                           </div>
                           <div class="input-group form-group">
                            <div class="input-group-prepend">
                              <span class="input-group-text"><li class=" fas fa-user"></li></span> 
                            </div>
                              <input type="text" class="form-control" id="inputApellido" placeholder="Escriba su apellido">
                         </div>
                         <div class="input-group form-group">
                            <div class="input-group-prepend">
                              <span class="input-group-text"><li class=" fas fa-id-badge"></li></span> 
                            </div>
                              <input type="text" class="form-control" id="inputCodigo" placeholder="Ingrese su Codigo de Empleado">
                         </div>
                         <div class="input-group form-group">
                                <div class="input-group-prepend">
                                  <span class="input-group-text"> <li class=" fas fa-envelope"></li></span> 
                                </div>
                                  <input type="email" class="form-control" id="inputEmail" placeholder="Escriba su Email">
                             </div>
                         <div class="input-group form-group">
                            <div class="input-group-prepend">           
                                <span class="input-group-text"><i class="fas fa-key"></i></span> 
                            </div>
                               <input type="password" id="pass1"  class="form-control"placeholder="Ingresar Contraseña">               
                           </div>
                           <div class="input-group form-group">
                            <div class="input-group-prepend">           
                                <span class="input-group-text"><i class="fas fa-key"></i></span> 
                            </div>
                               <input type="password" id="pass2"  class="form-control"placeholder="Vuelva a ingresar su contraseña">               
                           </div>
                           <div class="input-group form-group">
                            <div class="input-group-prepend">           
                                <span class="input-group-text"><i class="fas fa-id-card"></i></span> 
                            </div>
                               <input type="text" id="inputDpi" class="form-control"placeholder="Ingrese su DPI">               
                           </div>
                           <div class="input-group form-group">
                            <div class="input-group-prepend">           
                                <span class="input-group-text"><i class="fas fa-id-card"></i></span> 
                            </div>
                               <input type="text" id="inputNit" class="form-control"placeholder="Ingresar su NIT">               
                           </div>
            
                        <input type="button" id="btnVerificar" value="Registro" class="btn btn-info form-control">
                     
                        <p>Al registrarte, aceptas nuestras condiciones de uso y politica de privavidad</p>
                        
                        <p>¿Ya tienes una cuenta?  <a class="link" href="login.jsp">Iniciar Sesión</a> </p>
                 
                        </form>


                    </div>
                </div>
             
        
        
 
                <script src="js/componentes/registro.js" type="text/javascript"></script>
    </body>
</html>
