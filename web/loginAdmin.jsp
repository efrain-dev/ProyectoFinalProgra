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
            <style>
                body{
                        width: 100%; 
                        height: 100vh; 
                        background-color:grey;
                        background-size: auto;
                        background-repeat: no-repeat;
                        height: 100%;
                
                }
                .login{
                      border-radius: 15px 15px 15px 15px;
                      opacity:0.9;
                      
                  }
                  .divregistro{
                              height: 100vh;
                          }
            
            </style>
      
        <nav class="navbar navbar-expand navbar-dark sticky-top bg-dark"></nav>
        <div class="divregistro d-flex justify-content-center align-items-center">

            <div class="login  bg-dark my-5 mx-5 p-5 text-white" id="loginAdmin">
                    <form class="formulario">
                        
                            <div class="alert alert-success" id="mensajeLoginO" role="alert" style="display: none;" >
                                Login relizado Exitosamente
                            </div> <div class="alert alert-danger" id="mensajeLoginI" role="alert" style="display: none;" >
                                Login Datos Incorrectos
                            </div>
                          <center> <h3 class="p-3">Administradores</h3> </center>  
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
                    </form>
                </div>
           
         
            <div id="divBotones" style="display: none;">
                <center><i class="fas fa-th-list fa-6x mx-5 my-5" onclick="mostrarUsuarios()">Usuarios Registrados</i><i class="fas fa-th-list fa-6x mx-5 my-5" onclick="mostrarPreview()">Registros</i></center>
              </div> 
               
           
        
              <div class="" id="divMostarRegistros" style="display: none;">
                <div class="row">
                  <div class="col-9 mx-5 my-5 p-5">
                    <div class="form-group">
                        <label><h3>Ingrese el Codigo del contenedor</h3></label>
                        <input type="text" class="form-control" id="bCodigoC" placeholder="Ingrese el codigo del contenedor que desea Ver">
                        <div class="d-flex justify-content-center align-items-center">
                            <input type="button" id="btnBuscarRegistro" class="btn btn-info form-control" value="Buscar">
                            <input type="button" id="btnCerrarView" class="btn btn-danger form-control" value="Cerrar">
                        </div>
                        
                    </div>
                    <div class="table-responsive my-5"> 
                        <table class="table table-dark table-condensed table-responsive table-striped table-bordered table-hover   ">
                          <caption>Registro de Contenedores dañados</caption>
                              <thead class="thead-dark ">
                             <tr>
                              <th scope="col">Código de Empleado</th>
                              <th scope="col">Código  de contenedor</th>
                              <th scope="col">Tipo de Daño</th>
                              <th scope="col">Area Dañada</th>
                              <th scope="col">Costo de la Reparación</th>
                              <th scope="col">Causa del Daño</th>
                              <th scope="col">Mecanicos Trabajando</th>
                              <th scope="col">Supervisor</th>
                              <th colspan="2">Fotos Antes y Despues</th>
                             </tr>
                          </thead>
                          <tbody id="resultadoTabla">
                            
                          </tbody>
                        </table>
                      </div>
                  </div>
                  <div class="col-2 my-5">
                      <table class="table table-dark table-condensed table-striped table-bordered table-hover ">
                          <thead>
                            <tr>
                              <th scope="col">Codigo Contenedor</th>
                            </tr>
                          </thead>
                          <tbody id="previewRegistros">
                            <tr>
                              <td>13134</td>
                            </tr>
                          </tbody>
                        </table>
        
                  </div>
                  
              </div>
        </div>
              <div class="" id="divUsuarios" style="display: none;">
                    <div class="mx-5 my-5">
                      <div class="table-responsive my-5"> 
                          <table class="table table-dark table-condensed table-responsive table-striped table-bordered table-hover   ">
                            <caption><input type="button" id="btnCerrarViewU" class="btn btn-danger form-control" value="Cerrar"></caption>
                                <thead class="thead-dark ">
                               <tr>
                                <th scope="col">Codigo del Empleado</th>
                                <th scope="col">Contraseña</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Apellido</th>
                                <th scope="col">DPI</th>
                                <th scope="col">NIT</th>
                                <th scope="col">Email</th>
                               </tr>
                            </thead>
                            <tbody id="resultadoTablaUser">
                            </tbody>
                          </table>
                        </div>
                    </div>                    
                </div>
          
          
          
            </div>
        
     <script src="js/componentes/admin.js"></script>        
  </body>
</html>