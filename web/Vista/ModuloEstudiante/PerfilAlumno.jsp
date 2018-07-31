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
        <link href="<%=request.getContextPath()%>/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/css/icomoon-social.css" rel="stylesheet" type="text/css"/>
        <script src="<%=request.getContextPath()%>/js/custom.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    <body onload="noback()">
                        <center>
                <div style="width:95%;height: 280px;background: #9ca8ba;font-size: 30px;"><BR><BR><%=alumno.getNombre_Alu()%> <BR><BR>
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
                                    <td ><label id="dni" name="dni" value=""><%=alumno.getDni_Alumno()%></label></td>    
                                </tr>
                            <br>
                                <tr>
                                    <th scope="row">CODIGO DE GRADO</th>
                                    <td><label><%=alumno.getCod_Grado()%></label></td>    
                                </tr>
                                 <tr>
                                    <th scope="row">ESTADO:</th>
                                    <td><label>HABILITADO</label></td>    
                                </tr>
                                
                                <tr>
                                    <th scope="row">SEXO:</th>
                                    <td><label id="sexo" name="sexo" value=""><%=alumno.getSexo()%></label></td>    
                                </tr>
                                <tr>
                                    <th scope="row">TELEFONO:</th>
                                    <td><label id="telefono" name="telefono" value=""><%=alumno.getTelefono_Alu()%></label></td>    
                                </tr>
                                 <tr>
                                    <th scope="row">GRADO</th>
                                    <td><label><%=alumno.getGrado()%></label></td>    
                                </tr>
                                <tr>
                                    <th scope="row">SECCION</th>
                                    <td><label><%=alumno.getSeccion()%></label></td>    
                                </tr>
                                
                            </tbody>
                        </table>
                    </div>
               
            </center>

            <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
            <script>window.jQuery || document.write('<script src="js/jquery-1.9.1.min.js"><\/script>')</script>
            <script src="js/bootstrap.min.js"></script>

            <!-- Scrolling Nav JavaScript -->
            <script src="js/jquery.easing.min.js"></script>
            <script src="js/scrolling-nav.js"></script>		
        </form>
    </body>
</html>
