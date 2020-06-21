
<%@page import="BEAN.*"%>
<%@page import="java.util.ArrayList" %>

<%!
    int  i=1;
    
    %>
    
    
    	<div class="container div_cuerpo" id="div_cuerpo1">	
        <div class="panel panel-primary">
             <div class="alert alert-info">
                            <h4><strong><center>Lista de  Examenes de  Entrenammiento</center></strong></h4>                            
                        </div> 
         
            
            
            
        <div class="row">
     <div class="col-md-12">
     <div class="panel panel-info">
     <div class="panel-body">
      <div class="table-responsive">         
    
     <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="50%">
        <thead>
       
                <tr  class="panel-info ">                    
                    <th>Nro</th>                    
                    <th>Examen Training</th>
                    <th>Accion</th>
                    <th>Estado</th>                                          
                </tr>
           
        </thead>
        <tbody>
             <%  for (i=1;i<=4;i++)   {    %>
            
             <tr  >
                                     <td><center><%=i%></center></td>                                                          
                                    <td><%="Examen Training Nro :"+i%></td>                                   
                                       <td>
                                          <center>
                                                   <button   style="width:150px;" onclick="" >
                                                       <img  width="50px"  height="50px" src="<%=request.getContextPath()%>/imagenes/trainingrendir.png"> 
                                                       <br><b>Rendir Examen Training</b>
                                                   </button>
                                          </center>
                                        </td>
                                        <td><b>Habilitado</b></td>
                                    </tr>
           <%    }%>
        </tbody>
     </table>
    
    
       </div>
           </div>
           </div>
           </div>
           </div>
      </div>
             </div>
    
    
                           
               
    </body>
</html>