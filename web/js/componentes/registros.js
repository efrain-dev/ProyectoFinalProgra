var id, nombre, apellido, email,contra,dpi,nit, codigoContenedor;
$(document).ready(function() {    
  
    var control="RELOGIN"
    $.ajax({   
        type: "POST", //METODO POST
        url: "RespuestaLogin", //URL DESTINO
        dataType: "json",

        data:{
            "control":control,
      
        },      
    success: function(json)
           
        {   
            var dato = JSON.parse(json);
            console.log(dato);
            setDatos(dato);
            console.log(nombre);
           $("#nombreUser").text(nombre+" " +apellido);
           $("#correoUser").text(email);
           $("#idUser").text(id);
           $("#dpiUser").text(dpi);
           $("#nitUser").text(nit);
            
        },
        error: function(json) {  
           
                alert("Something went wrong");
    }
});
/*MUESTRA DE TADOS */
$("#btnBuscarRegistro").click(function() {
    console.log(id);
    var control="BUSCARREGISTRO";
    $.ajax({
        type: "POST", //METODO POST
        url: "RespuestaLogin", //URL DESTINO
        data:{
            
            "control":control,
            "id":id,
            "codigoC":$("#bCodigoC").val(),
           
        },      
    success: function(respuesta)
           
        {   
            console.log(id);
            
            if(respuesta!=""){
                $("#resultadoTabla").html(respuesta);
               
            }else{
                alert("El registro no Existe")
            }
        },
        error: function(respuesta) {  
           
            $("#mensajeLoginI").fadeToggle(3000);
            $("#mensajeLoginI").fadeToggle(3000);
    }
});

  });

/*iNSERCCION DE REGISTROSS */
$("#btnSeguirRegistrando").click(function() {
    $("#divCodigoCon").hide();
    seguirRegistro();

  });
  $("#btnCerrar").click(function() {
    $("#divCodigoCon").show();
    $("#divBotones").fadeToggle(1000);  
    $("#divRegistro").fadeToggle(1000);
     $("#logoPresentacion").hide();

    reset();
  });
  $("#btnCerrarView").click(function() {
    $("#divBotones").fadeToggle(1000);
    $("#divMostarRegistros").fadeToggle(1000);  
    $("#logoPresentacion").hide();

    
 });
$("#btnEnviarRegistros").click(function() {
    console.log(id);
    var control="REGISTRO";
    $.ajax({
        type: "POST", //METODO POST
        url: "RespuestaLogin", //URL DESTINO
        data:{
            
            "control":control,
            "id":id,
            "codigoC":$("#txtCodigo").val(),
            "tipoDaño":$("#tipoDaño").val(),
            "areaDaño":$("#areaDaño").val(),
            "costo":$("#txtCosto").val(),
            "causa":$("#txtCausa").val(),
            "mecanicos":$("#sMecanicos").val(),
            "supervisor":$("#txtSuper").val(),
            "img1":$("#imgInp").val(),
            "img2":$("#imgInp2").val(),
        },      
    success: function(respuesta)
           
        {   
            console.log(id);
            
            if(respuesta=="1"){
                reset();        
                $("#logoPresentacion").hide();
                $("#divBotones").fadeToggle(1000);  
                $("#divRegistro").fadeToggle(1000);
                $("#mensajeRegistroO").fadeToggle(3000);
                $("#mensajeRegistroO").fadeToggle(3000);
               
            }else{
                $("#mensajeRegistroI").fadeToggle(3000);
                $("#mensajeRegistroI").fadeToggle(3000);
            }
        },
        error: function(respuesta) {  
           
            $("#mensajeLoginI").fadeToggle(3000);
            $("#mensajeLoginI").fadeToggle(3000);
    }
});

  });
});
function setDatos(dato){
    for(var item of dato){
        id = item.id;
        contra =item.contra;
        nombre = item.nombre;
        apellido = item.apellido;
        dpi= item.dpi;
        nit =item.nit;
        email = item.email;

      }
      
   
     

}
function reset(){
    $("#txtCodigo").val("");    
    $("#tipoDaño").val("");
    $("#areaDaño").val("");
    $("#txtCosto").val("");
    $("#txtCausa").val("");
    $("#sMecanicos").val("");
    $("#txtSuper").val("");
    $("#imgInp").val("");
    $("#imgInp2").val("");

}
function resetSeguir(){
    $("#tipoDaño").val("");
    $("#areaDaño").val("");
    $("#txtCosto").val("");
    $("#txtCausa").val("");
    $("#sMecanicos").val("");
    $("#txtSuper").val("");
    $("#imgInp").val("");
    $("#imgInp2").val("");
}
function mostrarRegistro(){
  $("#divCodigoCon").show();
  $("#divBotones").fadeToggle();  
  $("#divRegistro").fadeToggle();
  $("#logoPresentacion").show();
}
function seguirRegistro(){
    var control="REGISTRO";
    codigoContenedor = $("#txtCodigo").val();
    $.ajax({
        type: "POST", //METODO POST
        url: "RespuestaLogin", //URL DESTINO
        data:{
            
            "control":control,
            "id":id,
            "codigoC":codigoContenedor,
            "tipoDaño":$("#tipoDaño").val(),
            "areaDaño":$("#areaDaño").val(),
            "costo":$("#txtCosto").val(),
            "causa":$("#txtCausa").val(),
            "mecanicos":$("#sMecanicos").val(),
            "supervisor":$("#txtSuper").val(),
            "img1":$("#imgInp").val(),
            "img2":$("#imgInp2").val(),
        },      
    success: function(respuesta)
           
        {   
            console.log(id);
            
            if(respuesta=="1"){
                $("#mensajeRegistroO").fadeToggle(3000);
                $("#mensajeRegistroO").fadeToggle(3000);
                resetSeguir();
            }else{
                $("#divCodigoCon").show();
                $("#mensajeRegistroI").fadeToggle(3000);
                $("#mensajeRegistroI").fadeToggle(3000);
            }
        },
        error: function(respuesta) {  
            $("#mensajeLoginI").fadeToggle(3000);
            $("#mensajeLoginI").fadeToggle(3000);
    }
});
    }
function readImage (input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function (e) {
          $('#blah').attr('src', e.target.result); // Renderizamos la imagen
      }
      reader.readAsDataURL(input.files[0]);
    }
  }
  function readImage2 (input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function (e) {
          $('#blah2').attr('src', e.target.result); // Renderizamos la imagen
      }
      reader.readAsDataURL(input.files[0]);
    }
  }


    
    /**Division del Ajax de inicio */
     function rederigir(){
        var url = "login.jsp"; 
        $(location).attr('href',url);
     }
    function rederigirRegistro(){
       
        var url = "registro.jsp"; 
        $(location).attr('href',url);
     }   
     function rederigirAdmin(){
       
        var url = "loginAdmin.jsp"; 
        $(location).attr('href',url);
     }  
   //Muestra de datos
  function mostrarPreview(){
var control ="PREVIEWREG"
    $("#logoPresentacion").show();

    $("#divCodigoCon").show();
    $("#divBotones").fadeToggle(1000);  
    $("#divMostarRegistros").fadeToggle(1000);
    console.log("Dentro de Preview Reg")
    console.log(id);

    $.ajax({
        type: "POST", //METODO POST
        url: "RespuestaLogin", //URL DESTINO
        data:{
            "control":control,
            "id":id,
        },      
    success: function(respuesta)
           
        {   
            console.log(respuesta)
            $("#previewRegistros").html(respuesta);
        }
  
});

   }

//nada mas que guarde xd