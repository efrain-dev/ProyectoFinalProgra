<%-- 
    Document   : index
    Created on : 12-oct-2019, 22:37:51
    Author     : efrai      
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="css/style.css">
    <link href="css/fontawesome-free-5.11.2-web/css/all.min.css" rel="stylesheet" type="text/css"/>
    <script src="js/jquery-3.4.1.js" type="text/javascript"></script>
    <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>   

    <title>Login</title>
  </head>
  <body>
        <script>
                 $(document).ready(function(){
               $('.navbar').load('plantillas/barra.html');
            });            
            </script>
      
        <nav class="navbar navbar-expand navbar-dark sticky-top bg-dark"></nav>
        <div class="divregistro d-flex justify-content-center align-items-center">

            <div class="registro  bg-dark my-5 mx-5 p-5 text-white">
                    <form class="formulario">
                        
                            <div class="alert alert-success" id="mensajeLoginO" role="alert" style="display: none;" >
                                Login relizado Exitosamente
                            </div> <div class="alert alert-danger" id="mensajeLoginI" role="alert" style="display: none;" >
                                Login Datos Incorrectos
                            </div>
                          <center> <h3 class="p-3">Login</h3> </center>  
                       <div class="input-group form-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text"> <li class=" fas fa-user"></li></span> 
                          </div>
                            <input type="email" class="form-control" id="inputEmail"placeholder="Escriba su Email">
                       </div>
                     <div class="input-group form-group">
                        <div class="input-group-prepend">           
                            <span class="input-group-text"><i class="fas fa-key"></i></span> 
                        </div>
                           <input type="password" class="form-control" id="inputPass" placeholder="Ingresar Contraseña">               
                       </div>
        
                    <input type="button" id="btnLogin" value="Login" class="btn btn-info form-control">  

                    <p>Necesitas una cuenta <a class="link" href="registro.jsp">Registrate</a> </p>
             
                    </form>


                </div>
            </div>
         
    
        
                
        <script src="js/componentes/login.js"></script>        
  </body>
</html>