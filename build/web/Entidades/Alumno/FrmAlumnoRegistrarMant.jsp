<%@page import="BEAN.CarreraProfesionalBean"%>
<%@page import="java.util.ArrayList;" %>
<%!
   String codcad,msj;
   ArrayList<CarreraProfesionalBean>    listaCarreraProfesional=null;
%>
<% 
  codcad=(String)request.getAttribute("codigogenerado");
  listaCarreraProfesional=(ArrayList<CarreraProfesionalBean>)request.getAttribute("listaCarreraProfesional");
%>
<!DOCTYPE html>
<html>
    <body onload="cargarFoco()">
                        <input type="hidden" name="op">
                        <input type="hidden" name="hddcodigo" value="<%=codcad%>">
                        <div class="alert alert-info">
                            <h4><strong><center>Mantenimiento de la Tabla Alumno<br><br>Registrar Alumno</center></strong></h4>                            
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
						<label for="Tipo" class="col-lg-3 control-label">Tipo :</label>
						<div class="col-lg-8">
							<select   name="cbocarrera" id="cbocarrera" class="form-control"  onchange="colocarFocoComboAlumno()" required="required">
                                                            <option value="0">-Seleccionar Carrera-</option>
                                                          <% for(CarreraProfesionalBean obj:listaCarreraProfesional){ %>
                                                              <option value="<%=obj.getCODCARRERA()%>"><%=obj.getNOMBCARRERA()%></option>
                                                          <% } %>
                                                        </select>
						</div>
					       </div>      
                                                   
                                                <div class="form-group">
						<label for="codigo" class="col-lg-3 control-label">Codigo:</label>
						<div class="col-lg-8">
							<input type="text"   name="txtcodigo" disabled="false" value="<%=codcad%>" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label for="Nombre" class="col-lg-3 control-label">Nombre:</label>
						<div class="col-lg-8">
							<input type="text" id="txtnombre" placeholder="Ingrese nombre..."  class="form-control"  required="required">
						</div>
					</div>                                       
                                        <div class="form-group">
						<label for="Nombre" class="col-lg-3 control-label">Apellido Paterno :</label>
						<div class="col-lg-8">
							<input type="text" name="txtapelpate" id="txtapelpate" placeholder="Ingrese Apellido Paterno ..."  class="form-control"  required="required">
						</div>
					</div>
                                        <div class="form-group">
						<label for="Nombre" class="col-lg-3 control-label">Apellido Materno :</label>
						<div class="col-lg-8">
							<input type="text" name="txtapelmate" id="txtapelmate"  id="txtapelpate" placeholder="Ingrese Apellido Materno ..."  class="form-control"  required="required">
						</div>
					</div>
                                       <div class="form-group">
						<label for="Usuario" class="col-lg-3 control-label">Usuario :</label>
						<div class="col-lg-8">
							<input type="text" name="usuarioAlu" id="usuarioAlu"   placeholder="Ingrese  Usuario ..."  class="form-control"  required="required">
						</div>
					</div>        
                                        <div class="form-group">
						<label for="password" class="col-lg-3 control-label">Clave :</label>
						<div class="col-lg-8">
							<input type="clave" name="passwordAlu" id="passwordAlu"   placeholder="Ingrese  Clave ..."  class="form-control"  required="required">
						</div>
					</div>  
					<hr>
					<div class="form-group text-center">						
						<button type="submit" class="btn btn-primary" onclick="grabarAlumno('<%=codcad%>','<%=request.getContextPath()%>')" >
							<img src="<%=request.getContextPath()%>/imagenes/grabar.png"   width="20px" height="20px"  alt="Grabar"> Grabar
						</button>
                                                <button type="submit" class="btn btn-primary" onclick="salir('<%=request.getContextPath()%>','Alumno',5,'')" >
							<img src="<%=request.getContextPath()%>/imagenes/salirdatos.png"   width="20px" height="20px"  alt="Salir">Salir
						</button>
					</div>
				</div>
			</div>	
  </div>        
    </body>
</html>
            