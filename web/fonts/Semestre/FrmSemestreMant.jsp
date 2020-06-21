<%@page import="BEAN.SemestreBean" %>
<%@page import="java.util.ArrayList" %>
<%!
   ArrayList<SemestreBean> listaSemestre;
   String codcad;
%>
<% 
   listaSemestre =(ArrayList<SemestreBean>)request.getAttribute("listaSemestre"); 
   codcad=(String)request.getAttribute("codigogenerado");
   int  i=0;
 %> 

<html>
    
    <body>  
        <form class="panel panel-primary" id="formularioLogin" method="POST" action="<%=request.getContextPath()%>/DocenteServlet">
        <input type="hidden" name="op">   
        <div class="alert alert-info"     >
                            MANTENIMIENTO DE  LA  TABLA SEMESTRE
                      </div> 
                 <div class="panel-body">                               
                     
				<div class="form-horizontal" role="form"  id="encabezados">
                                                                           <div class="form-group">
						<label for="usuario" class="col-lg-3 control-label">Codigo:</label>
						<div class="col-lg-8">
                                                    <div id='divcodigo'>
                                                        <input type="text"   name="txtcodigo" disabled="false"  class="form-control" value="<%=codcad%>" >
                                                    </div>							
						</div>
					</div>                                 
					<div class="form-group">
						<label for="usuario" class="col-lg-3 control-label">Nombre:</label>
						<div class="col-lg-8">
							<input type="text"   id="txtnombre" placeholder="Ingrese nombre..."    class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label for="usuario" class="col-lg-3 control-label">Fecha Inicio:</label>
						<div class="col-lg-8">                                                    
							<input type="date" id="txtfechainicio"  placeholder="dd/mm/aaaa"  class="form-control" >
                                                </div>
					</div>
                                        <div class="form-group">
						<label for="usuario" class="col-lg-3 control-label">Fecha Fin:</label>
						<div class="col-lg-8">
							<input type="date" id="txtfechafin" placeholder="dd/mm/aaaa" class="form-control" >
						</div>
					</div>
                                     
					<hr>
					<div class="form-group text-center">
						<input type="hidden" name="opcion" class="form-control">
                                                
                                                <input type="button"  onclick="grabarSemestreSVEL('<%=codcad%>','<%=request.getContextPath()%>')" value="Grabar" class="btn btn-info" />
                                        
                                        </div>
				</div>
			</div>  
                              
        <div class="panel panel-info">
                        <div class="panel-heading">
                        </div>
        </div>
                  <div id="tablasemestre">   
                    </div>  
                    <!--End Advanced Tables -->
                </div>
            </div>      
        </form>                                            
    </body>
</html>
