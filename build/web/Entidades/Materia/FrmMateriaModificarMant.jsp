<%@page import="java.util.ArrayList"%>
<%@page import="BEAN.MateriaBean" %>
<%@page import="BEAN.CarreraProfesionalBean" %>
<%@page import="java.util.ArrayList;" %>
<%!
   String  msj;
   MateriaBean  objMateriaBean=null;

%>

<% 
   objMateriaBean=(MateriaBean)request.getAttribute("datos");
  
 %>   

<!DOCTYPE html>
<html>
    <body onload="cargarFoco()">
                        <input type="hidden" name="op">
                        <input type="hidden" name="hddcodigo" id="hddcodigo" value="<%=objMateriaBean.getCODMATERIA()%>">
                        <input type="hidden" name="hddcodcar" id="hddcodcar" value="<%=objMateriaBean.getCODCARRERA()%>">
                        <div class="alert alert-info">
                            <h4><strong><center>Mantenimiento de la Tabla Materia<br><br>Modificar Materia</center></strong></h4>                            
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
						<label for="codigo" class="col-lg-3 control-label">Codigo Materia:</label>
						<div class="col-lg-8">
							<input type="text"   name="txtcodigo" disabled="false" value="<%=objMateriaBean.getCODMATERIA()%>" class="form-control" >
						</div>
					</div>
                                         <div class="form-group">
						<label for="Nombre" class="col-lg-3 control-label">Carrera Profesional:</label>
						<div class="col-lg-8">
							<input type="text" id="txtnombre" placeholder="Ingrese nombre..." disabled="false" class="form-control"  value="<%=objMateriaBean.getNOMBCARRERA()%>">
						</div>
					</div>         
                                                
                                                
                                                
                                                
					<div class="form-group">
						<label for="Nombre" class="col-lg-3 control-label">Nombre:</label>
						<div class="col-lg-8">
							<input type="text" id="txtnombre" placeholder="Ingrese nombre..."  class="form-control"  value="<%=objMateriaBean.getNOMBMATERIA()%>">
						</div>
					</div>                                       
                                            
                                                <div class="form-group">
						<label for="Tipo" class="col-lg-3 control-label">Estado :</label>
						<div class="col-lg-8">
                                                    <%
                                                        String verA="";
                                                        String verI="";
                                                        if(objMateriaBean.getESTADO().equals("A")) verA="selected='selected'";
                                                        else verI="selected='selected'";
                                                        %>
							<select name="cboestado"  id="cboestado"  class="form-control" >
                                                            <option <%=verA%> value="A">HABILITADO</option>
                                                            <option <%=verI%> value="I">DESABILITADO</option>
                                                        </select>
						</div>
					       </div> 
					<hr>
					<div class="form-group text-center">						
						<button type="submit" class="btn btn-primary" onclick="ModificarMateria('<%=objMateriaBean.getCODMATERIA()%>','<%=request.getContextPath()%>')" >
							<img src="<%=request.getContextPath()%>/imagenes/modificar.png"   width="20px" height="20px"  alt="modificar"> Modificar
						</button>
                                                <button type="submit" class="btn btn-primary" onclick="salir('<%=request.getContextPath()%>','Materia',5,'')"  >
							<img src="<%=request.getContextPath()%>/imagenes/salirdatos.png"   width="20px" height="20px"  alt="Salir">Salir
						</button>
					</div>
				</div>
			</div>	
  </div>        
    </body>
</html>