<%@page import="BEAN.*"%>
<%@page import="java.util.ArrayList" %>
<%!
    ArrayList<CarreraProfesionalBean> listaCarreraProfesional;
   
%>
<%
    listaCarreraProfesional = (ArrayList<CarreraProfesionalBean>) request.getAttribute("listaCarreraProfesional");
   
 
%>   

<!DOCTYPE html>
<html>
    <body onload="cargarFoco()">
                        <input type="hidden" name="op">
                       
                        <div class="alert alert-info">
                            <h4><strong><center>Gestionar Usuario y Privilegios<br><br>Asignar Usuario Estudiante </center></strong></h4>                            
                        </div>                         
			<div class="panel-body">                                              
				<div class="form-horizontal" role="form">    
                                                    
                                              <div class="form-group">
						<label for="Tipo" class="col-lg-3 control-label">Apellido :</label>
						<div class="col-lg-8">
                                                    <select  name="cbocarrera" id="cbocarrera" class="form-control" onchange="FiltrarListaUsuariosEstudiantes('<%=request.getContextPath()%>','CrearUsuario',8,this.value)
                                                                 ;ListaUsuariosEstudiantes('<%=request.getContextPath()%>','CrearUsuario',9)">
                                                            <option value="0">---------------------</option>
                                                            <% for (CarreraProfesionalBean obj : listaCarreraProfesional) {%>
                                                            <option value="<%=obj.getCODCARRERA()%>"><%=obj.getNOMBCARRERA()%></option>
                                                            <% }%>
                                                        </select>  
						</div>
					       </div>      
                                               <div class="form-group">
						<label for="Tipo" class="col-lg-3 control-label">Estudiantes :</label>
						
						<div id="divdocente"  class="col-lg-8"  >
                                                        <select name="cboalumno"  class="form-control"    id="cboalumno" >
                                                            <option value="0" selected>---------------------</option>
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
						<button type="button" class="btn btn-primary" onclick="RegistrarUsuarioDocente('<%=request.getContextPath()%>','CrearUsuario',6)"  >
							<img src="<%=request.getContextPath()%>/imagenes/grabar.png"   width="20px" height="20px"  alt="Crear Nuevo Usuario"> Crear Usuario
						</button>
                                                <button type="button" class="btn btn-primary" onclick="CrearUsuario('<%=request.getContextPath()%>','CrearUsuario',0)"  >
							<img src="<%=request.getContextPath()%>/imagenes/salirdatos.png"   width="20px" height="20px"  alt="Salir">Volver
						</button>
					</div>
                 
                <br>
                <div  id="mensaje"></div>
                <div id="divtablalumnos">
                </div>
                <br/>
            </center>
            <div id="DivModal">
            </div> 
</div>
</div> 
</body>
</html>




