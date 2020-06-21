
<%@page import="UTIL.Constantes" %>
<%@page import="java.util.ArrayList" %>
<%@page import="BEAN.MateriaBean" %>
<%!
   ArrayList<MateriaBean> listaMateria;
   String  ruta="";
%>
<% 
   listaMateria =(ArrayList<MateriaBean>)request.getAttribute("listaMateria");  
   int  i=0;
 %> 
 <input type="hidden" name="op">   
 <div class="panel panel-info">
 <div class="alert alert-info">
<h4><strong><center>Mantenimiento de la Tabla Materia</center></strong></h4>                            
                        </div>
<div class="row">
     
 <div class="panel-body">
    <div class="col-md-1">                                 
       <div class="form-group text-center">
            <input type="hidden" name="opcion" class="form-control">
            <button type="submit" class="btn btn-primary" onclick="nuevo('<%=request.getContextPath()%>','Materia',3,'')"   >
                <img src="<%=request.getContextPath()%>/imagenes/nuevoregistro.png" width="20px" height="20px"    alt="Nuevo Registro">Nuevo
            </button>
        </div>   
 </div>
        </div>
</div>
 
</div>
 <div class="row">
     <div class="col-md-12">
     <div class="panel panel-info">
     <div class="panel-body">
      <div class="table-responsive">
     <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
        <thead>
            <tr>
                <tr  class="panel-info ">                    
                    <th>Materia</th>                    
                    <th>Carrera Profesional</th>
                    <th>Estado</th>
                    <th>Eliminar</th>
                    <th>Modificar</th>
                    
                </tr>
            </tr>
        </thead>
        <tbody>
               <%  for(MateriaBean  obj:listaMateria) {
                                
                                                          
                              ruta="COD="+obj.getCODMATERIA()+"&CODCAR="+obj.getCODCARRERA();
                            %>  
            <tr>                    
                    <td><%=obj.getNOMBMATERIA().trim()%></td>
                    <td><%=obj.getNOMBCARRERA()%></td>
                    <td>
                        <%  if(obj.getESTADO().equals("A")){ %>
                             HABILITADO
                        <% }else{ %>
                             <font color='red'>
                             DESABILITADO
                             </font>
                        <%   }   %>
                    </td> 
                                
                 <td><center><button type="submit" class="btn btn-primary" onclick="modificar('<%=request.getContextPath()%>','Materia',6,'<%=ruta%>')"  >
                <img src="<%=request.getContextPath()%>/imagenes/modificarregistro.png" width="20px" height="20px"    alt="Modificar">Modificar
               </button></center></td>
                            <td><center>
                                    <% if (obj.getOFFSPRING() == 0){ %>
                                    <button type="submit" class="btn btn-primary" onclick="eliminar('<%=request.getContextPath()%>','Materia',8,'<%=ruta%>')"  >
                                     <img src="<%=request.getContextPath()%>/imagenes/eliminarregistro.png" width="20px" height="20px"    alt="Eliminar">Eliminar
                                   </button>
                                    <% }else{ %>
                                    <button type="submit" class="btn btn-primary"  onclick="alert('Desabilitado por Integridad Referencial.'); return false;" >
                                     <img src="<%=request.getContextPath()%>/imagenes/eliminarregistro.png" width="20px" height="20px"    alt="Eliminar">Eliminar
                                   </button>                                                                                             width:80px;">
                                    
                                    <% } %>
                                </center></td>
                    </tr>
                  <%  }  %>
            
        </tbody>
</table>
 </div>     
 </div>
 </div> 
 </div> 
 </div>
 



