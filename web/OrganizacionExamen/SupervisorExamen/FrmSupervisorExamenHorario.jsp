<%@page import="BEAN.ProgramacionExamenxSupervisorBean"%>
<%@page import="BEAN.SupervisorExamenBean"%>
<%@page import="BEAN.ProgramacionExamenBean"%>
<%@page import="BEAN.Alternativa"%>
<%@page import="BEAN.MateriaBean" %>
<%@page import="BEAN.CarreraProfesionalBean" %>
<%@page import="BEAN.UnidadTematicaBean" %>
<%@page import="BEAN.TemaBean" %>
<%@page import="BEAN.NivelDificultadBean" %>
<%@page import="java.util.ArrayList" %>
<%@page session="true" %>
<%!
   String  codcad;
   ArrayList<ProgramacionExamenBean>    listaProgramacionExamen=null;
   SupervisorExamenBean    objSupervisorExamenBean=null;
%>
<% 
  listaProgramacionExamen=(ArrayList<ProgramacionExamenBean>)request.getAttribute("listaProgramacionExamen");
   objSupervisorExamenBean=(SupervisorExamenBean)request.getAttribute("objSupervisorExamen");
   
   ArrayList<ProgramacionExamenxSupervisorBean> listaAsignados = new ArrayList<ProgramacionExamenxSupervisorBean>();
   session.setAttribute("ASIGNADOS", listaAsignados);
