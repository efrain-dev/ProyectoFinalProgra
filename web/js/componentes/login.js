var id,contra,nombre,apellido,dpi,nit,email;
const login = new Vue({
    el:"#login",
    data:{        
        
            type:0, // 0 = Login , 1 = Registro 2- Recuperar contraseña
            email:"",
            codigo:"",
            nombre:"",
            apellido:"",
            dpi:"",
            nit:"",
            password:"", 
            passwordos:""
     
    },
    methods:{
        reset:function(){

        this.codigo =""; 
        this.pass =""; 
        this.password =""; 
        this.passwordos="";
        this.nombre = ""; 
        this.apellido =""; 
        this.dpi ="";
        this.nit ="";  
       },
       prueba:function(){

        this.codigo = id; 
        this.password = contra;
        this.nombre = nombre; 
        this.apellido =apellido; 
        this.dpi =dpi;
        this.nit =nit;  
        this.email= nombre;
       },
       typeC:function(){ this.type=1;},
       typeA:function(){ this.type=0;},

        sendForm(){
            if(this.validaType()){
                console.log(this);
            }
        },
        validaType(){
            if(this.type==0 && !this.validaEmail && !this.validaPassword){
                return true;
            }
            else if(this.type==1 && !this.validaEmail && !this.validaRepetirPassword){
                return true;
            }
            else if(this.type==2 && !this.validaEmail){
                return true;
            }
            return false;   
        },
        btnRegistrar(){
            
            var control="INSERT", vacio="";
            $.ajax({
                type: "POST", //METODO POST
                url: "RespuestaLogin", //URL DESTINO
                data:{
                    "control":control,
                    "codigo":this.codigo,
                    "email":this.email,
                    "pass":this.password,
                    "nombre":this.nombre,
                    "apellido":this.apellido,
                    "dpi":this.dpi,
                    "nit":this.nit,
                },      
            success: function(respuesta){    
            
                    if(respuesta=="1"){
                        $("#mensajeRegistroO").fadeToggle(3000);
                        $("#mensajeRegistroO").fadeToggle(3000);
                        login.reset();
                    }else{
                        $("#mensajeRegistroI").fadeToggle(3000);
                        $("#mensajeRegistroI").fadeToggle(3000);
                        login.type();
                    }
                  
                },
                error: function(respuesta) {  
                   
                        alert("Something went wrong");
            }

        });
      
        },   
        btnLogin(){
            var control="LOGIN"
            $.ajax({
                type: "POST", //METODO POST
                url: "RespuestaLogin", //URL DESTINO
                data:{
                    "control":control,
                    "email":this.email,
                    "pass":this.password,
              
                },      
            success: function(data)
                   
                {    $("#div-resultado").html(data);
                    console.log("Hola",data);   
                   
                    if(data!=""){
                        $("#mensajeLoginO").fadeToggle(3000);
                        $("#mensajeLoginO").fadeToggle(3000);
                        
                        datosL();
                        rederigirRegistro();

                    
                    }else{
                        $("#mensajeRegistroI").fadeToggle(3000);
                        $("#mensajeRegistroI").fadeToggle(3000);
                        
                    }
                },
                error: function(data) {  
                   
                        alert("Something went wrong");
            }
        });          
        },
          
        

            },
                
    computed:{
        validaEmail(){
            var exp = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
            if(exp.test(this.email)){
                return false;
            } else{
                return true;
            }
        },
        validaPassword(){
            var exp = /^(?=.*\d)(?=.*[a-záéíóúüñ]).*[A-ZÁÉÍÓÚÜÑ]/;
            if(exp.test(this.password)){
                return false;
            } else{
                return true;
            }
        },
        validaRepetirPassword(){
            if(this.password==this.passwordos){
                return false;
            } else{
                return true;
            }
        },
        title(){
            return (this.type==0)?'Login':(this.type==1)?'Registro':'Recuperar contraseña';
        
        },
    }
});  
 function typea(){
    login.typeA();

 }
 function typeC(){
   login.typeC();
 }
 function rederigir(){
    var url = "login.jsp"; 
    $(location).attr('href',url);
 }
function rederigirRegistro(){
   
        $('.body').load('plantillas/registroH.html');
        $("#title").html("Registros");
 }
 

 function datosL(){
   console.log("hola te amao xdddfxfx")
            id = $("#id").val();
            contra = $("#contra").val();
            nombre = $("#nombre").val();
            apellido = $("#apellido").val();
            dpi = $("#dpi").val();
            nit = $("#nit").val();
            email = $("#email").val();

 }
 
