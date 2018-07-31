

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"  %>
<%@page  import="java.util.ArrayList" %>
<%@page  import="Bean.NotaAlumnoBEAN" %>
<%! 
    ArrayList<NotaAlumnoBEAN> lista1=null;
    ArrayList<NotaAlumnoBEAN> lista2=null;
    ArrayList<NotaAlumnoBEAN> lista3=null;
 
 %>   

 <% 
    lista1=(ArrayList<NotaAlumnoBEAN>)session.getAttribute("listanota1");
    lista2=(ArrayList<NotaAlumnoBEAN>)session.getAttribute("listanota2");
    lista3=(ArrayList<NotaAlumnoBEAN>)session.getAttribute("listanota3");
   
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
        <link href="<%=request.getContextPath()%>/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/css/icomoon-social.css" rel="stylesheet" type="text/css"/>

        <script src="<%=request.getContextPath()%>/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    <body>
        <center>
        <div class="p-3 mb-2 bg-success text-white">NOTAS DEL ESTUDIANTE</div>                 
                    <div style="width:95%; display: inline-block; margin-top:15px;">
                        <table class="table table-bordered">
                          
                          
                            <tr>
                              <td class="alert alert-info1" role="alert" >PRIMER TRIMESTRE</td>   
                            </tr>
                            <tr>
                              <td class="alert alert-info" role="alert" >CURSOS</td>
                              <td class="alert alert-info" role="alert" ><center>PROMEDIO FINAL</center></td>
                            </tr>
                            <tbody>
                                
                                <% for(NotaAlumnoBEAN  obj:lista1){ %> 
                                
                                    <tr>
                                      
                                    <td><%=obj.getCurso()%></td>    
                                    <td><center><%=obj.getNota()%></center></td>    
                                     </tr>
                                <%}%>
                            <tr>
                              <td class="alert alert-info1" role="alert" >SEGUNDO TRIMESTRE</td>   
                            </tr> 
                            <tr>
                              <td class="alert alert-info" role="alert" >CURSOS</td>
                              <td class="alert alert-info" role="alert" ><center>PROMEDIO FINAL</center></td>
                            </tr>
                            <tbody>
                               <% for(NotaAlumnoBEAN  obj:lista2){ %> 
                                
                                    <tr>
                                      
                                    <td><%=obj.getCurso()%></td>    
                                    <td><center><%=obj.getNota()%></center></td>  
                                     </tr>
                                <%}%>
                            <tr>
                              <td class="alert alert-info1" role="alert" >TERCER TRIMESTRE</td>   
                            </tr> 
                            <tr>
                              <td class="alert alert-info" role="alert" >CURSOS</td>
                              <td class="alert alert-info" role="alert" ><center>PROMEDIO FINAL</center></td>
                            </tr>
                            <tbody>
                               <% for(NotaAlumnoBEAN  obj:lista3){ %> 
                                
                                    <tr>
                                      
                                    <td><%=obj.getCurso()%></td>    
                                    <td><center><%=obj.getNota()%></center></td>    
                                     </tr>
                                <%}%>
                              
                              
                            </tbody>
                        </table>
                    </div>
               
            </center>

            <!-- Javascripts -->
            <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
            <script>window.jQuery || document.write('<script src="js/jquery-1.9.1.min.js"><\/script>')</script>
            <script src="js/bootstrap.min.js"></script>

            <!-- Scrolling Nav JavaScript -->
            <script src="js/jquery.easing.min.js"></script>
            <script src="js/scrolling-nav.js"></script>		
    </body>
</html>
