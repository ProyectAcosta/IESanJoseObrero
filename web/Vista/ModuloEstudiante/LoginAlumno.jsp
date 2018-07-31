
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<head>
    
    <meta charset="UTF-8">
    <title>LOGIN ALUMNO</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/js/custom.js" type="text/javascript"></script>
    <script>  
        <%if(request.getAttribute("msm")!=null){%>
        alert("USUARIO O CONTRASEÑA INCORRECTA");
        <%}%>
        <%if(request.getAttribute("aviso")!=null){%>
        alert("SE HA MODIFICADO CON EXITO SUS DATOS. \n\
               SU NUEVO USUARIO ES : "+<%=request.getAttribute("usuario")%>+"");
        <%}%>
       
    </script>        
</head>

<body onload="noback()" >
<center>
     <form  name="form">
     
     <input type="hidden" name="op">
    <div style="margin-top:5%;">
    <div class="login-wrap">
        <div class="login-html">
        <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">ESTUDIANTE</label>
            <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
            <div class="login-form">
                <div class="sign-in-htm">
                    <div class="group"> <br>
                        <label for="user" class="label">Usuario</label>
                         <br>
                        <input id="txtusuario" size="45" style="border:none;padding:15px 20px;border-radius:25px;background:rgba(255,255,255,.1);color:white;"
                               type="text" name="txtusuario"> <br>
                    </div>
                    <div class="group">
                        <label for="pass" class="label">Contraseña</label> <br>
                        <input id="txtcontra" size="45" type="password" style="border:none;padding:15px 20px;border-radius:25px;background:rgba(255,255,255,.1);color:white;"
                               data-type="password" name="txtcontra">
                    </div>
                    <bR>
               
                    <div class="group" >
                        <center><a  class="button" style="width: 100px;" href="javascript:entrarlog('<%=request.getContextPath()%>','ControladorLoginAlumno',1)">     
                                        Entrar
                   </a></center>
                    </div>
                    <div><center>
                      
                       <br>
                       <button type="button" style="background: #ffffff00; border-color: #ffffff00;">       
                <a href="javascript:menuopciones('<%=request.getContextPath()%>','ModuloMenu',8)">  
                    <center>
                            <img src="<%=request.getContextPath()%>/img/left.png" alt="" height="80" width="80" style="padding: 5px;"/></center>
                </a></button>
                </center>
                    </div>
                </div>
               
            </div>
        </div>
    </div>
</div>
     </form></center>
</body>
