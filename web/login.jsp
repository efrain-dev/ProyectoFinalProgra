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
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    
  

    <title>Login</title>
  </head>
  <body>
        <script>
                 $(document).ready(function(){
               $('.navbar').load('plantillas/barra.html');
            });            
            </script>
             <style>
                    .responsive {
                      width: 100%;
                      height: auto;
                    }
                </style>
            
        <img src="img/CONTAINERS1.jpg" alt="Nature" class="responsive" width="600" height="100">  
        <nav class="navbar navbar-expand navbar-dark sticky-top" style="background-color: rgb(69, 180, 0);"></nav>

        <div class="divlogin  d-flex justify-content-center align-items-center" id ="login">
        
            <div class=" bg-light d-flex justify-content-center p-5 border border-dark">
            
                <div class="divcont ">
                    <div class="alert alert-success" id="mensajeRegistroO" role="alert" style="display: none;" >
                    Registro relizado Exitosamente
                    </div> <div class="alert alert-danger" id="mensajeRegistroI" role="alert" style="display: none;" >
                        Datos Incorrectos
                    </div>
                    <div class="alert alert-success" id="mensajeLoginO" role="alert" style="display: none;" >
                        Login relizado Exitosamente
                    </div> <div class="alert alert-danger" id="mensajeLoginI" role="alert" style="display: none;" >
                        Login Datos Incorrectos
                    </div>
                    <h3>{{title}}</h3>
                    <form @submit.prevent="sendForm()">
                    <div class="form-group">
                        <input type="email" :class="{'error':validaEmail}" placeholder="Email" v-model="email">
                    </div>
                    <div class="form-group">
                        <input type="password" id="pass" v-if="type!=2" :class="{'error':validaPassword}" placeholder="Contraseña" v-model="password" >
                    </div>
                    <div class="form-group">
                        <input type="password" id="pass2" v-if="type==1" :class="{'error':validaRepetirPassword}" placeholder="Repetir contraseña" v-model="passwordos" >
                    </div>
                    <div class="form-group">
                        <input type="text" id="nombre" v-if="type==1"  placeholder="Ingrese su nombre" v-model="nombre" >
                    </div>
                    <div class="form-group">
                        <input type="text" id="apellido" v-if="type==1"  placeholder="Ingrese su apellido" v-model="apellido" >
                    </div>
                    <div class="form-group">
                        <input type="text"  id="dpi" v-if="type==1"  placeholder="Ingrese su DPI" v-model="dpi" >
                    </div>
                    <div class="form-group">
                        <input type="text" id="nit" v-if="type==1"  placeholder="Ingrese su NIT" v-model="nit" >
                    </div>
                    <div class="form-group">
                        <input type="text" id="codigo" v-if="type==1"  placeholder="Ingrese su Codigo" v-model="codigo" >
                    </div>
                            
                        <div class="form-group">  
                            <button class="btn btn-success"@click="btnLogin" v-if="type!=1">Iniciar sesión</button>
                            <button class="btn btn-success"@click="btnRegistrar(),type=0" v-if="type!=0">Registrarme</button>
                            <a href="javascript:void(0)" @click="type=1" v-if="type!=1" >Registrarme</a>
                            <a href="javascript:void(0)" @click="type=0" v-if="type!=0" >Iniciar sesión</a>
                        </div>
                        
                    
                    
                    </form>
                    
                            
                         <div id ="div-resultado">
                            
                             <div>
                    
            
                </div>            
            </div>
        </div>
      
                <script src="js/vue.js" type="text/javascript"></script>
                <script src="js/componentes/registro.js" type="text/javascript"></script>
  </body>
</html>-