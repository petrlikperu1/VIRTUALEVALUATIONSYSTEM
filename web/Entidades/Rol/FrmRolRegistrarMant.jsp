<%!
   String codcad,msj;
%>
<% 
  codcad=(String)request.getAttribute("codigogenerado");
%>
<!DOCTYPE html>
<html>
    <body >
                        <input type="hidden" name="op">
                        <input type="hidden" name="hddcodigo" value="<%=codcad%>">
                        <div class="alert alert-info">
                            <h4><strong><center>Mantenimiento de la Tabla Rol<br><br>Registrar Rol</center></strong></h4>                            
                        </div>                         
			<div class="panel-body">                                              
				<div class="form-horizontal" role="form">    
                                     <%
                          if(request.getAttribute("mensaje")!=null){
                              msj=(String)request.getAttribute("mensaje");                            
                         
                       %>                                                  
                           <div class="alert alert-success">
                              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                               <strong><%=msj%></strong>

                            </div>              
                       <%   }
                        %>                     
                                              
                                                <div class="form-group">
						<label for="codigo" class="col-lg-3 control-label">Codigo:</label>
						<div class="col-lg-8">
							<input type="text"  id="txtcodigo1" name="txtcodigo1" disabled="false" value="<%=codcad%>" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label for="Nombre" class="col-lg-3 control-label">Nombre:</label>
						<div class="col-lg-8">
							<input type="text" name="txtnombre"   id="txtnombre" placeholder="Ingrese nombre..."  class="form-control"  required="required">
						</div>
					</div>
					<hr>
					<div class="form-group text-center">						
						<button type="submit" class="btn btn-primary" onclick="grabarRol('<%=codcad%>','<%=request.getContextPath()%>')" >
							<img src="<%=request.getContextPath()%>/imagenes/grabar.png"   width="20px" height="20px"  alt="Grabar"> Grabar
						</button>
                                                <button type="submit" class="btn btn-primary"   onclick="salir('<%=request.getContextPath()%>','Rol',5,'')" >
							<img src="<%=request.getContextPath()%>/imagenes/salirdatos.png"   width="20px" height="20px"  alt="Salir">Salir
						</button>
					</div>
				</div>
			</div>	
  </div>        
    </body>
</html>
      

