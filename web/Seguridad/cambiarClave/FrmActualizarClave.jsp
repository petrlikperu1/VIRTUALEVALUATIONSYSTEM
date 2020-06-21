

<%@page import="BEAN.DocenteSBean" %>
<%!
   DocenteSBean  objDocenteSBean=null;
%>

<% 
   String msj;
   objDocenteSBean=(DocenteSBean)request.getAttribute("datosdocente");
   String  parametros="&coddocente="+objDocenteSBean.getCODDOCENTE()+"&usuario="+objDocenteSBean.getUSUARIO()+"&codrol="+objDocenteSBean.getTIPO();
 %>
<!DOCTYPE html>
<html>
    <body onload="cargarFoco()">
                        <input type="hidden" name="op">                       
                        <div class="alert alert-info">
                            <h4><strong><center>Cambiar  Contraseña</center></strong></h4>                            
                        </div>                         
			<div class="panel-body">                                              
				<div class="form-horizontal" role="form">    
                                     
					<div>
                                                 <center>
                                                     
                                                  <img src="<%=request.getContextPath()%>/imagenes/CANDADOACCESO.png" width="100px" height="100px"> 
                                                 </center>

                                        </div>
                                        <br>
                                        <div class="form-group">
						<label for="Usuario" class="col-lg-3 control-label">Contraseña Actual :</label>
						<div class="col-lg-8">
							<input type="password" name="txtclave1"  id="txtclave1"   placeholder="Ingrese Clave Actual" onkeyup="validarClaveActual('<%=request.getContextPath()%>','Docente',19,'<%=parametros%>')" class="form-control" >
						<div id="correcto" ></div>
                                                </div>
					</div>        
                                        <div class="form-group">
						<label for="Clave" class="col-lg-3 control-label">Nueva Contraseña :</label>
						<div class="col-lg-8">
							<input  class="form-control"  type="password" name="txtclavenueva"    id="txtclavenueva" placeholder="Ingrese Nueva Clave " disabled=false    onkeyup="validarClaveNueva('<%=request.getContextPath()%>','Docente',22)">
						<div id="correcto0" ></div>
					</div>     
                                        </div>   
                                         
                                        <div class="form-group">
						<label for="Clave" class="col-lg-3 control-label">Repetir Nueva Contraseña :</label>
						<div class="col-lg-8">
							<input  class="form-control"  type="password" name="txtrepetirclave" id="txtrepetirclave"    placeholder="Repita el Ingreso Nueva Clave"  disabled=false    onkeyup="validarRepetirClaveNueva('<%=request.getContextPath()%>','Docente',20)">
						<div id="correcto1" ></div>
					</div>     
                                        </div>            
                                                
					<hr>
					<div class="form-group text-center">						
                                            <button type="button" class="btn btn-primary" onclick="GrabarCambiosClave('<%=request.getContextPath()%>','Docente',21,'<%=parametros%>')"  >
							<img src="<%=request.getContextPath()%>/imagenes/modificar.png"   width="20px" height="20px"  alt="Grabar"> Actualizar Cambios
						</button>
                                                <button type="button" class="btn btn-primary" onclick="inicio()" >
							<img src="<%=request.getContextPath()%>/imagenes/salirdatos.png"   width="20px" height="20px"  alt="Salir">Salir
						</button>
					</div>
                                      <div id="divclavemodificada" ></div>
				</div>
			</div>	
  </div> 

    </body>
</html>
 



