
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
    <script src="js/componentes/registros.js"></script>     

    <title>Registros</title>
  </head>
  <body>
        <script>
                 $(document).ready(function(){
               $('.navbar').load('plantillas/barra.html');
               $('.modalRegistros').load('plantillas/modalRegistros.html');
             
            });      
  
            </script>
      
        <nav class="navbar navbar-expand navbar-dark sticky-top bg-dark"></nav>
   
       <!-- Button trigger modal -->
      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
        Launch demo modal
      </button>
      
      <div class="modalRegistros modal fade " id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      </div>
        
                       
           

    
        
           
  </body>
</html>