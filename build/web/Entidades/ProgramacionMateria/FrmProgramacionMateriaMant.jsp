<%@page import="BEAN.*"%>
<%@page import="java.util.ArrayList" %>
<%!
    ArrayList<CarreraProfesionalBean> listaCarreraProfesional;
    ArrayList<SemestreBean> listaSemestre;
   // ArrayList<MateriaBean> listaMateria;
    ArrayList<ProgramacionMateriaBean> listaProgramacionMateria;
%>
<%
    listaCarreraProfesional = (ArrayList<CarreraProfesionalBean>) request.getAttribute("listaCarreraProfesional");
    listaSemestre = (ArrayList<SemestreBean>) request.getAttribute("listaSemestre");
    //listaMateria = (ArrayList<MateriaBean>) request.getAttribute("listaMateria");
    listaProgramacionMateria = (ArrayList<ProgramacionMateriaBean>) request.getAttribute("listaProgramacionMateria");
    
    int i = 0;
%> 

<!DOCTYPE html>
<html>
    <body onload="cargarFoco()">
        <input type="hidden" name="op">

                        <div class="alert alert-info">
                            <h4><strong><center>
                                        Programacion de Materias x Semestre</center></strong></h4>                            
                        </div> 
			<div class="panel-body">                                              
				<div class="form-horizontal" role="form">                                                          
                                       
                                        <div class="form-group">
						<label for="cbosemestre" class="col-lg-3 control-label">Semestre Academico :</label>
						<div class="col-lg-8">
							 
                                                   <select  class="form-control"  name="cbosemestre" id="cbosemestre" onchange="filtrarProgramacionMateria('<%=request.getContextPath()%>')">
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
							<select class="form-control"  name="cbocarrera" id="cbocarrera"  onchange="cargarMateria('<%=request.getContextPath()%>','Materia',11,this.value);filtrarProgramacionMateria('<%=request.getContextPath()%>');AsignarFiltroProgramacionMateria('<%=request.getContextPath()%>')">
                                                            <option value="0">---------------------</option>
                                                            <% for (CarreraProfesionalBean obj : listaCarreraProfesional) {%>
                                                            <option value="<%=obj.getCODCARRERA()%>"><%=obj.getNOMBCARRERA()%></option>
                                                            <% }%>
                                                        </select> 
						</div>
					</div>  
                                                        
                                        <div class="form-group">
						<label for="Clave" class="col-lg-3 control-label">Materia :</label>
						<div class="col-lg-8"  id="divmateria">
							<select  class="form-control"   name="cbomateria" id="cbomateria">
                                                            <option value="0" selected>---------------------</option>
                                                        </select> 
						</div>
					</div>  
  </div> 
             <br>
                <center>                 
                
                	<input type="button"  value="Programar Materia" class="btn btn-primary" onclick="nuevaProgramacionMateria('<%=request.getContextPath()%>',0)"  />
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
                                <th data-visible="false">Codigo</th>
                                <th>Carrera</th>
                                <th>Semestre</th>
                                <th>Materia</th>
                                <th>Docente</th>
                                <th>Modificar</th>
                                <th>Eliminar</th>                          
                </tr>
          
        </thead>
        <tbody>
              <%  for (ProgramacionMateriaBean obj : listaProgramacionMateria) {
                            %>  
                            <tr>
                                <td><%=obj.getCODPROGRAMAT()%></td>
                                <td><%=obj.getNOMBRECARRERA()%></td>
                                <td><%=obj.getNOMBRESEMESTRE()%></td>
                                <td><%=obj.getNOMBREMATERIA()%></td>
                                <td><%=obj.getNOMBREDOCENTE()%></td>
                                <td>
                        <center>                                               
                            <input type="button"  value="Modificar" class="btn btn-primary"  onclick="nuevaProgramacionMateria('<%=request.getContextPath()%>','<%=obj.getCODPROGRAMAT()%>')"  />                                             
                        </center>
                        </td>
                        <td>
                        <center>
                            <input type="button"  value="Eliminar" class="btn btn-primary"  onclick="eliminar('<%=request.getContextPath()%>', 'Materia', 8, '<%=request.getContextPath()%>')"    />
                        </center>
                        </td>
                        </tr>
                        <%  }%>  
        </tbody>
</table>
 </div>     
 </div>
 </div> 
 </div> 
 </div>
  </div>
   <div id="DivModal">
    </div>
    </body>
</html>
 