
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"  %>
<%@page  import="Bean.DocenteBEAN" %>
<%! 
   DocenteBEAN  docente=null; 
    
 %>
 
 
 <% 
     docente=(DocenteBEAN)session.getAttribute("datoDocente");
     
 %>
<html>
    <head>
        <script src="<%=request.getContextPath()%>/js/jquery.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   <form id="form">   
  
    <center>
         <table class="table table-bordered">
        
                            
                           
                       
        <tbody>
                                <tr>
                                    <td>NOMBRE</td>
                                    <td><input type="text" class="form-control" name="nombreca" id="nombreca" placeholder="<%=docente.getNombre_Doc()%>"></td>
                                </tr>
                                                            
                                <tr>
                                    <td>TELEFONO</td>
                                    <td><input type="text" class="form-control" name="telefonoca" id="telefonoca" placeholder="<%=docente.getTelefono_Doc()%>"></td>
                                </tr>
                                
       </tbody>
                       
                                
       </table>
                         <div class="form-group row">
                               
                                <div class="col-sm-10" >
                        <center><button id="btnenviodato"  class="btn btn-primary" onclick="guardarDatos()">     
                                        MODIFICAR DATOS
                    </button></center>
                    </div>1
                        </div>
    </center>  
    </form>
    </body>
</html>
