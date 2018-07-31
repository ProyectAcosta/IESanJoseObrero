
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
        <title>JSP Page</title>
    </head>
    <body>
    <center>
         <table class="table table-bordered">
         
                            
                           
                       
        <tbody>
                                <tr>
                                    <td>CONTRASEÑA ACTUAL</td>
                                    <td><label type="text" class="form-control" id="nomb"><%=alumno.getContra_Alum()%></label></td>
                                </tr>
                                                            
                                <tr>
                                    <td>NUEVA CONTRASEÑA</td>
                                    <td><input type="password" class="form-control" id="tel" placeholder="Ingresa su nueva contraseña"></td>
                                </tr>
                                <tr>
                                    <td>REPITA NUEVA CONTRASEÑA</td>
                                    <td><input type="password" class="form-control" id="tel" placeholder="Ingresa su nueva contraseña"></td>
                                </tr>
                                
       </tbody>
                          
       </table>
                       <div class="form-group row">
                                <div class="col-sm-10">
                                    <button type="button" class="btn btn-primary" onclick="">GUARDAR CONTRASEÑA</button>
                                </div>
                        </div>
    </body>
</html>
