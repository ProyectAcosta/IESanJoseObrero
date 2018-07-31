
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"  %>
<%@page  import="Bean.AlumnoBEAN" %>
<%! 
   AlumnoBEAN  alumno=null; 
    
 %>
 
 
 <% 
     alumno=(AlumnoBEAN)session.getAttribute("datoAlunmo");
     
 %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="<%=request.getContextPath()%>/js/jquery-1.9.1.min.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/js/jquery.easing.min.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>

        <title>JSP Page</title>
    </head>
    <body>
    <form name="form">
        <input type="hidden" name="switch"  value="1">
        <center>
         <table class="table table-bordered">
         
                            
                           
                       
        <tbody>
                                <tr>
                                    <td>CONTRASEÑA ACTUAL</td>
                                    <td><label type="text" class="form-control" name="contra1" id="contra1" ><%=alumno.getContra_Alum()%></label></td>
                                </tr>
                                                            
                                <tr>
                                    <td>NUEVA CONTRASEÑA</td>
                                    <td><input type="password"  class="form-control" name="contranueva1"  
                                               id="contranueva1" placeholder="Ingresa su nueva contraseña" ></td>
                                </tr>
                                <tr>
                                    <td>REPITA NUEVA CONTRASEÑA</td>
                                    <td><input type="password"  class="form-control"name="contranueva2"
                                               id="contranueva2" placeholder="Ingresa su nueva contraseña" ></td>
                                </tr>
                                
       </tbody>
                          
       </table>
                                  
                       <div class="form-group row">
                                <div class="col-sm-10">
                                    <input type="button" id="botondecambio"  onclick="cambiarclavealumno('<%=request.getContextPath()%>','ControladorModificarAlumnoDato'); "  class="btn btn-primary" value="GUARDAR CONTRASEÑA"
                                </div>
                        </div>
                        </div>
        </center>
      </form>
    </body>
</html>
    