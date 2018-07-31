
<%@page import="Bean.DocenteBEAN"%>
<%@page session="true"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%! 
   DocenteBEAN  docente=null; 
    
 %>
 
 
 <% 
     docente=(DocenteBEAN)session.getAttribute("datoDocente");
     
 %> 
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>TRABAJO WEB</title>
     
    <!-- Bootstrap Core CSS -->
   <link href="<%=request.getContextPath()%>/css/icomoon-social.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/css/custom.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
        <!-- Custom Fonts & Icons -->     
        <link href='<%=request.getContextPath()%>/http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800' rel='stylesheet' type='text/css'>

        <script src="<%=request.getContextPath()%>/js/scrolling-nav.js" type="text/javascript"></script>
        <link href="<%=request.getContextPath()%>/css/main.css" rel="stylesheet" type="text/css"/>
</head>

<body onload="noback()" class="bodyes">
     <form  name='form'>
         <div class="http">  
            <input type="hidden" name="op">

    
 
   <div class='primero' >
    <div class='segundo'>
     <div class="tercero" >
                            <div class="cuarto">
                            <img  src="<%=request.getContextPath()%>/img/usuario3.jpg" style="padding:10%;width:40%; height: 40%; border-radius: 100%; "/>
                            
                               <BR><%=docente.getNombre_Doc()%> <%=docente.getApellido_Doc() %>
                               <BR> <div class="punto">
                                   <img src="<%=request.getContextPath()%>/img/punto verde.png" alt="" width="10" height="10"/> En linea
                               </div> <BR>
                            </div>
                            <BR>
                          <div  role="group" aria-label="Basic example" >
                              <center> <label style="margin:3%; width: 97%;"   class="btn1 btn-info1">MI INFORMACION</label></center>
                             <button style="margin:1%; width: 74%"  type="button" class="btn btn-info"
                                     onclick="javascript:Mantenimiento('<%=request.getContextPath()%>','ControladorIntranetDocente','<%="?op=5"%>','intranetdocente','GET')">PEFIL</button>
                                <BR>
                                <button style="margin:1%;margin-left:1%; width: 74%"type="button" class="btn btn-info" 
                                        onclick="javascript:Mantenimiento('<%=request.getContextPath()%>','ControladorIntranetDocente','<%="?op=4"%>','intranetdocente','GET')">CONFIGURACION</button>
                                        <BR> <br>
                                <center> <label style="margin:3%; width: 97%;"   class="btn1 btn-info1">ASIGNATURAS</label></center>
                                 
                                <button style="margin:1%; width: 74%"  type="button" class="btn btn-info" 
                                        onclick="javascript:Mantenimiento('<%=request.getContextPath()%>','ControladorIntranetDocente','<%="?op=2"%>','intranetdocente','GET')">CURSOS</button>
                                <BR> 
                                <button style="margin:1%; width: 74%" type="button" class="btn btn-info" 
                                        onclick="javascript:Mantenimiento('<%=request.getContextPath()%>','ControladorIntranetDocente','<%="?op=3"%>','intranetdocente','GET')">NOTAS</button>
                                        <bR><br><br>
                                <button style="margin:3%; width: 74%;background:  #430000" type="button" class="btn btn-info"
                                        onclick="javascript:menuopciones('<%=request.getContextPath()%>','ControladorIntranetDocente',7)">CERRAR SESION</button>
                                <BR> 
                            </div>                
     </div> </div>
                                <div>
                                
     
                                  <button class="sesioncerrar"  type="button" class="btn btn-info"
                                        onclick="javascript:menuopciones('<%=request.getContextPath()%>','ControladorIntranetDocente',7)">
                                      <img src="<%=request.getContextPath()%>/img/cerrar_sesion.png" width="30" height="30"/>-CERRAR-SESION
                                  </button>  
                                       
                                </div> <br>
                                <br><br>
                          
                               
    <div id="intranetdocente" class="intranetalum">       
                   
                                 
                    <center>
                <div style="width:95%;height: 280px;background: #eff1f4;font-size: 30px;"><BR><BR><%=docente.getNombre_Doc()%> <%=docente.getApellido_Doc() %> <BR><BR>
                <img  src="<%=request.getContextPath()%>/img/usuario3.jpg" style="width:140px; height: 140px; border-radius: 100%; "/>
                <BR><h5>Estudiante</h5></div>                 
               

                     <div style="width:95%; display: inline-block; margin-top:15px;">
                         <br>   
                        <table class="table table-bordered">
                         <tr>
                              <td class="alert alert-info" role="alert" >DATOS PERSONALES</td>
                         </tr>
                            <tbody>
                                <tr>
                                    <th scope="row">DNI:</th>
                                    <td ><label id="dni" name="dni" value=""><%=docente.getDni_Docente()%></label></td>    
                                </tr>
                            <br>
                                
                                 <tr>
                                    <th scope="row">ESTADO:</th>
                                    <td><label>HABILITADO</label></td>    
                                </tr>
                                
                                <tr>
                                    <th scope="row">SEXO:</th>
                                    <td><label id="sexo" name="sexo" value=""><%=docente.getSexo()%></label></td>    
                                </tr>
                                <tr>
                                    <th scope="row">TELEFONO:</th>
                                    <td><label id="telefono" name="telefono" value=""><%=docente.getTelefono_Doc()%></label></td>    
                                </tr>
                            </tbody>
                        </table>
                    </div>
               
            </center>   
          </div>
   </div>
                


        <!-- Javascripts -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.9.1.min.js"><\/script>')</script>
		
		<!-- Scrolling Nav JavaScript -->
		<script src="js/jquery.easing.min.js"></script>
		<script src="js/scrolling-nav.js"></script>	
         </div> 	
     </form>
    </body>
</html>
