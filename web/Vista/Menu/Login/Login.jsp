<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PAGINA INICIAL DEL SISTEMA</title>    
    
    <!-- Bootstrap Core CSS -->
    <link href="<%=request.getContextPath()%>/css/icomoon-social.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
    <link href="<%=request.getContextPath()%>/css/custom.css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>//use.edgefonts.net/bebas-neue.js"></script>
    <script src="<%=request.getContextPath()%>/js/javascript.js" type="text/javascript"></script>
    
    
    <script src="<%=request.getContextPath()%>/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <script>
    function inicio()
            {
               window.open("<%=request.getContextPath()%>/ModuloMenu?op=6",
                "_blank", 
                "toolbar=yes,scrollbars=yes,resizable=yes,top=20,left=200,width=800,height=500");
           
            }
    </script>
</head>

<body style="background: #333;">
   
     <div class="section section-breadcrumbs">
			<div class="container">
                        
				<div class="row">
                                    <div class="col-md-6 " style="float: right">
						<h1>SELECCIONE CATEGORIA</h1>
					</div>
				</div>
                           
			</div>
		</div>
        <center>
        <div style="width: 80%;margin: 10%;">	
        <div class="panel panel-primary">
            <div class="panel-heading text-center" style="background:  #430000;" >
                <h4 style="color:  #d2d2d2;"><b>SELECCIONE EL TIPO DE USUARIO</b></h4>
               
            </div>
            <div class="panel-body" style="background:#7a7a7a">
			   			
			    <div class="row">
			    	<div class="col-md-6 col-md-offset-3"><HR size="3px" color="#0000ff">
			    	</div>
				</div>			
			   
			    <div class="row">
		<div class="col-md-6 col-md-offset-3 soluc">
                    
                                    <center>
                                       <a class="btn btn-success btn-xlarge" style="background:black;"
                                          href="javascript:menuopciones('<%=request.getContextPath()%>','ModuloMenu',5)">
                                           <img src="<%=request.getContextPath()%>/imglogin/personal.png"><center>Docente</center></a>
                                        
                                           <button  class="btn btn-warning btn-xlarge" style="background:black;" 
                                                    onclick="menuopciones('<%=request.getContextPath()%>','ModuloMenu',6)">
                                           <img src="<%=request.getContextPath()%>/imglogin/alumno.png"><center>Alumno</center>      
                                           </button>
                                    </center>                          
		</div>
              </div >		
            
            </div>
            <div class="panel-footer text-center" style="background: #d2d2d2">
                Sistema Virtual de Educación - Derechos reservados &copy; 2017-2018
            </div>            
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

</body>
</html>

