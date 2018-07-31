
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"  %>
<%@page  import="java.util.ArrayList" %>
<%@page  import="Bean.CursoAlumnoBEAN" %>
<%! 
    ArrayList<CursoAlumnoBEAN> lista=null;
    
 %>   

 <% 
    lista=(ArrayList<CursoAlumnoBEAN>)session.getAttribute("listacursodoc");
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
        <link href="<%=request.getContextPath()%>/css/custom.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>//use.edgefonts.net/bebas-neue.js"></script>
        <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
        <!-- Custom Fonts & Icons -->
        <link href='<%=request.getContextPath()%>/http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800' rel='stylesheet' type='text/css'>
        <link href="<%=request.getContextPath()%>/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/css/icomoon-social.css" rel="stylesheet" type="text/css"/>

        <script src="<%=request.getContextPath()%>/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    <body>
      
            <center>
        <div class="p-3 mb-2 bg-success text-white">CURSO DEL ESTUDIANTE</div>                 
                    <div style="width:95%; display: inline-block; margin-top:15px;">
                        <table class="table table-bordered">
                          <tr>
                              <td class="alert alert-info" role="alert" >CURSOS</td>
                              <td class="alert alert-info" role="alert" >DOCENTE</td>
                            </tr>
                            <tbody>
                               <% for(CursoAlumnoBEAN  obj:lista){ %> 
                                <tr>
                                    <td><%=obj.getCurso()%></td>    
                                    <td><%=obj.getDocente()%></td>    
                                </tr>
                               <% }%> 
                            </tbody>
                        </table>
                    </div>
               
            </center>

            
  
    </body>
</html>
