
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"  %>
<%@page  import="Bean.AlumnoBEAN" %>
<%! 
   AlumnoBEAN  alumno=null; 
    
 %>
 
 
 <% 
     alumno=(AlumnoBEAN)session.getAttribute("datoAlunmo");
     
 %> 

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Intranet Docente</title>
        <!-- Bootstrap Core CSS -->
        <link href="<%=request.getContextPath()%>/css/icomoon-social.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
        <script src="<%=request.getContextPath()%>//use.edgefonts.net/bebas-neue.js"></script>
        <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
        <!-- Custom Fonts & Icons -->
        <script src="<%=request.getContextPath()%>/js/jquery.js" type="text/javascript"></script>
        <link href="<%=request.getContextPath()%>/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/css/icomoon-social.css" rel="stylesheet" type="text/css"/>
        <script src="<%=request.getContextPath()%>/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>

    </head>
    <body>
        <form name="form">
           <center>
               <div class="p-3 mb-2 bg-success text-white">CONFIGURACION : POR FAVOR <Br> ESCOGA UNA DE LAS OPCIONES A CONFIGURAR</div> <BR><BR>                
               <div style="width:95%; display: inline-block; margin-top:15px;">
                   
                 <div class="form-group row">
                  <div class="col-sm-10">
                      <button type="button" class="btn btn-primary" style="width: 400px;margin-left: 26%;"
                              onclick="javascript:Mantenimiento('<%=request.getContextPath()%>','ControladorIntranetALumno','<%="?op=8"%>','cambiardato','POST')"
                              ondblclick="javascript:Mantenimiento('<%=request.getContextPath()%>','ControladorIntranetALumno','<%="?op=10"%>','cambiardato','GET')">CONFIGURAR DATOS PERSONALES</button>
                  </div>
                  </div>
             
                            <div id="cambiardato">
                         
                            </div>
                 <br><br><br>
                  <div class="form-group row">
                    <div class="col-sm-10">
                        <button type="button" class="btn btn-primary"  id="seccioncontra"  
                                onclick="javascript:Mantenimiento('<%=request.getContextPath()%>','ControladorIntranetALumno','<%="?op=9"%>','cambiarcontra','POST')" 
                                ondblclick="javascript:Mantenimiento('<%=request.getContextPath()%>','ControladorIntranetALumno','<%="?op=10"%>','cambiarcontra','GET')"
                                style="width: 400px;margin-left: 26%;">CAMBIAR CONTRASEÑA</button>
                    </div>
                 </div>
                            <div id="cambiarcontra">
                         
                            </div>
                        
                </div>
          
                   
                   
             </center>
     

            <!-- Javascripts -->
            <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
            <script>window.jQuery || document.write('<script src="js/jquery-1.9.1.min.js"><\/script>')</script>
            <script src="js/bootstrap.min.js"></script>

            <!-- Scrolling Nav JavaScript -->
            <script src="js/jquery.easing.min.js"></script>
            <script src="js/scrolling-nav.js"></script>		
      </form>  
    </body>
</html>
