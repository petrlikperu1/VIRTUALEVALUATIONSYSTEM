
<%@page import="UTIL.Constantes" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="SUNAT">
    <title>.:: Pagina de Mensajes ::.</title>    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min_1.css">
    <script src="<%=request.getContextPath()%>/jquery-ui/jquery.js"></script>   
    <script src="<%=request.getContextPath()%>/js/bootstrap.min1.js" ></script>
    <script src="/a/js/libs/blockUI/jquery.blockUI.js" type="text/javascript"></script>
    <style type="text/css">		    
		  .div_cuerpo
                  {
                    margin-top: 15px;
                   }
    </style>
    <script>
    function  iniciar1(){
        var url="<%=request.getContextPath()%>/Seguridad/loginAcceso/Docente/FrmLoginPersonal.jsp";	 
        var opciones="toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,width=1500,height=2000";
        window.open(url,"otra",opciones);
     }
    function  iniciar2(){
        var url="<%=request.getContextPath()%>/Seguridad/loginAcceso/Alumno/FrmLoginAlumno.jsp";	 
        var opciones="toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,width=1500,height=2000";
        window.open(url,"otra",opciones);
     }       
    </script> 
</head>

<body>
	<div class="container div_cuerpo" id="div_cuerpo1">	
        <div class="panel panel-primary">
            <div class="panel-heading text-center" >
                <h4>PERUVIAN UNIVERSITY SIMON BOLIVAR</h4>
               
            </div>
            <div class="alert alert-info">
                                    <h4><strong><center> ONLINE EVALUATION SYSTEM</center></strong></h4>                            
                        </div>
            <div class="panel-body">
			    <div class="row">
                                
			    	<div class="col-md-6 col-md-offset-3">
                                    <center>  <img  src="imagenes/seguridadloguin.png"></center>
			    	</div>
			    </div>			
			    <div class="row">
			    	<div class="col-md-6 col-md-offset-3 error text-center">Access to the system
			    	</div>
				</div>
			    <div class="row">
			    	<div class="col-md-6 col-md-offset-3"><HR size="3px" color="#0000ff">
			    	</div>
				</div>			
			   
			    <div class="row">
			    	<div class="col-md-6 col-md-offset-3 soluc">
                                    <center> 
                                        <button    class="btn btn-success btn-xlarge" onclick="iniciar1()" >
                                            <center>  <img  src="imagenes/personal.png" width="100px" height="100px"></center><br>
                                            Personal
                                        </button> 
                                        <button    class="btn btn-warning btn-xlarge"  onclick="iniciar2()" >
                                            <center>  <img  src="imagenes/alumno.png" width="100px" height="100px"></center><br>
                                            Alumno
                                        </button> 
               
                                    </center>
                                    
                                    
			    	</div>
			    </div>			
			   
            </div>
            <div class="panel-footer text-center">               
                Online Assessment System - Copyright &copy; 2015-2017
            </div>            
        </div>					
	</div>
</body>
</html>

