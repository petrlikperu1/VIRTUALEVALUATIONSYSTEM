
<%@page import="BEAN.AyudaBean"%>
<%@page import="UTIL.Constantes" %>
<%@page import="java.util.ArrayList" %>
<%!    
    ArrayList<AyudaBean> listaAyuda;
%>
<%   
   listaAyuda = (ArrayList<AyudaBean>) request.getAttribute("listaAyuda");
%> 
<html>
    <head>
        <link href="<%=request.getContextPath()%>/css/maquetado.css" rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath()%>/css/screen.css" rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath()%>/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mantenimiento de Ayuda</title>
        <script src="<%=request.getContextPath()%>/jquery-ui/jquery.js"></script>
        <script src="<%=request.getContextPath()%>/jquery-ui/jquery-dataTables.js"></script>
        <script src="<%=request.getContextPath()%>/jquery-ui/jquery-dataTables-es.js"></script>
        <script>
       
            function salir() {
                document.form.action = "<%=request.getContextPath()%>/AyudaServlet";
                document.form.method = "GET";
                document.form.op.value = "2";
                document.form.submit();
            }
            
            
            
            function Grabar()
            {
                 //valida campos de entrada
                    
                document.form.action = "<%=request.getContextPath()%>/AyudaServlet";
                document.form.method = "GET";
                document.form.op.value = "4";
                document.form.submit();
            }
            <%--
            function nuevo() {
                document.form.action = "<%=request.getContextPath()%>/AyudaServlet";
                document.form.method = "GET";
                document.form.op.value = "3";
                document.form.submit();
            }
            
            function modificar(carrera,materia,unidad, tema, nivel, codigo){
               document.form.action="<%=request.getContextPath()%>/AyudaServlet"; 
               document.form.method="GET";
               document.form.op.value="7";
               document.form.CODIGO.value=codigo;
               document.form.CARRERA.value=carrera;
               document.form.MATERIA.value=materia;
               document.form.UNIDAD.value=unidad;
               document.form.TEMA.value=tema;
               document.form.NIVEL.value=nivel;
               document.form.submit(); 
            }
            
            function eliminar(CODPREG, CODNIV, CODCAR, CODMAT, CODUNI, CODTEM) {
            <%--
            alert(CODPREG+" "+CODNIV+" "+CODCAR+" "+CODMAT+" "+CODUNI+" "+CODTEM);
                       
            document.form.action = "<%=request.getContextPath()%>/AyudaServlet";
            document.form.method = "GET";
            document.form.op.value = "8";
            document.form.CODPREG.value = CODPREG;
            document.form.CODNIV.value = CODNIV;
            document.form.CODCAR.value = CODCAR;
            document.form.CODMAT.value = CODMAT;
            document.form.CODUNI.value = CODUNI;
            document.form.CODTEM.value = CODTEM;
            document.form.submit();
                        
        }
            --%>

        </script>
    </head>
    <body onload="Load()">
        <div id="contenedor" style="background-color:yellow">
            <div  id="cabecera" style="background-color:#386FB3"><%@include file="/Seguridad/loginAcceso/Docente/arriba.jsp" %></div> 
            <div id="menu" style="background-color:#386FB3"><%@include file="/Seguridad/loginAcceso/Docente/menu.jsp" %></div>
            <div  id="contenido" style="background:#E7E4E6">

                <form name="form">
                    <input type="hidden" name="op">
                    <%-- 
                    <input type="hidden" name="CODPREG">
                    <input type="hidden" name="CODNIV">
                    <input type="hidden" name="CODCAR">
                    <input type="hidden" name="CODMAT">
                    <input type="hidden" name="CODUNI">
                    <input type="hidden" name="CODTEM">
                    --%>
                    <br>
                    <center>
                        <table width="70%" border="0" class="FondoTabla">
                            <tr class="tituloTabla">
                            <td>Registrar Ayuda por Materia</td>
                            </tr>
                            
                            <tr><td>Carrera Profesional:</td>
                            <td> <input type="hidden"   name="txtCodigoCarrera" >
                                <input type="text" name="txtCarrera" class="input_text"> </td></tr>
                            <tr><td>Materia:</td>
                                                        <td><input type="text" name="txtMateria" class="input_text"> </td></tr>
                            <tr><td>Unidad:</td>
                                                        <td><input type="text" name="txtUnidad"  class="input_text"> </td></tr>
                            <tr><td>Tema:</td>
                            <td><input type="text" name="txtTema"  class="input_text"> </td></tr>
                        </table>
                        
                        <table width="300" class="FondoTabla">
                            <%--
                            <tr>    
                            <td class="text_normal">Codigo :</td>
                            <td><input type="text" name="txtcodigo" disabled="false" value="<%=%>"></td>
                            </tr>
                            --%>
                            <tr>
                            <td align="center" class="text_normal">Enunciado de la Ayuda:</td>
                            <td align="center" class="text_normal">Penalidad</td>
                            </tr>
                            <tr>
                            <td><input type="text" name="txtenu" placeholder="Ingrese Ayuda" class="input_text"></td>
                            <td><input type="text" name="txtpen" class="input_text"></td>
                            <td><center><button class="boton" onclick="nuevo()"><img src="<%=request.getContextPath()%>/imagenes/agregar.png" width="20" height="20">Agregar</button></center></td>
                            </tr>
                        </table>
                        <table width="70%" class="FondoTabla">
                            <tr>
                            <td><center><button class="boton" onclick="nuevo()"><img src="<%=request.getContextPath()%>/imagenes/nuevo.png" width="20" height="20">Grabar</button></center></td>
                            <td><center><button class="boton" onclick="salir()"><img src="<%=request.getContextPath()%>/imagenes/salir.png" width="20" height="20">Salir</button></center></td>
                            </tr>
                        </table>
                        <div style="padding: 5px auto 5px auto; width: 70%; background: #E7E4E6;">
                            <table id="listado" class="display" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>

                                    <%  for (AyudaBean obj : listaAyuda) {%>
                                    <tr>
                                    <td>

                                        <%  if (obj.getCODPREG()==18) {%>
                                    </td>    
                                    <td><%=obj.getENUNCIADOAYUDA()%></td>
                                    <td><%=obj.getNUMAYUDA()%></td>


                                    <%--
                                    <td><%=obj.getNOMBMATERIA()%></td>
                                    <td><%=obj.getNOMBUNIDTEMA()%></td>
                                    <td><%=obj.getNOMBTEMA()%></td>
                                    <td><%=obj.getNOMBNIVEL()%></td>
                                    --%>
                                    <td><center><button class="boton" onclick="modificar()">
                                                <img src="<%=request.getContextPath()%>/imagenes/modificar.png" width="20" height="20">
                                                Modificar</button></center></td>
                                    <td><center><button class="boton" onclick="eliminar()">
                                                <img src="<%=request.getContextPath()%>/imagenes/eliminar.png" width="20" height="20">
                                                Eliminar</button> </center></td>
                                                <%   }%>
                                    </tr>
                                    <% }%>
                                </tbody>
                            </table>
                        </div>
                    </center>
                </form>
                <br/>
            </div>
            <div id="pie" style="background:#386FB3"><%@include file="/Seguridad/loginAcceso/Docente/pie.jsp" %></div>
        </div>

    </body>
</html>
--%>