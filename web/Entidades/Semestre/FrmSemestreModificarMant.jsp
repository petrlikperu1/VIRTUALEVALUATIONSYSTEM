

<%@page import="BEAN.SemestreBean" %>
<%!
    SemestreBean  objSemestreBean=null;
    String  msj;
%>
<% 
  objSemestreBean=(SemestreBean)request.getAttribute("datos");
%>
<html>
    <head>  
    </head>
    <body onload="cargarFoco()">
     
                        <div class="alert alert-info">
                            <h4><strong><center>Mantenimiento de la Tabla Semestre<br>Modificar Semestre</center></strong></h4>                            
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
							<input type="text"   name="txtcodigo" disabled="false"  class="form-control" value="<%=objSemestreBean.getCODSEMESTRE()%>" >
						</div>
					</div>
					<div class="form-group">
						<label for="Nombre" class="col-lg-3 control-label">Nombre:</label>
						<div class="col-lg-8">
							<input type="text" id="txtnombre" placeholder="Ingrese nombre..."  class="form-control"  required="required" value="<%=objSemestreBean.getNOMBSEMESTRE()%>"   >
						</div>
					</div>
                                        <div class="form-group">
						<label for="FechaInicio" class="col-lg-3 control-label">Fecha Inicio:</label>
						<div class="col-lg-8">
							<input type="date" id="txtfechainicio"  placeholder="dd/mm/aaaa"  class="form-control"  required="required" value="<%=objSemestreBean.getFECHAINICIO()%>"   >
						</div>
					</div>
                                        <div class="form-group">
						<label for="FechaFin" class="col-lg-3 control-label">Fecha Fin:</label>
						<div class="col-lg-8">
							<input type="date" id="txtfechafin"  placeholder="dd/mm/aaaa"  class="form-control"  required="required"  value="<%=objSemestreBean.getFECHAFIN()%>"    >
						</div>
					</div>
                                                
                                        <div class="form-group">
						<label for="estado" class="col-lg-3 control-label">Fecha Fin:</label>
						<div class="col-lg-8">
						 <%
                                                    String verA="";
                                                    String verI="";
                                                    if(objSemestreBean.getESTADO().equals("A")) verA="selected='selected'";
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
						<button type="submit" class="btn btn-primary" onclick="modificarSemestre('<%=objSemestreBean.getCODSEMESTRE()%>','<%=request.getContextPath()%>')" >
							<img src="<%=request.getContextPath()%>/imagenes/modificar.jpg"   width="20px" height="20px"  alt="Modificar">Modificar
						</button>
                                                <button type="submit" class="btn btn-primary" onclick="salir('<%=request.getContextPath()%>','Semestre',5,'')" >
							<img src="<%=request.getContextPath()%>/imagenes/salirdatos.png"   width="20px" height="20px"  alt="Salir">Salir
						</button>
					</div>
				</div>
			</div>
	
                                  
         
      
      
  </div>
    
        
     </body>
</html>

