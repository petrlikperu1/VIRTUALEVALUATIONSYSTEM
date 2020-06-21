<%@page import="BEAN.DocenteBean" %>
<%@page import="BEAN.CarreraProfesionalBean" %>
<%@page import="java.util.ArrayList" %>
<%!
   String  codcad;
   ArrayList<CarreraProfesionalBean>    listaCarreraProfesional=null;
   ArrayList<DocenteBean>    listaDocente=null;
%>
<% 
  listaCarreraProfesional=(ArrayList<CarreraProfesionalBean>)request.getAttribute("listaCarreraProfesional");
   listaDocente=(ArrayList<DocenteBean>)request.getAttribute("listaDocente");
%>   
<html>
    <head>
        <link href="<%=request.getContextPath()%>/css/maquetado.css" rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath()%>/css/screen.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script type="text/javascript">
             function  grabar()
            {
                var carpro=document.form.cbocarrera.value;
                var matpro=document.form.cbomateria.value;
                var docpro=document.form.cbodocente.value;     
                
                if(carpro=="0"){
                    alert("Es necesario seleccionar una Carrera Profesional !!!");
                     //document.form.cbocarrera.focus();
                     return;
                     
                }    else if(matpro=="0"){
                    alert("Es necesario seleccionar una Materia !!!");
                     //document.form.cbomateria.focus();
                     return;
                }
                 else if(docpro=="0"){
                    alert("Es necesario seleccionar un Docente !!!");
                     //document.form.cbounidad.focus();
                     return;
                 }else{
                     //alert("Correcto !!!");
                 
                   document.form.action="<%=request.getContextPath()%>/SupervisorExamenServlet"; 
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

            function cargarMateria(carrera, materia){
                var pagina="<%=request.getContextPath()%>/TemaServlet?op=9&CODCAR="+carrera+"&CODMAT="+materia;
                var xmlhttp;
                if(window.XMLHttpRequest){
                    xmlhttp=new XMLHttpRequest();
                }else{
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
                }
                xmlhttp.onreadystatechange=function(){
                    if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
                        document.getElementById("divmateria").innerHTML=xmlhttp.responseText;
                       
                    }
                }
                xmlhttp.open("GET",pagina,true);
                xmlhttp.send(null);
                cargarUnidad(materia, 0)
            }
            
         </script>
    </head>
    <body   >
        <div id="contenedor" style="background-color:yellow">
         <div  id="cabecera" style="background-color:#386FB3"><%@include file="/Seguridad/loginAcceso/Docente/arriba.jsp" %></div> 
         <div id="menu" style="background-color:#386FB3"><%@include file="/Seguridad/loginAcceso/Docente/menu.jsp" %></div>
         <div  id="contenido" style="background:#E7E4E6">
        <center>
        <br><br><br>
        <form  name="form">
            <table>
                <tr>
                    <td>
            <input type="hidden" name="op">
            <input type="hidden" name="EnunPreg">
            <input type="hidden" name="EnunAlter">
            <input type="hidden" name="Carrera">
            <input type="hidden" name="Materia">
            <input type="hidden" name="Unidad">
            <input type="hidden" name="Tema">
            <input type="hidden" name="nivel">
            <input type="hidden"   name="hddcodigo" value="<%=codcad%>">
            <center>
                 <table class="FondoTabla"  width="300" >
                <tr class="tituloTabla"    >
                    <td >Formulario Registrar Supervisor de Examen</td>
                </tr>
            </table>
                <table width="300" class="FondoTabla">
                    <tr>
                        <td class="text_normal">Codigo :</td>
                        <td><input type="text" name="txtcodigo" disabled="false" value=""></td>
                    </tr>
                    <tr>
                    <td class="text_normal">Carrera Profesional :</td>
                        <td>
                            <select  name="cbocarrera" onchange="cargarMateria(this.value,0)">
                                <option value="0" selected>-Seleccional Carrera-</option>
                               <% for(CarreraProfesionalBean obj:listaCarreraProfesional){ %>
                                <option value="<%=obj.getCODCARRERA()%>"><%=obj.getNOMBCARRERA()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                    <td class="text_normal">Materia :</td>
                        <td>
                            <div id="divmateria">
                            <select  name="cbomateria" onchange="cargarUnidad(this.value,0)">
                                <option value="0" selected>-Selecciona Materia-</option>     
                            </select>
                            </div>
                        </td>
                    </tr>
                    <tr>
                    <td class="text_normal">Docente :</td>
                        <td>
                            <select  name="cbodocente">
                                <option value="0" selected>-Selecciona Docente-</option>
                               <% for(DocenteBean obj:listaDocente){ %>
                                <option value="<%=obj.getCODDOCENTE()%>"><%=obj.getNOMBDOCENTE()%> <%=obj.getAPEPATERDOCENTE()%> <%=obj.getAPEMATERDOCENTE()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                     </table>
                     
                <table border="0"  >
                    <tr>
                        <td><input   type="button"  class="boton" onclick="grabar()"  value="Grabar"  style="background-image:url('imagenes/grabar.png');
                                                                                                             background-repeat:no-repeat;
                                                                                                             background-size: 20;
                                                                                                             height:28px;
                                                                                                             width:80px;
                                                                                                             background-position:right;" /></td>
                        <td><button  class="boton" onclick="salir()">Salir<img  src="<%=request.getContextPath()%>/imagenes/salir.png" width="20" height="20"></button></td>
                    </tr>
                </table>
            </td>
                </tr>
            </table>
        </form>
                     <font color="red">
                <%
                  if(request.getAttribute("mensaje")!=null){
                      String  msj=(String)request.getAttribute("mensaje");
                      out.print(msj);
                  }
                %>
                </font> 
</center>
    </div>
      <div id="pie" style="background:#386FB3"><%@include file="/Seguridad/loginAcceso/Docente/pie.jsp" %></div>
  </div>
  </body>
</html>