<%@page session="true" %>
<%@page import="BEAN.*" %>
<%@page import="java.util.ArrayList" %>

<%!
 ExamenAutoGeneradoBean  objExamenAutoGeneradoBean=null;
    AlumnoBean  objAlumnoBean=null;      
String CODMATRICULA,CODDETAMATRICULA;


String  parametros="",contadorcad;
String   tiempocad;
int   tiempo;
%>


<%	
	
objAlumnoBean=(AlumnoBean)session.getAttribute("SESION"); 	
        //contador=Integer.parseInt(contadorcad);       
              
        //objDetalleEstructuraExamenBean=(DetalleEstructuraExamenBean) session.getAttribute("OBJDETALLEESTRUCTURA");
       // CODMATRICULA=request.getAttribute("CODMATRICULA").toString();
        //CODDETAMATRICULA=request.getAttribute("CODETAMATRICULA").toString(); 
     //   out.println(" Tiempo :"+objDetalleEstructuraExamenBean.getTIEMPOXPREG()+"COD MATRICULA :"+CODMATRICULA+"  COD DETAMATRICULA :"+CODDETAMATRICULA);
      //  parametro="&CODMATRICULA="+CODMATRICULA+"&CODETAMATRICULA="+CODDETAMATRICULA;
        tiempocad=request.getAttribute("tiempo").toString(); 
        objExamenAutoGeneradoBean=(ExamenAutoGeneradoBean)request.getAttribute("datosmatricula");  
        parametros="&CODMATRICULA="+objExamenAutoGeneradoBean.getCODMATRICULA()+"&CODDETAMATRI="+objExamenAutoGeneradoBean.getCODDETAMATRI()+"&CODMATERIA="+objExamenAutoGeneradoBean.getCODMATERIA()+"&CODESTRUCEXAMEN="+objExamenAutoGeneradoBean.getCODESTRUCEXAMEN();
%>
<html>
<head>
	
	<title>RENDIR  EXAMEN</title>
</head>
<body >
		<input  type="hidden"   id="tiempo" value="<%=tiempocad%>">   
              
                
                
                
                        <center>
                            <table class="FondoTabla"  width="100%">
                                <tr class="tituloTabla"    >
                                        <td>-- RENDIR EXAMEN --</td>
                                </tr>
			   </table>
			  <table  width="90%">
				<tr>
				  <td>
					<table width="90%" border="0" height="50">
                                            <td width="47%" colspan="6" bgcolor="#87CEEB" >
                                                       <center>  
                                                        <div  style="height:auto;FONT-FAMILY: Tahoma;FONT-SIZE: 10pt;COLOR: #000066;">                                                        
                                                            <center><b>Normas para rendir una evaluación virtual</b></center>
                                                            <center><b>(Con supervisión presencial) </b></center>
                                                        </div>
                                                        </center>
                                                    </td> 
                                            <tr  bgcolor="#D5F7FF" >
                                            <td width="10%"><b><font size="4"></font></b></td>
                                                    <td width="80%"  bgcolor="#D5F7FF">
                                                        <div  style="background-color: #ebebeb;height:auto;FONT-FAMILY: Tahoma;BACKGROUND-COLOR:#D5F7FF;FONT-SIZE: 10pt;COLOR: #000066;">
                                                         
                                                            <p> Estimado <b> <%=objAlumnoBean.getNOMBALU()%>  <%=objAlumnoBean.getAPEPATERALU()%>  <%=objAlumnoBean.getAPEMATERALU()%></b> , les pedimos prestar atención a las indicaciones que se darán a
                                            continuación para el buen desarrollo de la evaluación en modalidad virtual(con supervision presencial)</p>
                                            <p> Número de preguntas: 20                                            
                                                Duración del examen: 30 minutos</p>
                                            <ol>La evaluación, inicialmente permanecerá oculta y será puesta en modo visible por el
                                                 Docente del curso en la  fecha programada . </ol>
                                             <ol> Sólo darán examen con su carné de estudiante (OBLIGATORIO), el mismo que será
                                                 puesto sobre su respectiva mesa.</ol>
                                             <ol> Queda prohibido el uso de dispositivos electrónicos de comunicación (celular, ipad,
                                                 tabled u otro dispositivo).</ol>
                                            <ol>Recuerden que el plagio está totalmente prohibido. Por ello, se les recomienda:
                                                ? No intentar voltear hacia la evaluación del compañero más cercano.
                                                ? No utilizar ningún tipo de ayuda memorística.
                                                ? No abrir otras páginas web.</ol>
                                              <ol> Alumno que no cumpla con las normas emitidas será sancionado quedando ANULADA
                                                su evaluación sin lugar a reclamos.</ol>
                                             
                                                        </div>
                                                    </td>
                                                    <td width="10%" bgcolor="#D5F7FF">
                                                   
                                            </tr>
					</table>
              
                                        <table width="90%" border="0" height="10">
                                            <tr   bgcolor="#D5F7FF" >
                                                 
                                                    <td width="47%" colspan="6" bgcolor="#87CEEB">
                                                       <center>  
                                                        <div  style="height:auto;FONT-FAMILY: Tahoma;FONT-SIZE: 10pt;COLOR: #000066;">                                                        
                                                           .
                                                        </div>
                                                        </center>
                                                    </td>                                                   
                                            </tr>
                                                                                      
                                           <tr  bgcolor="#D5F7FF" >                                                                                                  
                                                     <td   colspan="6">
                                                      <center>                                                 
                                                          <button   style="width:150px;" onclick="IniciarExamenAlumno('<%=request.getContextPath()%>','ExamenAutoGenerado',3,'<%=parametros%>')" >
                                                               <img  width="70px"  height="70px" src="<%=request.getContextPath()%>/imagenes/desarrollarexamen.png"> 
                                                               <br><b>RENDIR  EXAMEN</b>
                                                          </button>                                                     
                                                      </center>
                                                     </td>
                                           </tr>
                                      </table>                                                
				  </td>
				</tr>
			</table>
		</center>
</body>
</html>