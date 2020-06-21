<%@page import="BEAN.DocentexMateriaBean"%>
<%@page import="java.util.ArrayList" %>
<%!
    ArrayList<DocentexMateriaBean> listaDocentexMateria;
%>
<%
    listaDocentexMateria = (ArrayList<DocentexMateriaBean>) request.getAttribute("ListaDocentexMateria");
    int i = 0;
%>   
<html>
    <head>
        <script>
            /*function salir() {
             document.form.action = "<%=request.getContextPath()%>/DocentexMateriaServlet";
             document.form.method = "GET";
             document.form.op.value = "2";
             document.form.submit();
             }
             function nuevo() {
             document.form.action = "<%=request.getContextPath()%>/DocentexMateriaServlet";
             document.form.method = "GET";
             document.form.op.value = "3";
             document.form.submit();
             }
             function  modificar(cod, carr, mat, doc, nombcarr, nombmat, nombdoc)
             {
             document.form.action = "<%=request.getContextPath()%>/DocentexMateriaServlet";
             document.form.method = "GET";
             document.form.op.value = "6";
             document.form.cod.value = cod;
             document.form.carr.value = carr;
             document.form.mat.value = mat;
             document.form.doc.value = doc;
             
             document.form.nombcarr.value = nombcarr;
             document.form.nombmat.value = nombmat;
             document.form.nombdoc.value = nombdoc;
             document.form.submit();
             }
             function  eliminar(cod, carr, mat, doc)
             {
             document.form.action = "<%=request.getContextPath()%>/DocentexMateriaServlet";
             document.form.method = "GET";
             document.form.op.value = "8";
             document.form.cod.value = cod;
             document.form.carr.value = carr;
             document.form.mat.value = mat;
             document.form.doc.value = doc;
             document.form.submit();
             }*/
        </script>
    </head>
    <body>
        <div id="contenedor" >
            <div  id="contenido">
                <center>
                    <br>
                    <br>
                    <br>
                    <input type="hidden" name="op"> 
                    <input type="hidden" name="cod"> 
                    <input type="hidden" name="carr"> 
                    <input type="hidden" name="mat"> 
                    <input type="hidden" name="doc">
                    <input type="hidden" name="nombcarr"> 
                    <input type="hidden" name="nombmat"> 
                    <input type="hidden" name="nombdoc">
                    <table width="70%" border="0" class="FondoTabla">
                        <tr class="tituloTabla">
                            <td>Mantenimiento de la Tabla Docente x Materia</td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td>
                        <center>
                            <button  class="boton" onclick="nuevoDocenteMateria('<%=request.getContextPath()%>',0)" style="width: 120px;">
                                <img src="<%=request.getContextPath()%>/imagenes/nuevo.png" width="20" height="20">
                                Nuevo
                            </button>
                        </center>
                        </td>
                        <td colspan="4">
                        </td>
                        <td>
                        <center>
                            <button class="boton" onclick="salir()" style="width: 120px;"><img src="<%=request.getContextPath()%>/imagenes/salir.png" width="20" height="20">
                                Salir
                            </button>
                        </center>
                        </td>
                        </tr>
                    </table>
                    <div style="padding: 5px auto 5px auto; width: 70%; background: #E7E4E6;">
                        <table id="listado" class="display" cellspacing="0" cellpadding="0" width="100%">
                            <thead>
                                <tr  >
                                    <th>Codigo</th>
                                    <th>Carrera</th>
                                    <th>Materia</th>
                                    <th>Docente</th>
                                    <th>Modificar</th>
                                    <th>Eliminar</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Codigo</th>
                                    <th>Carrera</th>
                                    <th>Materia</th>
                                    <th>Docente</th>
                                    <th>Modificar</th>
                                    <th>Eliminar</th>
                                </tr>
                            </tfoot>
                            <%  for (DocentexMateriaBean obj : listaDocentexMateria) {
                                    i++;%>  
                            <tr>
                                <td><%=obj.getCODDOCENXMATERIA()%></td>
                                <td><%=obj.getNOMBCARRERA()%></td>
                                <td><%=obj.getNOMBMATERIA()%></td>
                                <td><%=obj.getNOMBDOCENTE()%></td>
                                <td><center><button class="boton" onclick="nuevoDocenteMateria('<%=request.getContextPath()%>','<%=obj.getCODDOCENXMATERIA()%>')">
                                    <img  src="<%=request.getContextPath()%>/imagenes/modificar.png" width="20" height="20">
                                    Modificar</button></center></td>
                            <td><center><button class="boton" onclick="eliminar('<%=obj.getCODDOCENXMATERIA()%>',
                                                '<%=obj.getCODCARRERA()%>',
                                                '<%=obj.getCODMATERIA()%>',
                                                '<%=obj.getCODDOCENTE()%>')">
                                    <img  src="<%=request.getContextPath()%>/imagenes/eliminar.png" width="20" height="20">
                                    Eliminar</button> </center></td>
                            </tr>
                            <%}%>
                        </table>
                    </div>
                </center>
            </div>
        </div>
        <div id="DivModal">

        </div>
    </body>
</html>