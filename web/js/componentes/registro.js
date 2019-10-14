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
        this.nombre =""; 
        this.apellido =""; 
        this.dpi ="";
        this.nit ="";  
       },
       
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
            success: function(data)
                {      
                    
                    $("#mensaje").fadeToggle(3000);
                    $("#mensaje").fadeToggle(3000);
                    login.reset();
                },
                error: function(data) {  
                   
                        alert("Something went wrong");
            }

        });
      
        },   
        btnLogin(){
            var control="SELECT"
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
            success: function(respuesta)
                {           
                        $("#mensaje").fadeToggle(3000);
                        $("#mensaje").fadeToggle(3000);
                },
                error: function(respuesta) {  
                   
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
        
        }
    }
});