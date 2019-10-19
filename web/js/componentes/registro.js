
const registro = new Vue({
    el:"#registro",
    created: function () { 
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
                console.log(json);
                registro.setDatos(dato);
                console.log(dato);
                if(dato!=""){
                    $("#mensajeLoginO").fadeToggle(3000);
                    $("#mensajeLoginO").fadeToggle(3000);
                   
                    
                
                }else{
                    $("#mensajeRegistroI").fadeToggle(3000);
                    $("#mensajeRegistroI").fadeToggle(3000);
                    
                }
            },
            error: function(dato) {  
               
                    alert("Something went wrong");
        }
    });

    },
    data:{        
        
            type:0, // 0 = Login , 1 = Registro 2- Recuperar contraseña
            id:"", 
            contra:"",
            nombre:"",
            apellido:"",
            dpi:"",
            nit:"",
            email:""
            
     
    },
    methods:{
        getDatos:function(){
         

        
    },
    setDatos:function(dato){
        for(var item of dato){
            this.id = item.id;
            this.contra =item.contra;
            this.nombre = item.nombre;
            this.apellido = item.apellido;
            this.dpi= item.dpi;
            this.nit =item.nit;
            this.email = item.email;

          }
          
    }
    },           
    computed:{
     
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
