<%@page import="BEAN.*"%>
<%@page import="java.util.ArrayList" %>
<%!
    ArrayList<CarreraProfesionalBean> listaCarreraProfesional;
    ArrayList<RolBean> listaRol;
%>
<%
    listaCarreraProfesional = (ArrayList<CarreraProfesionalBean>) request.getAttribute("listaCarreraProfesional");
    listaRol=(ArrayList<RolBean>)request.getAttribute("listaRol");
 
%>
<!DOCTYPE html>
<html>
    <body onload="cargarFoco()">
                        <input type="hidden" name="op">
                       
                        <div class="alert alert-info">
                            <h4><strong><center>Gestionar Usuario y Privilegios<br><br>Asignar Usuario - Personal </center></strong></h4>                            
                        </div>                         
			<div class="panel-body">                                              
				<div class="form-horizontal" role="form">    
                                                    
                                              <div class="form-group">
						<label for="Tipo" class="col-lg-3 control-label">Carrera Profesional :</label>
						<div class="col-lg-8">
							<select  name="cbocarrera" id="cbocarrera" class="form-control" onchange="FiltrarListaUsuariosDocentes('<%=request.getContextPath()%>','CrearUsuario',2,this.value)
                                                                 ;ListaUsuariosDocentes('<%=request.getContextPath()%>','CrearUsuario',3)">
                                                            <option value="0">---------------------</option>
                                                            <% for (CarreraProfesionalBean obj : listaCarreraProfesional) {%>
                                                            <option value="<%=obj.getCODCARRERA()%>"><%=obj.getNOMBCARRERA()%></option>
                                                            <% }%>
                                                        </select>  
						</div>
					       </div>      
                                               <div class="form-group">
						<label for="Tipo" class="col-lg-3 control-label">Docentes :</label>
						
						<div id="divdocente"  class="col-lg-8"  >
                                                        <select name="cbodocente"  class="form-control"    id="cbodocente" >
                                                            <option value="0" selected>---------------------</option>
                                                        </select>
						</div>
					       </div> 
                                                        
                                               <div class="form-group">
						<label for="Rol" class="col-lg-3 control-label">Rol :</label>
						<div class="col-lg-8">
							<select  name="cborol"  class="form-control"    id="cborol" >
                                                            <option value="0">---------------------</option>
                                                            <% for (RolBean obj : listaRol) {%>
                                                            <option value="<%=obj.getCODROL()%>"><%=obj.getNOMBROL()%></option>
                                                            <% }%>
                                                        </select>
						</div>
					       </div>   
                                                <div class="form-group">
						    <label for="usuario" class="col-lg-3 control-label">Usuario :</label>
						    <div class="col-lg-8">
							<input type="text"  id="txtusuario" class="form-control" >
						    </div>
					        </div>
                                                <div class="form-group">
						    <label for="password" class="col-lg-3 control-label">Password :</label>
						    <div class="col-lg-8">
							<input   type="password" id="txtpassword" class="form-control" >
						    </div>
					        </div>    
                        
					<hr>
                                        
                                        
                                        <div class="form-group text-center">						
						<button type="submit" class="btn btn-primary" onclick="RegistrarUsuarioDocente('<%=request.getContextPath()%>','CrearUsuario',6)"  >
							<img src="<%=request.getContextPath()%>/imagenes/grabar.png"   width="20px" height="20px"  alt="Crear Nuevo Usuario"> Crear Usuario
						</button>
                                                <button type="submit" class="btn btn-primary" onclick="CrearUsuario('<%=request.getContextPath()%>','CrearUsuario',0)"  >
							<img src="<%=request.getContextPath()%>/imagenes/salirdatos.png"   width="20px" height="20px"  alt="Salir">Volver
						</button>
					</div>
                 
                <br>
                <div  id="mensaje"></div>
                <div id="divtabladocentes">
                </div>
                <br/>
            </center>
            <div id="DivModal">
            </div> 
</div>
</div> 
</body>
</html>




