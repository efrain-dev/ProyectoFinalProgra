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
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
            <link rel="stylesheet" href="css/style.css">
            <script src="js/jquery-3.4.1.js" type="text/javascript"></script>
            <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
            <script>
                $(document).ready(function(){
              $('.navbar').load('plantillas/barra.html');
           });            
           </script>
    </head>
    <body>
            <style>
                    .responsive {
                      width: 100%;
                      height: auto;
                    }
                </style>
            <img src="img/CONTAINERS1.jpg" alt="Nature" class="responsive" width="600" height="100">  
            <nav class="navbar navbar-expand navbar-dark sticky-top" style="background-color: rgb(69, 180, 0);"></nav>
       
                
                        <div class=""></div>
                        <div id="registro" class=" divlogin d-flex justify-content-center bg-dark">
                               <div><h1 >Bienvenido  {{nombre}}  {{apellido}}</h1></div> 
                               <div><h1 >DPI {{dpi}}  Nit {{nit}}</h1></div> 
                        </div>






                <script src="js/vue.js" type="text/javascript"></script>
                <script src="js/vuex.js" type="text/javascript"></script>
                <script src="js/componentes/registro.js" type="text/javascript"></script>
    </body>
</html>
