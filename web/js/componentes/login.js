
 $(document).ready(function() {
$( "#btnLogin" ).click(function() {

    var control="LOGIN"
    $.ajax({
        type: "POST", //METODO POST
        url: "RespuestaLogin", //URL DESTINO
        dataType: "json",
        data:{
            "control":control,
            "email":$("#inputEmail").val(),
            "pass":$("#inputPass").val(),
      
        },      
    success: function(respuesta)
           
        {   
           console.log(respuesta);  
            if(respuesta!=""){
                rederigirRegistros();
                $("#mensajeLoginO").fadeToggle(3000);
                $("#mensajeLoginO").fadeToggle(3000);
            }else{
                $("#mensajeLoginI").fadeToggle(3000);
                $("#mensajeLoginI").fadeToggle(3000);
                
            }
            if(respuesta="admin"){



            }
        },
        error: function(respuesta) {  
           
            $("#mensajeLoginI").fadeToggle(3000);
            $("#mensajeLoginI").fadeToggle(3000);
    }
});

  })
});

 function rederigir(){
    var url = "login.jsp"; 
    $(location).attr('href',url);
 }
function rederigirRegistro(){
   
    var url = "registro.jsp"; 
    $(location).attr('href',url);
 }      
 function rederigirRegistros(){
   
    var url = "registros.jsp"; 
    $(location).attr('href',url);
 }      
      function rederigirAdmin(){
       
        var url = "loginAdmin.jsp"; 
        $(location).attr('href',url);
     }  


