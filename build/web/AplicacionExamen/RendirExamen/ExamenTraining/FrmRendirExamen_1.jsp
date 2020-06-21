
<html>
<head>
    
	<title>RENDIR  EXAMEN</title>
</head>
<body >
   
    
     <center> 
         <table class="FondoTabla"  width="100%">
                                <tr class="tituloTabla"    >
                                        <td>-- RENDIR EXAMEN --</td>
                                </tr>
			   </table>
			  <table  width="90%">
				<tr>
				  <td>	
					<table width="100%" >
                                            <tr>
                                                <td>                                                                                                      
                                                    <b> Tiempo Restante:</b>                                                   
                                                    <span id="minutos"></span>:<span  id="segundos"></span>
                                                </td>
                                                  
                                            </tr>
                                             <tr>
                                                <td>                                                                                                      
                                                    <b> Puntaje :</b>                                                   
                                                    <span ><%=5%></span></td>                                                  
                                            </tr>
                                            <tr>
                                                <td></td>
                                            </tr>
					</table>
                                        <br>
					<table width="90%" border="0" height="50">
                                            <td width="47%" colspan="6" bgcolor="#87CEEB" >
                                                       <center>  
                                                        <div  style="height:auto;FONT-FAMILY: Tahoma;FONT-SIZE: 10pt;COLOR: #000066;">                                                        
                                                            <b>  Pregunta</b>
                                                        </div>
                                                        </center>
                                                    </td> 
                                            <tr  bgcolor="#D5F7FF" >
                                            <td width="3%"><b><font size="4"><%=4%>)</font></b></td>
                                                    <td width="50%"  bgcolor="#D5F7FF">
                                                        <div  style="background-color: #ebebeb;height:auto;FONT-FAMILY: Tahoma;BACKGROUND-COLOR:#D5F7FF;FONT-SIZE: 10pt;COLOR: #000066;">
                                                        <%="sssssssssssssssssssssssssss"%>
                                                        </div>
                                                    </td>
                                                    <td width="30%" bgcolor="#ebebeb">
                                                    <center>
                                                        <img src="<%=request.getContextPath()%>/imagenes/pregunta.png" ></td>
                                                    </center>   
                                            </tr>
					</table>
              
                                        <table width="90%" border="0" height="10">
                                            <tr   bgcolor="#D5F7FF" >
                                                 
                                                    <td width="47%" colspan="6" bgcolor="#87CEEB">
                                                       <center>  
                                                        <div  style="height:auto;FONT-FAMILY: Tahoma;FONT-SIZE: 10pt;COLOR: #000066;">                                                        
                                                            <b>  Alternativas</b>
                                                        </div>
                                                        </center>
                                                    </td>                                                   
                                            </tr>
                                            
                                            <%  
                                            
                                            for(int  i=1;i<=5;i++){  %>
                                            <tr  bgcolor="#D5F7FF" >
                                                   <td width="3%" ></td>
                                                   <td width="4%" bgcolor="#D5F7FF"><%=i%><b>)</b><input type="radio" name="rdop" id="rdop" value="<%=i%>"></td>
                                                    <td width="42%"  bgcolor="#D5F7FF">
                                                        <div  style="background-color: #ebebeb;height:auto;FONT-FAMILY: Tahoma;BACKGROUND-COLOR:#D5F7FF;FONT-SIZE: 10pt;COLOR: #000066;">                                                        
                                                               <%="xxxxxxxxxxxxxxxxx"%>
                                                        </div>
                                                    </td>
                                                    <td width="31%" >
                                                         <center>
                                                        <div  style="background-color: #ebebeb;height:auto;FONT-FAMILY: Tahoma;BACKGROUND-COLOR:#D5F7FF;FONT-SIZE: 10pt;COLOR: #000066;">                                                        
                                                                .
                                                        </div>
                                                        </center>     
                                                    </td>
                                            </tr>
                                            
                                             <%   }%>
                                           <tr  bgcolor="#D5F7FF" >
                                                  <td width="3" ></td>
                                                   <td width="3%" bgcolor="#D5F7FF"></td>                                                  
                                                     <td   bgcolor="#D5F7FF">                                                         
                                                       
                                                     </td>
                                                                                                                                                                         
                                                     <td>
                                                      <center>                                                                   
                                                          <input type="button"  class="boton" value="SIGUIENTE PREGUNTA ======>" onclick=""  style="height:35px;width:300px;"> 
                                                      </center>
                                                     </td>
                                           </tr>
                                      </table>
                                               
                                         <%   if(1>0) { %>                  
                                      <table width="90%"  height="30">
                                          
                                          <tr>
                                                  
                                                    
                                                    <td width="47%"  bgcolor="#87CEEB" colspan="3">
                                                        <center>  
                                                        <div  style="height:auto;FONT-FAMILY: Tahoma;FONT-SIZE: 10pt;COLOR: #000066;">                                                        
                                                            <b>  Ayudas</b>
                                                        </div>
                                                        </center>
                                                    </td>
                                                    
                                            </tr>
                                    <%     }  %>      
                                          
                                           <%  
                                             int   i1=1;
                                             
                                            for(int  j=1;j<3;j++){ 
                                           
                                              
                                           %>
                                            <tr> 
                                                    <td width="3%" bgcolor="#D5F7FF"><input type="button"  style="width:140px;height: 50" class="boton" value="Ayuda # <%=""+i1 %>:" id="<%="B"+i1%>" onclick=""  style="height:35px;width:30px;"> </td>
                                                    <td width="47%"  bgcolor="#D5F7FF">
                                                        <div  id="ayuda<%="A"+j%>"  style="visibility: visible;display:block;height:50px;FONT-FAMILY: Tahoma;BACKGROUND-COLOR:DarkGray;FONT-SIZE: 10pt;COLOR: black;">           
                                                            
                                                        </div>                                                       
                                                    </td>                                                    
                                            </tr>
                                            <tr  bgcolor="white" >
                                            <td colspan="2" >.</td>                                                  
                                            </tr>
                                           <%      }%>                                    
                                      </table>	
				  </td>
				</tr>
			</table>
		</center>
</body>
</html>