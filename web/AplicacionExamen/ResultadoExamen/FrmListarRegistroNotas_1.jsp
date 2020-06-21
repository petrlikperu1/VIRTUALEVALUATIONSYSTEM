
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
                               
                                    <%  for (int  i=1;i<5;i++)
                                    {  
                                    %>
                                    <tr <% if(i%2==0){  %>  class="fila_impar"  <%}else{ %>  class="fila_par"   <%}%> >
                                     <td><center><%=i%></center></td>          
                                    <td><%="xxxxxxxxxxxxxxx"%></td>                             
                                    <td><center><b>18</b></center></td>
                                   
                                   
                                    <td><center>
                                        
                                        
                                         <button   style="width:150px;" onclick=""
                                                   
                                                
                                                     disabled="false"
                                            
                                                   >
                                                   <img  width="50px"  height="50px" src="<%=request.getContextPath()%>/imagenes/solucionario.png"> 
                                                   <br><b>Ver Solucionario</b>
                                          </button>            
                                        
                                         </center></td>
                                    </tr>
                                    <%    i++; }%>
                                
                            </table>
                     <button   style="width:150px;" onclick="" >
                                                                         <img  width="40px"  height="40px" src="<%=request.getContextPath()%>/imagenes/retroceder.png"> Regresar
                                                                        </button>  
                    </center>
           
               
    </body>
</html>