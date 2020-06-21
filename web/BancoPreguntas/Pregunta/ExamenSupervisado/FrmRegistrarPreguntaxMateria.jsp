
<%@page import="BEAN.AyudaBean"%>
<%@page import="BEAN.PreguntaBean"%>
<%@page import="java.util.ArrayList" %>
<%!
    ArrayList<PreguntaBean> listaPregunta;
%>
<%
    listaPregunta = (ArrayList<PreguntaBean>) request.getAttribute("listaPregunta");
    int i = 0;
%> 
<!DOCTYPE html>
<html lang="en">

<body>
    <form name="form">        
 
<div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
             <div class="alert alert-info">
                            <h4><strong><center>Registrar Pregunta Examen Training</center></strong></h4>                            
                        </div>  
             
        </div>
        <!-- /.row -->

     
</div>

           <input type="button"    class="btn btn-primary" style="width:150px;"  value="Registrar Pregunta" onclick="nuevo('<%=request.getContextPath()%>','Pregunta',3,'')"   >     
          
 <div class="row">
     <div class="col-md-12">
     <div class="panel panel-info">
     <div class="panel-body">
      <div class="table-responsive">
        
              <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
        <thead>
       
                <tr  class="panel-info ">                    
                                <th>Código</th>
                                <th>Pregunta</th>                                    
                                <th>Carrera</th>
                                <th>Materia</th>
                                <th>Unidad</th>
                                <th>Tema</th>
                                <th>Nivel de Dificultad</th>
                                <th>Modificar</th>
                                <th>Eliminar</th>
                </tr>
           
        </thead>
        <tbody>
             <%  for (PreguntaBean obj : listaPregunta) {%>
                            <tr>
                                <td><%=obj.getCODPREG()%></td>
                                <td><%=obj.getENUNCIADOPREG()%></td>
                                <td><%=obj.getNOMBCARRERA()%></td>
                                <td><%=obj.getNOMBMATERIA()%></td>
                                <td><%=obj.getNOMBUNIDTEMA()%></td>
                                <td><%=obj.getNOMBTEMA()%></td>
                                <td><%=obj.getNOMBNIVEL()%></td>   
                                <td>
                                    <center>
                                         <input type="button"    class="btn btn-primary" style="width:150px;"  value="Modificar" onclick="modificar('<%=request.getContextPath()%>','Pregunta',5,'CODPREG=<%=obj.getCODPREG()%>')"   >  
                                       
                                    </center>
                                </td>
                                <td>
                                    <center>
                                        
                                       <input type="button"    class="btn btn-primary" style="width:150px;"  value="Eliminar" onclick="eliminar('<%=request.getContextPath()%>','Pregunta',8,'CODPREG=<%=obj.getCODPREG()%>')"   >    
                                      
                                    </center>
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
    <div class="container"> 

        <hr>

        <!-- Footer -->
       <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Sistema Virtual de  Evaluacion en Linea de la Universidad Peruana  Simon Bolivar  &copy; 2015</p>
                </div>
            </div>
        </footer>

    </div>
    
    
   </form>

</body>

</html>
