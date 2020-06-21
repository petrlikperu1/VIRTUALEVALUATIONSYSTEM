<%@page import="BEAN.CarreraProfesionalBean" %>
<%!
   CarreraProfesionalBean  objRegionBean=null;
   String msj;
%>

<% 
   objRegionBean=(CarreraProfesionalBean)request.getAttribute("datos");
%>
<!DOCTYPE html>
<html>
    <body onload="cargarFoco()">
        
                        <div class="alert alert-info">
                            <h4><strong><center>Ver  Resultados de  Examen <br><br>Modificar Carrera Profesional</center></strong></h4>                            
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
							<input type="text"   disabled="false" name="txtcodigo" value="<%=objRegionBean.getCODCARRERA()%>"  class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label for="Nombre" class="col-lg-3 control-label">Nombre:</label>
						<div class="col-lg-8">
							<input type="text" id="txtnombre"   name="txtnombre"  value="<%=objRegionBean.getNOMBCARRERA()%>"   placeholder="Ingrese nombre..."  class="form-control"  required="required">
						</div>
					</div> 
                                         <div class="form-group">
						<label for="estado" class="col-lg-3 control-label">Estado:</label>
						<div class="col-lg-8">
						 <%
                                                    String verA="";
                                                    String verI="";
                                                    if(objRegionBean.getESTADO().equals("A")) verA="selected='selected'";
                                                    else verI="selected='selected'";
                                                    %>
                                                	
                                                   <select  name="tipo2"   id="cboestado" class="form-control"    required="required">
                                                           <option <%=verA%> value="A">HABILITADO</option>
                                                        <option <%=verI%> value="I">DESABILITADO</option>
                                                        </select> 
                                                    
						</div>
					</div>  
					<hr>
					<div class="form-group text-center">						
						<button type="submit" class="btn btn-primary" onclick="modificarCarreraProfesional('<%=objRegionBean.getCODCARRERA()%>','<%=request.getContextPath()%>')" >
							<img src="<%=request.getContextPath()%>/imagenes/modificar.jpg"   width="20px" height="20px"  alt="Modificar">Modificar
						</button>
                                                <button type="submit" class="btn btn-primary" onclick="salir('<%=request.getContextPath()%>','CarreraProfesional',5,'')" >
							<img src="<%=request.getContextPath()%>/imagenes/salirdatos.png"   width="20px" height="20px"  alt="Salir">Salir
						</button>
					</div>
				</div>
			</div>	
  </div>        
    </body>
</html>