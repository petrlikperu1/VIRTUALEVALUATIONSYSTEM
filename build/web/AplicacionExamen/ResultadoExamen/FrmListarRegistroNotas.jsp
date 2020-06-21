<%@page session="true" %>
<%@page import="BEAN.*"%>
<%@page import="java.util.ArrayList" %>
<%!
    ArrayList<ExamenAutoGeneradoBean> listaexamenesprogramados;
    ExamenAutoGeneradoBean  objExamenAutoGeneradoBean=null;
    AlumnoBean  objAlumnoBean=null; 
    //DetalleEstructuraExamenBean  objDetalleEstructuraExamenBean=null;
    String  parametro1="",parametro2="";  
  %>
<%
    listaexamenesprogramados = (ArrayList<ExamenAutoGeneradoBean>) request.getAttribute("listaexamenesprogramados");
    int i = 1,CODMATRICULA,CODETAMATRICULA,CODESTRUCEXAMEN,CODMATERIA;
   
    
    objAlumnoBean=(AlumnoBean)session.getAttribute("SESION"); 
    parametro2="&CODALU="+objAlumnoBean.getCODALU()+"&CODSEMESTRE="+objAlumnoBean.getCODSEMESTRE();
    
   // objDetalleEstructuraExamenBean=(DetalleEstructuraExamenBean) session.getAttribute("OBJDETALLEESTRUCTURA");
   

   objExamenAutoGeneradoBean=(ExamenAutoGeneradoBean)request.getAttribute("datosmatricula");
%> 
<html>
    <body>
                   <center>
                        <table width="100%" border="0" class="FondoTabla">
                            <tr class="tituloTabla">
                            <td>.........................  REGISTRO DE  NOTAS  ...............................</td>
                            </tr>
                        </table>
                      <br><br>
                       <table>
                           <tr>
                                <td>
                                    <center>                                
                                    
                                                                         
                                    </center></td>  
                           </tr>
                       </table>
                            <table  width="55%" heigth="100%" class="FondoTabla" >
                                
                                <tr  class="TITULOTABLA">
                                    <td>Nro</td>
                                    <td>Examen</td>                                    
                                    <td>Nota</td>
                                    <td>Accion</td>
                                    </tr>                
                               
                                    <%  for (ExamenAutoGeneradoBean obj : listaexamenesprogramados)
                                    {  CODMATERIA=obj.getCODMATERIA();
                                       CODMATRICULA=obj.getCODMATRICULA();
                                       CODETAMATRICULA=obj.getCODDETAMATRI();
                                       CODESTRUCEXAMEN=obj.getCODESTRUCEXAMEN();
                                       parametro1="&CODMATRICULA="+objExamenAutoGeneradoBean.getCODMATRICULA()+"&CODETAMATRICULA="+objExamenAutoGeneradoBean.getCODDETAMATRI()+"&CODESTRUCEXAMEN="+CODESTRUCEXAMEN+"&CODMATERIA="+CODMATERIA;
                                    %>
                                    <tr <% if(i%2==0){  %>  class="fila_impar"  <%}else{ %>  class="fila_par"   <%}%> >
                                     <td><center><%=i%></center></td>          
                                    <td><%=obj.getNOMBTIPEXAMEN()%></td>                             
                                    <td><center><b>18</b></center></td>
                                   
                                   
                                    <td><center>
                                        
                                        
                                         <button   style="width:150px;" onclick="RendirExamen('<%=request.getContextPath()%>','ExamenAutoGenerado',2,'<%=parametro1%>','',1)"
                                                   
                                                  <% if(!(obj.getESTADO().equals("A"))){  %>
                                                     disabled="false"
                                                 <%    } %> 
                                                   >
                                                   <img  width="50px"  height="50px" src="<%=request.getContextPath()%>/imagenes/solucionario.png"> 
                                                   <br><b>Ver Solucionario</b>
                                          </button>            
                                        
                                         </center></td>
                                    </tr>
                                    <%    i++; }%>
                                
                            </table>
                     <button   style="width:150px;" onclick="salir('<%=request.getContextPath()%>','DetalleMatricula',1,'<%=parametro2%>')" >
                                                                         <img  width="40px"  height="40px" src="<%=request.getContextPath()%>/imagenes/retroceder.png"> Regresar
                                                                        </button>  
                    </center>
           
               
    </body>
</html>