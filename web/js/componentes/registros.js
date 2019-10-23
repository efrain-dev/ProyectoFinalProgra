
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
            
        },
        error: function(json) {  
           
                alert("Something went wrong");
    }
});
});

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
        console(e);

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
   