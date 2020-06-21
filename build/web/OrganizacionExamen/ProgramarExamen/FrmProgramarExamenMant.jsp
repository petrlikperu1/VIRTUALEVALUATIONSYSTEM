<%@page import="BEAN.*"%>
<%@page import="java.util.ArrayList" %>
<%!
    ArrayList<SemestreBean> listaSemestre;
    ArrayList<ProgramacionExamenBean> listaProgramarExamenBean;
    boolean GENEXAMEN = false;
    boolean VERNOTAS = false;
%>
<%
    listaSemestre = (ArrayList<SemestreBean>) request.getAttribute("listaSemestre");
    listaProgramarExamenBean = (ArrayList<ProgramacionExamenBean>) request.getAttribute("listaProgramacionExamen");
    GENEXAMEN = Boolean.parseBoolean(request.getAttribute("GENEXAMEN").toString());
    VERNOTAS = Boolean.parseBoolean(request.getAttribute("VERNOTAS").toString());
    int i = 0;
%> 
<!DOCTYPE html>
<html>
    <body >      
            <input type="hidden" name="op"> 
            <input type="hidden" name="GENEXAMEN" id="GENEXAMEN" value="<%=GENEXAMEN%>"> 
            <input type="hidden" name="VERNOTAS" id="VERNOTAS" value="<%=VERNOTAS%>"> 
                        <div class="alert alert-info">
                            <h4><strong><center>
                                        Programacion de examenes</center></strong></h4>                            
                        </div>                          
			<div class="panel-body">                                              
				<div class="form-horizontal" role="form"> 
                                        <div class="form-group">
						<label for="cbosemestre" class="col-lg-3 control-label">Semestre Academico :</label>
						<div class="col-lg-8">
							
                                                      <select class="form-control" name="cbosemestre" id="cbosemestre" onchange="filtrarCarrerasProgramacionMateriaxDocente('<%=request.getContextPath()%>');
                                                                                  ">
                                                        <option value="0">---------------------</option>
                                                        <% for (SemestreBean obj1 : listaSemestre) {%>
                                                        <option value="<%=obj1.getCODSEMESTRE()%>"><%=obj1.getNOMBSEMESTRE()%></option>
                                                        <% }%>
                                                    </select> 
                                                    
						</div>                                                        
		                        </div>    
                                        <div class="form-group">
						<label for="Tipo" class="col-lg-3 control-label">Carrera Profesional :</label>
						<div class="col-lg-8">
							<div id="divCarrerasAsignadasDocente">
                                                            <select    class="form-control"     name="cbocarrera" id="cbocarrera"  onchange="filtrarMateriasAsignadas()">
                                                                <option value="0">---------------------</option>
                                                            </select>
                                                        </div>
						</div>
					</div>  
                                        <div class="form-group">
						<label for="Tipo" class="col-lg-3 control-label">Materia :</label>
						<div class="col-lg-8">
							<div id="divmateria">
                                                            <select    class="form-control"    name="cbomateria" id="cbomateria">
                                                                <option value="0">---------------------</option>
                                                            </select>
                                                        </div>
						</div>
					</div>  
                                         <div class="form-group">
						<label for="Tipo" class="col-lg-3 control-label">Tipo Examen :</label>
						<div class="col-lg-8">
							<div id="divmateria">
                                                            <select    class="form-control"    name="cbomateria" id="cbomateria">
                                                                <option value="0">---------------------</option>
                                                            </select>
                                                        </div>
						</div>
					</div>  
                                                    
                                       <div class="form-group">
						<label for="Tipo" class="col-lg-3 control-label">Fecha Examen :</label>
						<div class="col-lg-8">
							<input type="date" id="txtfechainicio"  placeholder="dd/mm/aaaa" class="form-control">
						</div>
					</div>             
                                                    
                                        <div class="form-group">
						<label for="Tipo" class="col-lg-3 control-label">Hora Examen :</label>
						<div class="col-lg-8">
                                                    <input type="input" id="txtfechainicio"  placeholder="   :  " class="form-control">
						</div>
					</div>               
                                                    
                                                    
                                                    
                                              
                                                    
                                                    
                              </div>                                                                 
               <br>
                <center>                  
                
                    <input type="button"    class="btn btn-primary"    onclick="CallMant('<%=request.getContextPath()%>','ProgramarExamen',10,'')"  value="Registrar Horario Examen" >  
                
                </center>
                <br>                                        
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
                                  <th>Carrera</th>
                                  <th>Tipo Examen</th>
                                  <th>Semestre</th>                                                      
                                  <th>Fecha Examen</th>
                                  <th> hora de examen</th>
                </tr>          
        </thead>
        <tbody>
        <div  id="ContenidoTabla">
                        <%  for (ProgramacionExamenBean obj : listaProgramarExamenBean) {
                            %>  
                            <tr> 
                                <td><%=obj.getNOMBMATERIA()%></td>
                                 <td><%=obj.getNOMBCARRERA()%></td>
                                 <td><%=obj.getNOMBTIPEXAMEN()%></td>
                                  <td><%=obj.getNOMBSEMESTRE()%></td>                    
                                <td><%=obj.getFECHAEJECUCION()%></td>
                                <td><%=obj.getHORAINICIO()%></td>    
                        </tr>
                        <%  }%>  
          </div>
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
 