<%@page import="BEAN.TipoExamenBean" %>
<%!
    String  msj;
    TipoExamenBean objTipoExamenBean=null;
%>
<%
    objTipoExamenBean=(TipoExamenBean)request.getAttribute("datos");
%> 
<!DOCTYPE html>
<html>
    <body >
                             <input type="hidden" name="op">
                             <input type="hidden" name="hddcodigo" value="<%=objTipoExamenBean.getCODTIPEXAMEN()%>">
                        <div class="alert alert-info">
                            <h4><strong><center>Mantenimiento de la Tabla Tipo Examen<br><br>Modificar Tipo Examen</center></strong></h4>                            
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
							<input type="text"  id="txtcodigo" name="txtcodigo" disabled="false" value="<%=objTipoExamenBean.getCODTIPEXAMEN()%>" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label for="Nombre" class="col-lg-3 control-label">Nombre:</label>
						<div class="col-lg-8">
							<input type="text" name="txtnombre"   id="txtnombre"   class="form-control"  value="<%=objTipoExamenBean.getNOMBTIPEXAMEN()%>">
						</div>
					</div>
                                        <div class="form-group">
						<label for="Tipo" class="col-lg-3 control-label">Tipo :</label>
						<div class="col-lg-8">
                                                    <%
                                                        String verA="";
                                                        String verI="";
                                                        if( objTipoExamenBean.getESTADO().equals("A")) verA="selected='selected'";
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
						<button type="submit" class="btn btn-primary" onclick="ModificarTipoExamen('<%=objTipoExamenBean.getCODTIPEXAMEN()%>','<%=request.getContextPath()%>')">
							<img src="<%=request.getContextPath()%>/imagenes/modificar.png"   width="20px" height="20px"  alt="Modificar">Modificar
						</button>
                                                <button type="submit" class="btn btn-primary"  onclick="salir('<%=request.getContextPath()%>','TipoExamen',5,'')"  >
							<img src="<%=request.getContextPath()%>/imagenes/salirdatos.png"   width="20px" height="20px"  alt="Salir">Salir
						</button>
					</div>
				</div>
			</div>	
  </div>        
    </body>
</html>
      





