<%-- 
    Document   : UsuarioDocente
    Created on : 27/05/2018, 05:47:05 PM
    Author     : MIGUEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>LOGIN DOCENTE</title>
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:600'>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/js/custom.js" type="text/javascript"></script>
    <script>
        <%if (request.getAttribute("msm") != null) {%>
        alert("USUARIO O CONTRASEÑA INCORRECTA");
        <%}%>
        <%if (request.getAttribute("aviso") != null) {%>
        alert("SE HA MODIFICADO CON EXITO SUS DATOS. \n\
               SU NUEVO USUARIO ES : " +<%=request.getAttribute("usuario")%> + "");
        <%}%>

    </script> 

</head>

<body onload="noback()" >
    <form  name="form">
        <input type="hidden" name="op">
        <div style="margin: 10%;">
            <div class="login-wrap">
                <div class="login-html">
                    <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">DOCENTE</label>
                    <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Regístrate</label>
                    <div class="login-form">
                        <div class="sign-in-htm">
                            <div class="group">
                                <label for="user" class="label">Usuario</label>
                                <input id="txtusuario" size="40" style="border:none;padding:15px 20px;border-radius:25px;background:rgba(255,255,255,.1);color:white;"
                                       type="text" name="txtusuario">
                            </div>
                            <div class="group">
                                <label for="pass" class="label">Contraseña</label>
                                <input id="txtcontra" size="40" type="password" style="border:none;padding:15px 20px;border-radius:25px;background:rgba(255,255,255,.1);color:white;"
                                       data-type="password" name="txtcontra">
                            </div>

                            <div class="group" >
                                <center><a  class="button" href="javascript:entrarlog('<%=request.getContextPath()%>','ControladorLoginDocente',1)">     
                                        Entrar
                                    </a></center>
                            </div>
                            <div class="group" style=""><center>
                                    <br>
                                    <br>
                                    <br>
                                    <br>
                                    <button type="button" style="background: #ffffff00; border-color: #ffffff00;">       
                                        <a href="javascript:menuopciones('<%=request.getContextPath()%>','ModuloMenu',8)">  
                                            <center>
                                                <img src="<%=request.getContextPath()%>/img/left.png" alt="" height="80" width="80" style="padding: 5px;"/></center>
                                        </a></button>
                                </center>
                            </div>
                        </div>
                        <div class="sign-up-htm">
                            <div class="group">
                                <label for="user" class="label">Dni</label>
                                <input id="dni" name="dni" type="text" class="input">
                            </div>
                            <div class="group">
                                <label for="user" class="label">Primer Apellido</label>
                                <input name="apepa" id="apepa" type="text" class="input">
                            </div>
                            <div class="group">
                                <label for="user" class="label">Segundo Apellido</label>
                                <input id="apema" name="apema" type="text" class="input">
                            </div>
                            <div class="group">
                                <label for="user" class="label">Nombre</label>
                                <input id="nombre"  name="nombre" type="text" class="input">
                            </div>
                            <div class="group">
                                <label for="user" class="label">Sexo</label>

                                <select name="sexo" id="sexo" class="input" style="color: black;">
                                    <option value="A" selected >Escoga su sexo</option>
                                    <option value="femenino"    >Femenino</option>
                                    <option value="masculino" >Masculino</option>
                                </select>
                            </div>
                            <div class="group">
                                <label for="user" class="label">Telefono</label>
                                <input id="telefono"  name="telefono" type="text" class="input">
                            </div>
                            <div class="group">
                                <label for="user" class="label">Direccion</label>
                                <input id="direccion"  name="direccion" type="text" class="input">
                            </div>
                            <div class="group">
                                <label for="user" class="label">Email</label>
                                <input id="email"  name="email" type="text" class="input">
                            </div>
                            <div class="group" >
                                <center><a  class="button" href="javascript:grabar('<%=request.getContextPath()%>','ControladorDocente',6)">     
                                        Registrar
                                    </a></center>
                            </div>
                            <div class="hr"></div>
                            <div class="foot-lnk">
                                <label for="tab-1">Ya tienes cuenta?</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
