<%@page session="true" %>
<%@page import="BEAN.*" %>
<%@page import="java.util.ArrayList" %>

<%!
AyudaBean   objAyudas=null;
ArrayList<DesarrolloExamenGeneradoBean>  listaDesarrolloExamenGeneradoBean    = null;
DesarrolloExamenGeneradoBean   objDesarrolloExamenGeneradoBean;
DetalleEstructuraExamenBean  objDetalleEstructuraExamenBean=null;
ArrayList<AyudaBean>  listaAyudas=null;
ArrayList<AlternativaBean>  listaAlternativa=null;
String contadorcad,enunciado;
int  contador;
String CODMATRICULA,CODDETAMATRICULA;
String  parametro="",limite,parametros="";
String  RESPUESTAOK;
String  CODDESARROLLOEXAMGENERADOCAD,NUMEXAMDESARROLLOGENERADOCAD;
double   penalidadayuda,penalidaderrorpregunta,puntajepregunta;


 ExamenAutoGeneradoBean  objExamenAutoGeneradoBean=null;



%>

<%
	
	listaDesarrolloExamenGeneradoBean =(ArrayList<DesarrolloExamenGeneradoBean> )session.getAttribute("listaDesarrolloExamenGenerado");
     
        listaAlternativa=(ArrayList<AlternativaBean>)request.getAttribute("Alternativa");
        listaAyudas=(ArrayList<AyudaBean>)request.getAttribute("Ayudas");
	contadorcad=session.getAttribute("contador").toString();      
        contador=Integer.parseInt(contadorcad);
        objDesarrolloExamenGeneradoBean=(DesarrolloExamenGeneradoBean)request.getAttribute("PREGUNTAS");
        enunciado=objDesarrolloExamenGeneradoBean.getENUNCIADOPREG();
        RESPUESTAOK=objDesarrolloExamenGeneradoBean.getRESPUESTAOK();
        limite =request.getAttribute("limite").toString();    



        objExamenAutoGeneradoBean=(ExamenAutoGeneradoBean)request.getAttribute("datosmatricula");  
        parametros="&CODMATRICULA="+objExamenAutoGeneradoBean.getCODMATRICULA()+"&CODDETAMATRI="+objExamenAutoGeneradoBean.getCODDETAMATRI()+"&CODMATERIA="+objExamenAutoGeneradoBean.getCODMATERIA()+"&CODESTRUCEXAMEN="+objExamenAutoGeneradoBean.getCODESTRUCEXAMEN(); 
%>

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
                                                    <span ><%=puntajepregunta%></span></td>                                                  
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
                                            <td width="3%"><b><font size="4"><%=contador%>)</font></b></td>
                                                    <td width="50%"  bgcolor="#D5F7FF">
                                                        <div  style="background-color: #ebebeb;height:auto;FONT-FAMILY: Tahoma;BACKGROUND-COLOR:#D5F7FF;FONT-SIZE: 10pt;COLOR: #000066;">
                                                        <%=enunciado%>
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
                                            
                                            for(AlternativaBean  objAlternativas:listaAlternativa){  %>
                                            <tr  bgcolor="#D5F7FF" >
                                                   <td width="3%" ></td>
                                                   <td width="4%" bgcolor="#D5F7FF"><%=objAlternativas.getCLAVEALTER()%><b>)</b><input type="radio" name="rdop" id="rdop" value="<%=objAlternativas.getCLAVEALTER()%>"></td>
                                                    <td width="42%"  bgcolor="#D5F7FF">
                                                        <div  style="background-color: #ebebeb;height:auto;FONT-FAMILY: Tahoma;BACKGROUND-COLOR:#D5F7FF;FONT-SIZE: 10pt;COLOR: #000066;">                                                        
                                                               <%=objAlternativas.getENUNCIADOALTER()%>
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
                                                          <input type="button"  class="boton" value="SIGUIENTE PREGUNTA ======>" onclick="siguientepreguntaalumno('<%=request.getContextPath()%>','ExamenAutoGenerado',4,'<%=limite%>','<%=parametros%>')"  style="height:35px;width:300px;"> 
                                                      </center>
                                                     </td>
                                           </tr>
                                      </table>
                                               
                                         <%   if(listaAyudas.size()>0) { %>                  
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
                                             
                                            for(AyudaBean  objAyudas:listaAyudas){ 
                                              parametro="&enunciado="+objAyudas.getENUNCIADOAYUDA();    
                                              
                                           %>
                                            <tr> 
                                                    <td width="3%" bgcolor="#D5F7FF"><input type="button"  style="width:140px;height: 50" class="boton" value="Ayuda # <%=""+i1 %>:" id="<%="B"+i1%>" onclick="Ayuda('<%=request.getContextPath()%>','ExamenAutoGenerado',6,'<%=parametro%>','ayuda<%="A"+i1%>','<%="B"+i1%>','<%=penalidadayuda%>')"  style="height:35px;width:30px;"> </td>
                                                    <td width="47%"  bgcolor="#D5F7FF">
                                                        <div  id="ayuda<%="A"+i1%>"  style="visibility: visible;display:block;height:50px;FONT-FAMILY: Tahoma;BACKGROUND-COLOR:DarkGray;FONT-SIZE: 10pt;COLOR: black;">           
                                                            
                                                        </div>                                                       
                                                    </td>                                                    
                                            </tr>
                                            <tr  bgcolor="white" >
                                            <td colspan="2" >.</td>                                                  
                                            </tr>
                                           <%    i1++;  }%>                                    
                                      </table>	
				  </td>
				</tr>
			</table>
		</center>
</body>
</html>