
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <div class="p-3 mb-2 bg-success text-white">NOTAS DEL ESTUDIANTE</div>                 
                    <div style="width:95%; display: inline-block; margin-top:15px;">
                        <table >
                <thead>
                    <tr>
                        <th colspan="6" style="padding-left:350px; font-size: 16px; font-family: Arial Black;color:white;background: #A7A7A7">Registro de Notas </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Alumno</td>    
                        <td>PP</td>    
                        <td>EP</td>    
                        <td>EF</td>    
                        <td>Promedio</td>    
                    </tr>
                    <tr>  
                        
                        <td><input type="text" name="txtnombre"></td>
                        <td><input type="text" name="txtpp"></td>
                        <td><input type="text" name="txtep"></td>
                        <td><input type="text" name="txtef"></td>
                        <td><input type="text" name="txtpromedio"></td>  
                           
                    </tr>
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
