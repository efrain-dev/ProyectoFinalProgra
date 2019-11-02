
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/styleRegistro.css" rel="stylesheet" type="text/css"/>
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
               $('.presentacionU').load('plantillas/presentacionU.html');
           
            });      
  
            </script>
      
        <nav class="navbar navbar-expand navbar-dark sticky-top bg-dark"></nav>
        <div class="card presentacionU">
            
        </div>
     
       
      <div class="container registroDiv" id="divRegistro" style="display: none;">
          <center><i class="fas fa-edit fa-6x mx-5 my-5">Registro</i></center>
          <div class="alert alert-success" id="mensajeRegistroO" role="alert" style="display: none;" >
              Registro relizado Exitosamente
              </div> <div class="alert alert-danger" id="mensajeRegistroI" role="alert" style="display: none;" >
                  Datos Incorrectos
              </div>
          <form enctype="multipart/form-data" id="registrosDatos">
              <div class="form-group" id="divCodigoCon">
                  <label>Codigo</label>
                  <input type="text" id="txtCodigo" name="txtCodigo"  placeholder="Ingrese el codigo del contenedor"  class="form-control"/>
              </div>
              <div class="form-group">
                  <label>Tipo de daño</label>
                  <select id="tipoDaño" class="form-control">
                      <option> Selecione el tipo daño </option>
                      <option value="Grave"> Grave </option>
                      <option value="Leve" > Leve </option>
                      <option value="Superficial"> superficial </option>
                  </select>
              </div>
              <div>
                  <label>Area de daño</label>
                  <select id="areaDaño" class="form-control">
                      <option> Selecione el area de daño </option>
                      <option value="Interior"> Interior </option>
                      <option value="Exterior" > Exterior </option>
                      <option value="Arriba"> Arriba </option>
                      <option value="Abajo"> Abajo </option>
                      <option value="Lado izquierdo"> Lado izquierdo </option>
                      <option value="Lado derecho"> Lado derecho </option>
                  </select>
              </div>                 
              <div class="form-group">
                  <label>Costo de reparacion</label>
                  <input type="number" id="txtCosto" name="txtCosto" placeholder="Ingrese el costo de la reparacion"  class="form-control"/>
              </div>
          
              <div class="form-group">
                  <label>Causa del daño</label>
                  <input type="text" id="txtCausa" name="Causa"  placeholder="Ingrese la causa del daño"  class="form-control"/>
              </div>
              <div class="form-group">
                  <label>Numero de mecanicos</label><br>
                  <select id="sMecanicos" class="form-control">
                      <option> Selecione la cantidad de mecanicos </option >
                      <option value="1"> 1 </option >
                      <option value="2"> 2 </option >
                      <option value="3"> 3 </option >
                  </select>
              </div>
zz              <div class="form-group">
                  <label>Supervisor</label>
                  <input type="text" id="txtSuper" name="Super"  placeholder="Ingrese el nombre del supervisor"  class="form-control"/>
              </div>
              <div class="d-flex justify-content-center align-items-center">
                  <div class="form-group my-3 mx-3 " >
          
                      <div><h5>Ingrese imagen del area dañada Antes</h5></div>
                      <figure class="my-3 mx-3">
                       <img id="blah" class="imagenes" src="https://via.placeholder.com/150" alt="Tu imagen" height="150" width="300"/>
                      </figure>
                      <input id="imgInp" type="file" onchange='readImage(this);'/>
                      
              </div>   
              <div class="form-group my-3 mx-3 " >
          
                  <div><h5>Ingrese imagen del area dañada Despues</h5></div>
                  <figure class="my-3 mx-3">
                   <img id="blah2" class="imagenes" src="https://via.placeholder.com/150" alt="Tu imagen" height="150" width="300"/>
                  </figure>
                  <input id="imgInp2" type="file" onchange='readImage2(this);'/>
                </div>    
              </div>
                     
                <div class="d-flex justify-content-center align-items-center ">
                    <input type="button" class="btn btn-outline-info form-control my-3 mx-3" id="btnSeguirRegistrando" value="Seguir Registrando">
                    <input type="button" class="btn btn-outline-success form-control my-3 mx-3" id="btnEnviarRegistros" value="Enviar Registro">
                    <input type="button" class="btn btn-outline-danger form-control my-3 mx-3" id="btnCerrar" value="Cerrar">

                </div>
              
              
          </form>
          
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


          
    
        

  </body>
</html>