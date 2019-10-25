$(document).ready(function() {
    $("#btnCerrarView").click(function() {
        $("#divBotones").fadeToggle();
        $("#divMostarRegistros").fadeToggle();  
     });
     $("#btnCerrarViewU").click(function() {
        $("#divBotones").fadeToggle();
        $("#divUsuarios").fadeToggle();  
     });
    $( "#btnLogin" ).click(function() {
    
        var control="ADMIN"
        $.ajax({
            type: "POST", //METODO POST
            url: "RespuestaLogin", //URL DESTINO
            data:{
                "control":control,
                "email":$("#inputEmail").val(),
                "pass":$("#inputPass").val(),
          
            },      
        success: function(respuesta)
               
            {   
               console.log(respuesta);  
                if(respuesta=="01"){
                    $("#loginAdmin").fadeToggle();
                        $("#divCodigoCon").show();
                          $("#divBotones").fadeToggle();  
                          $("#divRegistro").fadeToggle();
                     
                }else{
                    $("#mensajeLoginI").fadeToggle(3000);
                    $("#mensajeLoginI").fadeToggle(3000);
                    
                }
            
            },
            error: function(respuesta) {  
               
                $("#mensajeLoginI").fadeToggle(3000);
                $("#mensajeLoginI").fadeToggle(3000);
        }
    });
    
      });
      $("#btnBuscarRegistro").click(function() {
            var control="BUSCARREGISTROADMIN";
        $.ajax({
            type: "POST", //METODO POST
            url: "RespuestaLogin", //URL DESTINO
            data:{
                
                "control":control,
                "codigoC":$("#bCodigoC").val(),
               
            },      
        success: function(respuesta)
               
            {   
              
                
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
     
    function mostrarUsuarios(){
        var control ="VERUSUARIOS"
            $("#divBotones").fadeToggle();  
            $("#divUsuarios").fadeToggle();
           
        
            $.ajax({
                type: "POST", //METODO POST
                url: "RespuestaLogin", //URL DESTINO
                data:{
                    "control":control,
                },      
            success: function(respuesta)
                   
                {   
                    $("#resultadoTablaUser").html(respuesta);
                }
          
        });

    }
     function mostrarPreview(){
        var control ="PREVIEWREGADMIN"
            $("#divBotones").fadeToggle();  
            $("#divMostarRegistros").fadeToggle();
           
        
            $.ajax({
                type: "POST", //METODO POST
                url: "RespuestaLogin", //URL DESTINO
                data:{
                    "control":control,
                },      
            success: function(respuesta)
                   
                {   
                    $("#previewRegistros").html(respuesta);
                }
          
        });
        
           }