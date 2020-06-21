<%@page import="BEAN.SemestreBean" %>
<%@page import="java.util.ArrayList" %>
<%!
   ArrayList<SemestreBean> listaSemestre;
%>
<% 
   listaSemestre =(ArrayList<SemestreBean>)request.getAttribute("listaSemestre");    
 %> 

<div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-info">
                        
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table id="example" class="table table-striped table-bordered dt-responsive nowrap table-hover " cellspacing="0" width="99%">
                                    <thead>
                                        <tr  class="panel-info ">
                                            <th>Nombre :</th>
                                            <th>Fecha Inicio :</th>
                                            <th>Fecha Fin :</th>
                                            <th>Estado :</th>
                                            

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% for(SemestreBean  obj:listaSemestre){ %>  
                                        <tr>
                                            <td><%=obj.getNOMBSEMESTRE()%></td>
                                            <td><%=obj.getFECHAINICIO()%></td>
                                            <td><%=obj.getFECHAFIN()%></td>
                                            <td>
                                                <%  if(obj.getESTADO().equals("A")){ %>
                                                     HABILITADO
                                                <% }else{ %>
                                                     <font color='red'>
                                                     DESABILITADO
                                                     </font>
                                                <%   }   %>
                                            </td>

                                        </tr>
                                        <%}%>

                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>