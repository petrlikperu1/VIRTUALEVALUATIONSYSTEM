
 <%@page import="BEAN.DocenteBean" %>
<%!
   DocenteBean  objDocenteSBean=null;
%>

<% 
   objDocenteSBean=(DocenteBean)request.getAttribute("datosdocenteactualizar");
 // String  parametros="&coddocente="+objDocenteSBean.getCODDOCENTE()+"&usuario="+objDocenteSBean.getUSUARIO()+"&codrol="+objDocenteSBean.getTIPO();
 %> 
<!DOCTYPE html>
<html>
    <body onload="cargarFoco()">
        <input type="hidden" name="op">
                        <input type="hidden" id="txtcodigo1"  name="txtcodigo1"  value="<%=objDocenteSBean.getCODDOCENTE()%>">
                        <input type="hidden" id="txtnombre"  name="txtnombre"  value="<%=objDocenteSBean.getNOMBDOCENTE()%>">
                        <input type="hidden" id="txtapepater"  name="txtapepater"  value="<%=objDocenteSBean.getAPEPATERDOCENTE()%>">
                        <input type="hidden" id="txtapemater"  name="txtapemater"  value="<%=objDocenteSBean.getAPEMATERDOCENTE()%>">
                                          
                        <div class="alert alert-info">
                            <h4><strong><center>Actualizar Datos Personales</center></strong></h4>                            
                        </div>  
                        
                      
			<div class="panel-body">                                              
				<div class="form-horizontal" role="form">    
                                                                           
                                        <div class="form-group">
						<label for="Usuario" class="col-lg-3 control-label">Codigo :</label>
						<div class="col-lg-8">
							<input type="text" name="txtcodigo"   disabled=false id="txtcodigo"  value="<%=objDocenteSBean.getCODDOCENTE()%>" class="form-control"  >
						</div>
                                         </div>
					        
                                        <div class="form-group">
						<label for="Clave" class="col-lg-3 control-label">Nombre :</label>
						<div class="col-lg-8">
							<input  class="form-control" type="text" name="txtnombre"  id="txtnombre"   disabled=false  value="<%=objDocenteSBean.getNOMBDOCENTE()%>"  >
						</div>
					</div>     
                                          
                                         
                                        <div class="form-group">
						<label for="Clave" class="col-lg-3 control-label">Apellido Paterno :</label>
						<div class="col-lg-8">
							<input  class="form-control"  type="text" name="txtapepater" id="txtapepater"  disabled=false  value="<%=objDocenteSBean.getAPEPATERDOCENTE()%>" >
						</div>
					</div>     
                                        <div class="form-group">
						<label for="Clave" class="col-lg-3 control-label">Apellido Materno :</label>
						<div class="col-lg-8">
							<input  class="form-control"  type="text" name="txtapemater" id="txtapepater"  disabled=false  value="<%=objDocenteSBean.getAPEMATERDOCENTE()%>" >
						</div>
					</div> 
                                        <div class="form-group">
						<label for="Clave" class="col-lg-3 control-label">E-MAIL :</label>
						<div class="col-lg-8">
							<input  class="form-control"  type="text" name="txtemail" id="txtemail"   value="<%=objDocenteSBean.getEMAIL()%>"  >
						</div>
					</div>        
                                          
                                       <div class="form-group">
						<label for="Clave" class="col-lg-3 control-label">Imagen:</label>
						<div class="col-lg-8">
							<button    class="btn btn-success btn-xlarge"  onclick="SubirImagen()"> <img src="<%=request.getContextPath()%>/imagenes/subirimagen.png" width="40px" height="35px"><br>Adjuntar Imagen</button>
						</div>
					</div>          
                                            
                                         <div class="form-group">
						<label for="Clave" class="col-lg-3 control-label">Nro Telefono :</label>
						<div class="col-lg-8">
							<input  class="form-control" type="text" name="txtnrotelefono" id="txtnrotelefono"   value="<%=objDocenteSBean.getNROTELEFONO()%>"  >
						</div>
					</div>        
                                        <div class="form-group">
						<label for="Clave" class="col-lg-3 control-label">Direccion :</label>
						<div class="col-lg-8">
                                                    <textarea class="form-control" name="txtarea" id="txtarea"  rows="10" cols="20"  class="input_text" ><%=objDocenteSBean.getDIRECCION()%></textarea> 
				                </div>
					</div>           
                                                
					<hr>
					<div class="form-group text-center">						
                                            <button type="button" class="btn btn-primary" onclick="ActualizarDatosPersonalesDocente('<%=request.getContextPath()%>','Docente',25)"  >
							 <img src="<%=request.getContextPath()%>/imagenes/actualizardatos.png" width="40px" height="40px"> Actualizar Datos
						</button>
                                                <button type="button" class="btn btn-primary" onclick="inicio()" >
							<img src="<%=request.getContextPath()%>/imagenes/salirdatos.png"   width="40px" height="40px"  alt="Salir">Salir
						</button>
					</div>
                                      <div id="divclavemodificada" ></div>
				</div>
			</div>	
  </div> 

    </body>
</html>
 
