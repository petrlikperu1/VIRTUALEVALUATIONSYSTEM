<%@page import="BEAN.SupervisorExamenBean"%>
<%@page import="java.util.ArrayList" %>
<%!
   ArrayList<SupervisorExamenBean> listaSupervisorExamen;
%>
<% 
   listaSupervisorExamen =(ArrayList<SupervisorExamenBean>)request.getAttribute("listaSupervisorExamen");  
   int  i=0;
 %>   
<html>
    <head>
        <link href="<%=request.getContextPath()%>/css/maquetado.css" rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath()%>/css/screen.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Pregunta x Materia</title>
         <script>
            function salir(){
               document.form.action="<%=request.getContextPath()%>/SupervisorExamenServlet"; 
               document.form.method="GET";
               document.form.op.value="2";
               document.form.submit();
            }
            function nuevo(){
               document.form.action="<%=request.getContextPath()%>/SupervisorExamenServlet"; 
               document.form.method="GET";
               document.form.op.value="3";
               document.form.submit();
            }
            function horario(codrolxdocente,nombmateria){
               document.form.action="<%=request.getContextPath()%>/SupervisorExamenServlet"; 
               document.form.method="GET";
               document.form.op.value="9";
               document.form.hddCodRolxDocente.value=codrolxdocente;
               document.form.hddNombMateria.value=nombmateria;
               document.form.submit();
            }
             function  modificar(codpreg,codcarr,codmat,coduni,codtem,codniv,nombcarr,nombmat,nombuni,nombtem,nombniv, enunpreg,enunalter)
            {
                alert("Solo agregar y listar")
               /*document.form.action="<%=request.getContextPath()%>/PreguntaServlet"; 
               document.form.method="GET";
               document.form.op.value="6";
               document.form.CODPREG.value=codpreg;
               document.form.CODCARR.value=codcarr; 
               document.form.CODMAT.value=codmat; 
               document.form.CODUNI.value=coduni; 
               document.form.CODTEMA.value=codtem;
               document.form.CODNIV.value=codniv;
               document.form.NOMBCARR.value=nombcarr;
               document.form.NOMBMAT.value=nombmat;
               document.form.NOMBUNI.value=nombuni;
               document.form.NOMBTEM.value=nombtem;
               document.form.NOMBNIV.value=nombniv;
               document.form.ENUNPREG.value=enunpreg;
                document.form.ENUNALTER.value=enunalter;
               document.form.submit(); */
            }
             function  eliminar(codpreg,codcarr,codmat,coduni,codtem,codniv)
            { 
                alert("Solo agregar y listar")
               /*document.form.action="<%=request.getContextPath()%>/PreguntaServlet"; 
               document.form.method="GET";
               document.form.op.value="8";
               document.form.CODPREG.value=codpreg;
               document.form.CODCARR.value=codcarr; 
               document.form.CODMAT.value=codmat; 
               document.form.CODUNI.value=coduni; 
               document.form.CODTEMA.value=codtem;
               document.form.CODNIV.value=codniv; 
               document.form.submit(); */
            }
        </script>
    </head>
    <body>
        <div id="contenedor" style="background-color:yellow">
        <div  id="cabecera" style="background-color:#386FB3"><%@include file="/Seguridad/loginAcceso/Docente/arriba.jsp" %></div> 
        <div id="menu" style="background-color:#386FB3"><%@include file="/Seguridad/loginAcceso/Docente/menu.jsp" %></div>
        <div  id="contenido" style="background:#E7E4E6">
        <br><br><br>
        <center>
        <form name="form">
            <input type="hidden" name="op"> 
                <input type="hidden" name="hddCodRolxDocente"> 
                <input type="hidden" name="hddNombMateria">
                <table width="70%" border="0" class="FondoTabla">
                    <tr class="tituloTabla">
                        <td>Supervisor Examen</td>
                    </tr>
                </table>
                <table width="70%" class="FondoTabla">
                    <tr>
                        <td><center><button  class="boton" onclick="nuevo()"><img src="<%=request.getContextPath()%>/imagenes/nuevo.png" width="20" height="20">Nuevo</button></center></td>
                        <td colspan="5"></td>
                        <td><center><button class="boton" onclick="salir()"><img src="<%=request.getContextPath()%>/imagenes/salir.png" width="20" height="20">Salir</button></center></td>
                    </tr>
                    <tr  class="tituloTabla">
                        <td>Codigo</td>
                        <td>Carrera</td>
                        <td>Materia</td>
                        <td>Docente</td>
                        <td>Programar Horario</td>
                        <td>Modificar</td>
                        <td>Eliminar</td>
                    </tr>
                     <% for(SupervisorExamenBean  obj:listaSupervisorExamen){
                      i++; %>  
                    <tr <%if(i%2==0) {%>      class="fila_par" <%}else{%>   class="fila_impar" <%}%>>
                        <td><%=obj.getCODROLXDOCENTE()%></td>
                        <td><%=obj.getNOMBCARRERA()%></td>
                        <td><%=obj.getNOMBMATERIA()%></td>
                        <td><%=obj.getAPEPATERDOCENTE()%> <%=obj.getAPEMATERDOCENTE()%>, <%=obj.getNOMBDOCENTE()%></td>
                    <td><center><button type="button" class="boton" onclick="horario('<%=obj.getCODROLXDOCENTE()%>','<%=obj.getNOMBMATERIA()%>')">
                                OK</button></center></td>
                    <td><center><button type="button" class="boton" onclick="modificar('<%=obj.getCODROLXDOCENTE()%>',
                                                                         '<%=obj.getNOMBCARRERA()%>',
                                                                         '<%=obj.getCODMATERIA()%>',
                                                                         '<%=obj.getNOMBDOCENTE()%>')">
                                   <img  src="<%=request.getContextPath()%>/imagenes/modificar.png" width="20" height="20">
                                Modificar</button></center></td>
                    <td><center><button type="button" class="boton" onclick="eliminar('<%=obj.getCODROLXDOCENTE()%>',
                                                                         '<%=obj.getNOMBCARRERA()%>',
                                                                         '<%=obj.getCODMATERIA()%>',
                                                                         '<%=obj.getNOMBDOCENTE()%>')">
                                 <img  src="<%=request.getContextPath()%>/imagenes/eliminar.png" width="20" height="20">
                                Eliminar</button> </center></td>
                    </tr>
                  <%   }   %>
                </table>
        </form>
  </center>
    </div>
      <div id="pie" style="background:#386FB3"><%@include file="/Seguridad/loginAcceso/Docente/pie.jsp" %></div>
  </div>
  </body>
</html>