%>   
<html>
    <head>
        <link href="<%=request.getContextPath()%>/css/maquetado.css" rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath()%>/css/screen.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script type="text/javascript">
             function  grabar(){
                var carpro=document.form.cbocarrera.value;
                var matpro=document.form.cbomateria.value;
                var unipro=document.form.cbounidad.value;
                var tempro=document.form.cbotema.value;
                var nivpro=document.form.cbonivel.value;
                var preg= document.form.txtpregunta.value;
                var alter= document.form.txtalternativa.value;
                if(preg==''){
                     alert("Ingresar el enunciado de la pregunta");
                     document.form.txtpregunta.focus();
                     document.form.txtpregunta.style.color = "red";
                     return;
                }else if(carpro=="0"){
                    alert("Es necesario seleccionar una Carrera Profesional !!!");
                     //document.form.cbocarrera.focus();
                     return;
                     
                }    else if(matpro=="0"){
                    alert("Es necesario seleccionar una Materia !!!");
                     //document.form.cbomateria.focus();
                     return;
                }
                 else if(unipro=="0"){
                    alert("Es necesario seleccionar una Unidad !!!");
                     //document.form.cbounidad.focus();
                     return;
                 } else if(tempro=="0"){
                    alert("Es necesario seleccionar un Tema !!!");
                     //document.form.cbotema.focus();
                     return;
                     
                 }else if(nivpro=="0"){
                    alert("Es necesario seleccionar un Nivel !!!");
                     //document.form.cbonivel.focus();
                     return;
                 }else if(typeof document.form.rdAlternativa == "undefined"){
                   //document.form.hddAlternativa.value = document.form.rdAlternativa.value;
                    //alert("Debe elegir al menos 1 alternativa")
                    document.form.action="<%=request.getContextPath()%>/PreguntaServlet"; 
                   document.form.method="GET";
                   document.form.op.value="4";
                   document.form.submit();
                    
                 }else{
                   document.form.action="<%=request.getContextPath()%>/PreguntaServlet"; 
                   document.form.method="GET";
                   document.form.op.value="4";
                   document.form.submit();
                 
                 }  
            }
            
            function salir(){
               document.form.action="<%=request.getContextPath()%>/SupervisorExamenServlet"; 
               document.form.method="GET";
               document.form.op.value="5";
               document.form.submit();  
            }
            
            function asignar2(){
                //alert("xxxxxxxx")
               document.form.action="<%=request.getContextPath()%>/SupervisorExamenServlet"; 
               document.form.method="GET";
               document.form.op.value="10";
               document.form.submit(); 
                 
                 /*document.form.action="<%=request.getContextPath()%>/SupervisorExamenServlet"; 
               document.form.method="GET";
               document.form.op.value="5";
               document.form.submit(); */
            }

            function asignar(){
                var codsupervisorexamen = document.form.hddCodSupervisorExamen.value;
                var nombmateria = document.form.hddNombMateria.value;
                //var checks = document.form.check.value;
     
                var pagina="<%=request.getContextPath()%>/SupervisorExamenServlet?op=10&hddCodSupervisorExamen="+codsupervisorexamen+"&hddNombMateria="+nombmateria;
        
                var cont = 0;
        
                if(document.form.check.length == null){
                    //alert("es nulo...hay 1 check")
                    if(document.form.check.checked){
                        pagina = pagina + "&check="+document.form.check.value;
                        cont = 1;
                    }
                    
                }else{
                    //alert("hay mas de un check")
                    
                    for (var x=0; x < document.form.check.length; x++) {
                        if (document.form.check[x].checked) {
                            if(document.form.check[x].disabled===false){
                                pagina = pagina + "&check="+document.form.check[x].value;
                                document.form.check[x].disabled="true";
                                cont = cont + 1;
                            }    
                        }
                    }   
                }
        
                pagina = pagina + "&cant="+cont;
                
                //alert(pagina);
                //alert("Activos: "+cont);

                //var pagina="<%=request.getContextPath()%>/SupervisorExamenServlet?op=10&hddCodSupervisorExamen="+codsupervisorexamen+"&hddNombMateria="+nombmateria+"&check="+1+"&check="+2+"&check="+3;
                var xmlhttp;
                if(window.XMLHttpRequest){
                    xmlhttp=new XMLHttpRequest();
                }else{
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
                }
                xmlhttp.onreadystatechange=function(){
                    if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
                        document.getElementById("divasignados").innerHTML=xmlhttp.responseText;
                    }
                }
                xmlhttp.open("GET",pagina,true);
                xmlhttp.send(null);  
                
                //alert("ya se hizo");
            }
            
         </script>
    </head>
    <body onload="cargarFoco()">
         <div id="contenedor" style="background-color:yellow">
         <div id="cabecera" style="background-color:#386FB3"><%@include file="/Seguridad/loginAcceso/Docente/arriba.jsp" %></div> 
         <div id="menu" style="background-color:#386FB3"><%@include file="/Seguridad/loginAcceso/Docente/menu.jsp" %></div>
         <div  id="contenido" style="background:#E7E4E6">
        <center>
        <br><br><br>
        <form  name="form">
            <table>
                <tr>
                    <td>
            <input type="hidden" name="op">    
            <input type="hidden" name="cant"> 
            <input type="hidden" name="hddCodSupervisorExamen" value="<%=objSupervisorExamenBean.getCODROLXDOCENTE()%>">
            <input type="hidden" name="hddNombMateria" value="<%=objSupervisorExamenBean.getNOMBMATERIA()%>">
            <center>
                 <table class="FondoTabla"  width="500" >
                <tr class="tituloTabla">
                    <td >ASIGNAR HORARIO AL SUPERVISOR</td>
                </tr>
            </table>
                <table width="500" class="FondoTabla" border="1">
                    <tr class="tituloTabla">
                        <td class="tituloTabla">Materia</td>
                        <td class="tituloTabla">Laboratorio</td>
                        <td class="tituloTabla">Día</td>
                        <td class="tituloTabla">Horario</td>
                        <td class="tituloTabla">-</td>
                    </tr>
                    
                    <% for(ProgramacionExamenBean obj:listaProgramacionExamen){ %>
                    <tr>
                        <td><%=objSupervisorExamenBean.getNOMBMATERIA()%></td>
                        <td><%=obj.getDESCRIPLAB()%></td>
                        <td><%=obj.getNOMBDIA()%></td>
                        <td><%=obj.getHORAINICIO()%> - <%=obj.getHORAFIN()%></td>
                        <td><input type="checkbox" name="check" value="<%=obj.getCODPROGEXAMEN()%>"></td>
                    </tr>
                    <% } %>
                    <tr>
                        <td colspan="5">
                            <center>
                            <input class="boton" type="button" value="ASIGNAR" onclick="asignar()">
                            </center>
                        </td>
                    </tr>  
                 </table>
                    <br>
                    <table  class="FondoTabla">
                    <tr class="tituloTabla">
                        <td colspan="5">Horarios Asignados</td>
                    </tr>
                    <tr class="tituloTabla">
                        <td class="tituloTabla" width="200">Materia</td>
                        <td class="tituloTabla" width="200">Laboratorio</td>
                        <td class="tituloTabla" width="200">Día</td>
                        <td class="tituloTabla" width="200">Horario</td>
                        <td class="tituloTabla" width="200">Estado</td>
                    </tr>
                    </table>
                    <div id="divasignados">
                    </div>
                <table border="0"  >
                    <tr>
                        <td>
                            <button class="boton"  onclick="salir()"><img src="<%=request.getContextPath()%>/imagenes/salir.png" width="20" height="20">Salir</button> 
                        </td>
                    </tr>
                </table>
            </td>
                </tr>
            </table>
        </form>
 </center>
    </div>
      <div id="pie" style="background:#386FB3"><%@include file="/Seguridad/loginAcceso/Docente/pie.jsp" %></div>
  </div>
  </body>
</html>