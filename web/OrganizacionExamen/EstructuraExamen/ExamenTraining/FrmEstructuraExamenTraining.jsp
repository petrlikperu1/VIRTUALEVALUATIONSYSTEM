<%@page import="BEAN.*"%>
<%@page import="java.util.ArrayList" %>
<%!
    ArrayList<SemestreBean> listaSemestre;
    ArrayList<EstructuraExamenBean> listaEstructuraExamen;
    String codcad;
    ArrayList<CarreraProfesionalBean> listaCarreraProfesional = null;

    ArrayList<TipoExamenBean> listaTipoExamen = null;   
    ArrayList<NivelDificultadBean> listaNivelDificultad = null;    
    
    int i = 0;
    String  value="";
  %>
<%   
    listaSemestre = (ArrayList<SemestreBean>) request.getAttribute("listaSemestre");  
    listaEstructuraExamen = (ArrayList<EstructuraExamenBean>) request.getAttribute("listaEstructuraExamen");  
    listaCarreraProfesional = (ArrayList<CarreraProfesionalBean>) request.getAttribute("listaCarreraProfesional");
    listaNivelDificultad= (ArrayList<NivelDificultadBean>) request.getAttribute("listaNivelDificultad");
    listaTipoExamen = (ArrayList<TipoExamenBean>) request.getAttribute("listaTipoExamen");
    
    
    codcad=(String)request.getAttribute("codigogenerado");
%>

<!DOCTYPE html>
<html>
    <body onload="cargarFoco()">
        <input type="hidden" name="op">

            
<div class="container">  
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>This is a large modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>
                        <div class="alert alert-info">
                            <h4><strong><center>
                                        REGISTRAR ESTRUCTURA DEL EXAMEN DE ENTRENAMIENTO<br><br>
                                        BUSCAR ESTRUCTURA DE EXAMEN SUPERVISADO</center></strong></h4>                            
                        </div>  
                        
                      
			<div class="panel-body">                                              
				<div class="form-horizontal" role="form">    
                                                       
                                        <div class="form-group">
						<label for="Usuario" class="col-lg-3 control-label">Codigo :</label>
						<div class="col-lg-8">
							<input type="text" name="txtcodigo"   disabled=false id="txtcodigo"  value="<%=codcad%>" class="form-control"  >
						</div>
                                         </div>
			     
                                        
                                        <div class="form-group">
						<label for="cbosemestre" class="col-lg-3 control-label">Semestre Academico :</label>
						<div class="col-lg-8">
							<select   name="cbosemestre" id="cbosemestre" class="form-control"  onchange="filtrarEstructuraExamen('<%=request.getContextPath()%>','EstructuraExamen',12)" >
                                                            <option value="0">----------------------------</option>
                                                            <% for (SemestreBean obj1 : listaSemestre) {%>
                                                                <option value="<%=obj1.getCODSEMESTRE()%>"><%=obj1.getNOMBSEMESTRE()%></option>
                                                            <% }%>
                                                        </select>
						</div>
                                                        
		                        </div>    
                                        <div class="form-group">
						<label for="Tipo" class="col-lg-3 control-label">Carrera Profesional :</label>
						<div class="col-lg-8">
							<select   name="cbocarrera" id="cbocarrera" class="form-control"  onchange="cargarMateria('<%=request.getContextPath()%>','Materia',9,this.value);filtrarEstructuraExamen('<%=request.getContextPath()%>','EstructuraExamen',12);">
                                                            <option value="0">-Seleccionar Carrera-</option>
                                                          <% for(CarreraProfesionalBean obj:listaCarreraProfesional){ %>
                                                              <option value="<%=obj.getCODCARRERA()%>"><%=obj.getNOMBCARRERA()%></option>
                                                          <% } %>
                                                        </select>
						</div>
					</div>  
                                                        
                                        <div class="form-group">
						<label for="Clave" class="col-lg-3 control-label">Materia :</label>
						<div class="col-lg-8"  id="divmateria">
							<select name="cbomateria" class="form-control"  id="cbomateria"  >
                                                           <option value="0" selected>---------------------</option>
                                                        </select> 
						</div>
					</div>                                             
                                        <div class="form-group">
						<label for="Clave" class="col-lg-3 control-label">Tipo Examen :</label>
						<div class="col-lg-8"  id="divtipoexamen">
							<select name="cbotipoexamen" id="cbotipoexamen"  onchange="saltarCursor()" class="form-control"   >
                                                           <option value="0">---------------------</option>
                                                            <% for (TipoExamenBean obj : listaTipoExamen) {%>
                                                            <option value="<%=obj.getCODTIPEXAMEN()%>"><%=obj.getNOMBTIPEXAMEN()%></option>
                                                            <% }%>
                                                        </select> 
						</div>
					</div>                                              
                                        
                      
  </div> 
  <div id="divtabla">
     <div class="row">
     <div class="col-md-12">
     <div class="panel panel-info">
     <div class="panel-body">
      <div class="table-responsive">
     <table id="example" class="table table-striped table-bordered dt-responsive nowrap table-hover" cellspacing="0" width="100%">
        <thead>
           
                <tr  class="panel-info ">                                                            
                                  
                                                                                  
                                    <th>Materia</th>
                                    <th>Tipo Examen</th>   
                                     <th>Semestre</th>          
                                    <th>Crear</th> 
                                    <th>Estado</th>       
                </tr>
          
        </thead>
        <tbody>
              <%  for (EstructuraExamenBean obj : listaEstructuraExamen) {%>
                                    <tr>                                   
                                                                    
                                    <td><%=obj.getNOMBMATERIA()%></td>
                                    <td><%=obj.getNOMBTIPEXAMEN()%></td>
                                      <td><%=obj.getNOMBSEMESTRE()%></td>                                                                 
                                    <td>
                                    <center>
                                      
                                        
                                        
                                       <input type="button"  class="btn btn-primary" 
                                               
                                               onclick="cargarEstructuraExamen('<%=request.getContextPath()%>','<%=obj.getCODESTRUCEXAMEN()%>',
                                                                                              '<%=obj.getCODSEMESTRE()%>','<%=obj.getCODCARRERA()%>',
                                                                                              '<%=obj.getCODMATERIA()%>','<%=obj.getCODUNIDAD()%>',
                                                                                              '<%=obj.getCODTEMA()%>','<%=obj.getCODTIPEXAMEN()%>')"
                                               
                                               value="Crear Estructura Examen Training" />   
                                        
                                        
                                        
                                    </center>
                                </td>
                               <td>
                                        
                                                    <%  if(obj.getESTADO().equals("A")){ %>

                                                            <%="CREADO"%>

                                                    <% }else{     %>
                                                       <%="NO EXISTE"%>

                                                    <%   }   %>
                                        
                                        
                                    </td>  
                                    </tr>
                                    <% }%>
        </tbody>
</table>
 </div>     
 </div>
 </div> 
 </div> 
 </div>
      
  </div>
  
   
    </body>
</html>
 