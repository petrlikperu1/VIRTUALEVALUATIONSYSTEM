
<%@page import="BEAN.NivelDificultadBean" %>
<%!
    NivelDificultadBean objNivelDificultadBean=null;
    String msj;
%>
<%
    objNivelDificultadBean=(NivelDificultadBean)request.getAttribute("datos");
%> 
<!DOCTYPE html>
<html>
    <body >
                        <input type="hidden" name="op">
                        <input type="hidden" name="hddcodigo" value="<%=objNivelDificultadBean.getCODNIVEL()%>">
                        <div class="alert alert-info">
                            <h4><strong><center>Mantenimiento de la Tabla Nivel de  Dificultad<br><br>Modificar Nivel de  Dificultad</center></strong></h4>                            
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
							<input type="text"  id="txtcodigo" name="txtcodigo" disabled="false" value="<%=objNivelDificultadBean.getCODNIVEL()%>"  class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label for="Nombre" class="col-lg-3 control-label">Nombre:</label>
						<div class="col-lg-8">
							<input type="text" name="txtnombre"   id="txtnombre"   class="form-control"  value="<%=objNivelDificultadBean.getNOMBNIVEL()%>">
						</div>
					</div>
                                        <div class="form-group">
						<label for="Tipo" class="col-lg-3 control-label">Tipo :</label>
						<div class="col-lg-8">
                                                    <%
                                                        String verA="";
                                                        String verI="";
                                                        if( objNivelDificultadBean.getESTADO().equals("A")) verA="selected='selected'";
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
						<button type="submit" class="btn btn-primary" onclick="ModificarNivelDificultad('<%=objNivelDificultadBean.getCODNIVEL()%>','<%=request.getContextPath()%>')" >
							<img src="<%=request.getContextPath()%>/imagenes/grabar.png"   width="20px" height="20px"  alt="Grabar"> Grabar
						</button>
                                                <button type="submit" class="btn btn-primary"   onclick="salir('<%=request.getContextPath()%>','NivelDificultad',5,'')" >
							<img src="<%=request.getContextPath()%>/imagenes/salirdatos.png"   width="20px" height="20px"  alt="Salir">Salir
						</button>
					</div>
				</div>
			</div>	
  </div>        
    </body>
</html>
      




