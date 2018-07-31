
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
        <script src="<%=request.getContextPath()%>/js/jquery.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   <form name="form">
     <input type="hidden" name="switch"  value="2">   
  
    <center>
         <table class="table table-bordered">
        
                            
                           
                       
        <tbody>
                                <tr>
                                    <td>NOMBRE</td>
                                    <td><input type="text" class="form-control" name="nomalu" id="nomalu"  placeholder="<%=alumno.getNombre_Alu()%>"></td>
                                </tr>
                                                            
                                <tr>
                                    <td>TELEFONO</td>
                                    <td><input type="text" class="form-control" name="telalu" id="telalu"  placeholder="<%=alumno.getTelefono_Alu()%>"></td>
                                </tr>
                                <tr>
                                    <td>SEXO</td>
                                    <td><select class="form-control" name="sexoalu" id="sexoalu" >
                                    <option value="" selected> ---------</option> 
                                    <option value="femenino">Femenino</option> 
                                    <option value="masculino">Masculino</option> 
                                    </select>
                                    </td>   
                                </tr>
                                
       </tbody>
                       
                                
       </table>
                         <div class="form-group row">
                                <div class="col-sm-10">
                                    <input type="button" id="botondecambio"  onclick="cambiardatosalumno('<%=request.getContextPath()%>','ControladorModificarAlumnoDato'); "  class="btn btn-primary" value="GUARDAR CONTRASEÑA"
                                </div>
                        </div>
                        </div>
                                
    </center>  
    </form>
    </body>
</html>
