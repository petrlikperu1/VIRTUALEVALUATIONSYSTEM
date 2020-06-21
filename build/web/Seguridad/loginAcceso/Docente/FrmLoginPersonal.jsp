<%!     
   String msj=null; 
 %>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="System Developer">
	<meta viewport="width=device-width, initial-scale=1">
	<title>Sistema de Evaluación Online</title>
        <link href="<%=request.getContextPath()%>/css/jquery.alerts.css" rel="stylesheet" type="text/css" media="screen" />
        <link href="<%=request.getContextPath()%>/css/jquery.ui.base.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/css/jquery.ui.all.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/css/jquery.ui.theme.css" rel="stylesheet" type="text/css"/>       
        <script src="<%=request.getContextPath()%>/js/jquery.js"></script> 
        <script src="<%=request.getContextPath()%>/jquery/jquery.alerts.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/js/javascript.js"></script>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min_1.css">
        <script src="<%=request.getContextPath()%>/js/bootstrap.min1.js" ></script>        
        
</head>
<body  onload="limpiarCampos()">

	<div class="form-center">

            <form  name="form"     class="panel panel-primary"   >
                        
                <input type="hidden" name="op" >
             
                        <div class="alert alert-info">
                                    <h4><strong><center>Sistema Virtual de Evaluación en Linea</center></strong></h4>                            
                        </div>
			
			<div class="panel-body">
                               
                                              <div>
                                                 <center>
                                                   <img src="<%=request.getContextPath()%>/imagenes/logosimonbolivar.jpg" width="200px" height="100px"/></td>         
                                                 </center>

                                               </div> 
				<div class="form-horizontal" role="form">
                                       <div class="form-group">
						<label for="Tipo" class="col-lg-3 control-label">Tipo :</label>
						<div class="col-lg-8">
							<select  name="tipousu"   id="tipousu" class="form-control"    >
                                                            <option value="0">-----------------</option> 
                                                            <option value="3">Docente Curso</option> 
                                                            <option value="2">Coordinador Curso</option> 
                                                            <option value="1">Administrador Sistema</option> 
                                                        </select>
						</div>
					</div>                                   
					<div class="form-group">
						<label for="usuario" class="col-lg-3 control-label">Usuario:</label>
						<div class="col-lg-8">
                                                    <input type="text" id="txtusu"  name="txtusu" class="form-control" placeholder="Ingrese su Usuario" value="" >
						</div>
					</div>
					<div class="form-group">
						<label for="clave" class="col-lg-3 control-label">Clave:</label>
						<div class="col-lg-8">
                                                    <input type="password"   id="txtcla"   name="txtcla" class="form-control" placeholder="Ingrese su Clave" value=""  >
						</div>
					</div>
					<hr>
					<div class="form-group text-center">
						
                                                <button type="button" class="btn btn-primary"   onclick="validarAccesoPersonal('<%=request.getContextPath()%>')">
							<img src="<%=request.getContextPath()%>/imagenes/candado1.png"     alt="Configuracion"> Iniciar Sesión
						</button>
					</div>
                               
                                            <%
                                              if(request.getAttribute("mensaje")!=null)
                                              { 
                                                 msj=(String)request.getAttribute("mensaje");   
                                            %>
                                                  
                                               <div class="alert alert-warning">
                                                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                   <strong><%=msj%></strong>

                                                </div> 
                                                
                                                  
                                           <%   }
                                            %>
                                                
				</div>
			</div>
		</form>
	</div>
</body>
</html>
