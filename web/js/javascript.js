function inicio()
            {
               window.open("<%=request.getContextPath()%>/ModuloMenu?op=6",
                "_blank", 
                "toolbar=yes,scrollbars=yes,resizable=yes,top=20,left=200,width=800,height=500");
           
            }
function  ajax(ruta,controlador,parametro,id,tipo)
    {   var pagina=ruta+"/"+controlador+parametro;   
         
                var xmlhttp;
                if(window.XMLHttpRequest)
                {   xmlhttp=new XMLHttpRequest();
                }
                else
                {   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
                }
                xmlhttp.onreadystatechange=function()
                {   if(xmlhttp.readyState==4 && xmlhttp.status==200)
                    {       
                    document.getElementById(id).innerHTML=xmlhttp.responseText;            
                    }
                }                
                xmlhttp.open("GET",pagina,true);
                xmlhttp.send(null);
    }


function menuopciones(ruta, controlador, op)
{
    document.form.action = ruta + "/" + controlador;
    document.form.method = "GET";
    document.form.op.value = op;
    document.form.submit();
}
function  entrar(ruta, controlador, op)
{
    document.form.action = ruta + "/" + controlador;
    document.form.method = "POST";
    document.form.op.value = op;
    document.form.submit();

}
function  intranetAlu()
{
  
      var  dni=document.form.dni.value;
      var apepa=document.form.apepa.value;
      var apema=document.form.apema.value;
      var nombre=document.form.nombre.value;
      alert("hola"+dni + apepa+ apema+ nombre);
   

}
function  entrarlog(ruta, controlador, op)
{
        

     var  usuario=document.getElementById("txtusuario").value;
     var  clave=document.getElementById("txtcontra").value;
    if(usuario==="" && clave==="" )
    {
    alert("INGRESE LOS CAMPOS !!!!!");
    document.getElementById("txtusuario").focus();
    return;    
    }
    else if(usuario==="")
    {
    alert("INGRESE USUARIO!!!!!");
    document.getElementById("txtusuario").focus();
    return;
    }
    else if (clave==="")
    {
    alert("INGRESE CONTRASEÑA!!!!!");
      document.getElementById("txtcontra").focus();
    return;
   }
  
    else{
    alert("ENVIANDO DATOS ...");   
    document.form.action = ruta + "/" + controlador;
    document.form.method = "GET";
    document.form.op.value = op;
    document.form.submit();
    }
     
}

 

function  Mantenimiento(ruta,controlador,parametro,id,tipo)
 {  
     ajax(ruta,controlador,parametro,id,tipo);

 }
 function  Dato(ruta,controlador,parametro,id,tipo)
 {  
     var  dni=document.getElementById("dni").value;
     var  nombre=document.getElementById("nombre").value;
     ajax(ruta,controlador,parametro,id,tipo);
   document.form.submit();  

 }
 function cargar()
 { 
     var  dni=document.getElementById("dni").value;
      var apepa=document.getElementById("apepa").value;
      var apema=document.getElementById("apema").value;
      var nombre=document.getElementById("nombre").value;alert("hola"+dni);
      var sexo=document.getElementById("sexo").value;
      var telefono=document.getElementById("telefono").value;
      var direccion=document.getElementById("direccion").value;
      var email=document.getElementById("email").value;
     
 }
 
function cambiarclavealumno(ruta,controlador)
{
 
var claveoriginal=document.getElementById("contra1").value;
var clave1=document.getElementById("contranueva1").value;
var clave2=document.getElementById("contranueva2").value;

if(clave1==="" || clave2==="")
{
alert("TIENES QUE LLENAR LOS DATOS");   
document.getElementById("contranueva1").focus();
}
else if(clave1!=="" && clave2==="")
{
alert("REPITA LA NUEVA CONTRASEÑA");   
document.getElementById("contranueva2").focus();
}
else if(clave1==="" && clave2!=="")
{
alert("DIGITE LA NUEVA CONTRASEÑA");   
document.getElementById("contranueva1").focus();
}
else if(clave1!==clave2)
    {
    alert("TIENEN QUE COINCIDIR LAS CONTRASEÑAS A MODIFICAR \n"); 
    document.getElementById("contranueva2").focus();
    }
    
 else
    {
    alert("MODIFICANDO DATOS DATOS ...");   
    document.form.action = ruta + "/" + controlador;
    document.form.method = "GET";
    
    document.form.submit();
    }

}
function cambiardatosalumno(ruta,controlador)
{
 
var nombre=document.getElementById("nomalu").value;
var sexo=document.getElementById("sexoalu").value;
var telefono=document.getElementById("telalu").value;

if(nombre==="" || telefono==="" || sexo==="")
    {
     alert("INGRESE LOS CAMPOS");
    }
else if(nombre==="" && telefono!=="" && sexo!=="")
    {
    alert("INGRESE NUEVO NOMBRE \n EN CASO DE QUE NO QUIERA MODIFICAR \n\
    SOLO TRANSCRIBA SU NOMBRE ANTIGUO");
    document.getElementById("nomalu").focus();
    }
else if(nombre!=="" && telefono==="" && sexo!=="")
    {
    alert("INGRESE NUEVO TELEFONO \n EN CASO DE QUE NO QUIERA MODIFICAR \n\
    SOLO TRANSCRIBA SU TELEFONO ANTIGUO");
     document.getElementById("telalu").focus();
    }
else if(nombre!=="" && telefono!=="" && sexo==="")
    {
    alert("DEBE SELECCIONAR UN SEXO");
    document.getElementById("sexoalu").focus();
    }
 
else
    {
    alert("MODIFICANDO DATOS DATOS ...");   
    document.form.action = ruta + "/" + controlador;
    document.form.method = "GET";
    document.form.submit();
    }

}





