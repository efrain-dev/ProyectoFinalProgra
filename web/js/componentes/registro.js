$(document).ready(function() {

	$("#pass2").keyup(function() {

var pass1 = $("#pass1").val();
var pass2 = $("#pass2").val();

if(pass1 == pass2){
$("#pass1").css("border-color","green"); 
$("#pass2").css("border-color","green"); 
}else{
    $("#pass1").css("border-color","red"); 
    $("#pass2").css("border-color","red"); 

}
if(pass1&&pass2==""){
    $("#pass1").css("border-color","white"); 
    $("#pass2").css("border-color","white"); 
}
});

$("#btnVerificar" ).click(function() {
    var pass1 = $("#pass1").val();
    var pass2 = $("#pass2").val();

    if(pass1 == pass2){
        registrar();
    }else{

        $("#mensajeRegistroC").fadeToggle(3000);
        $("#mensajeRegistroC").fadeToggle(3000);
        $("#pass1").val("");
        $("#pass2").val("");
    }

  });
   

  
});
function registrar() {
    var control="INSERT";
    $.ajax({
        type: "POST", //METODO POST
        url: "RespuestaLogin", //URL DESTINO
        data:{
            "control":control,
            "codigo":$("#inputCodigo").val(),
            "email":$("#inputEmail").val(),
            "pass":$("#pass1").val(),
            "nombre":$("#inputNombre").val(),
            "apellido":$("#inputApellido").val(),
            "dpi":$("#inputDpi").val(),
            "nit":$("#inputNit").val(),
        },      
    success: function(respuesta){    
    
            if(respuesta=="1"){
                $("#mensajeRegistroO").fadeToggle(3000);
                $("#mensajeRegistroO").fadeToggle(3000);
                reset();
                rederigir();
            }else{
                $("#mensajeRegistroI").fadeToggle(3000);
                $("#mensajeRegistroI").fadeToggle(3000);
            }
          
        },
        error: function(respuesta) {  
           
                alert("Something went wrong");
    }
})

}
function reset(){
    $("#inputNombre").val("");
    $("#inputApellido").val("");
    $("#inputCodigo").val("");
    $("#inputEmail").val("");
    $("#pass1").val("");
    $("#pass2").val("");
    $("#inputNit").val("");
    $("#inputDpi").val("");

}
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