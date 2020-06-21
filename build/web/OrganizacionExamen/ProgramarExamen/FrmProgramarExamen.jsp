<%@page import="BEAN.*"%>
<%@page import="java.util.ArrayList" %>
<%!
    ArrayList<SemestreBean> listasemestre;
    ArrayList<TipoExamenBean> listatipoexamen;
    ArrayList<CarreraProfesionalBean> listaCarreraProfesional;
    ArrayList<EstructuraExamenBean> listaEstructuraExamen;
     ArrayList<MateriaBean>  listamateria;
    EstructuraExamenBean datos = null;
%>
<%
    listasemestre = (ArrayList<SemestreBean>) request.getAttribute("listasemestre");
    listatipoexamen = (ArrayList<TipoExamenBean>) request.getAttribute("listatipoexamen");
    listaCarreraProfesional = (ArrayList<CarreraProfesionalBean>) request.getAttribute("listaCarreraProfesional");
    listamateria = (ArrayList<MateriaBean>) request.getAttribute("listamateria");
    datos = (EstructuraExamenBean) request.getAttribute("datos");
    listaEstructuraExamen = new ArrayList<EstructuraExamenBean>();//(ArrayList<EstructuraExamenBean>) request.getAttribute("listaEstructuraExamen");

%>
<html>
    <head>
        <script type="text/javascript">
            function salir() {
                document.form.action = "<%=request.getContextPath()%>/ProgramarExamenServlet";
                document.form.method = "GET";
                document.form.op.value = "2";
                document.form.submit();
            }
            /*     function cargarMateria() {
             var codcar = document.form.cbocarrera.value;
             var codmat = 0;
             var pagina = "<%=request.getContextPath()%>/ProgramarExamenServlet?op=3&CODCAR=" + codcar + "&CODMAT=" + codmat;
             var xmlhttp;
             if (window.XMLHttpRequest) {
             xmlhttp = new XMLHttpRequest();
             }
             else {
             xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
             }
             xmlhttp.onreadystatechange = function () {
             if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
             document.getElementById("divmateria").innerHTML = xmlhttp.responseText;
             }
             }
             xmlhttp.open("GET", pagina, true);
             xmlhttp.send(null);
             }
             function cargarMateria2() {
             var codcar = document.form.hddcarrera.value;
             var codmat = document.form.hddmateria.value;
             var pagina = "<%=request.getContextPath()%>/ProgramarExamenServlet?op=3&CODCAR=" + codcar + "&CODMAT=" + codmat;
             var xmlhttp;
             if (window.XMLHttpRequest) {
             xmlhttp = new XMLHttpRequest();
             }
             else {
             xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
             }
             xmlhttp.onreadystatechange = function () {
             if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
             document.getElementById("divmateria").innerHTML = xmlhttp.responseText;
             }
             }
             xmlhttp.open("GET", pagina, true);
             xmlhttp.send(null);
             }*/
            /*  function cargarProgramacionExamen() {
             var semestre = document.form.cbosemestre.value;
             var carrera = document.form.cbocarrera.value;
             var tipoexamen = document.form.cbotipoexamen.value;
             var materia = document.form.cbomateria.value;
             var pagina = "<%=request.getContextPath()%>/ProgramarExamenServlet?op=4&SEMESTRE=" + semestre + "&CARRERA=" + carrera + "&TIPOEXAMEN=" + tipoexamen + "&MATERIA=" + materia;
             var xmlhttp;
             if (window.XMLHttpRequest) {
             xmlhttp = new XMLHttpRequest();
             }
             else {
             xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
             }
             xmlhttp.onreadystatechange = function () {
             if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
             document.getElementById("divlistado").innerHTML = xmlhttp.responseText;
             }
             }
             xmlhttp.open("GET", pagina, true);
             xmlhttp.send(null);
             }
             function cargarProgramacionExamen2() {
             var semestre = document.form.hddsemestre.value;
             var carrera = document.form.hddcarrera.value;
             var tipoexamen = document.form.hddtipoexamen.value;
             var materia = document.form.hddmateria.value;
             var pagina = "<%=request.getContextPath()%>/ProgramarExamenServlet?op=4&SEMESTRE=" + semestre + "&CARRERA=" + carrera + "&TIPOEXAMEN=" + tipoexamen + "&MATERIA=" + materia;
             var xmlhttp;
             if (window.XMLHttpRequest) {
             xmlhttp = new XMLHttpRequest();
             }
             else {
             xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
             }
             xmlhttp.onreadystatechange = function () {
             if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
             document.getElementById("divlistado").innerHTML = xmlhttp.responseText;
             }
             }
             xmlhttp.open("GET", pagina, true);
             xmlhttp.send(null);
             }*/
            /* function traerCodEstrucExamen() {
             var semestre = document.form.cbosemestre.value;
             var carrera = document.form.cbocarrera.value;
             var tipoexamen = document.form.cbotipoexamen.value;
             var materia = document.form.cbomateria.value;
             if (semestre != 0 && carrera != 0 && tipoexamen != 0 && materia != 0) {
             var pagina = "<%=request.getContextPath()%>/ProgramarExamenServlet?op=5&SEMESTRE=" + semestre + "&CARRERA=" + carrera + "&TIPOEXAMEN=" + tipoexamen + "&MATERIA=" + materia;
             var xmlhttp;
             if (window.XMLHttpRequest) {
             xmlhttp = new XMLHttpRequest();
             }
             else {
             xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
             }
             xmlhttp.onreadystatechange = function () {
             if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
             document.getElementById("divcodigos").innerHTML = xmlhttp.responseText;
             }
             }
             xmlhttp.open("GET", pagina, true);
             xmlhttp.send(null);
             document.getElementById("btnnulo").style.display = 'none';
             document.getElementById("btnAdicionarHorario").style.display = 'block';
             } else {
             document.getElementById("btnAdicionarHorario").style.display = 'none';
             document.getElementById("btnnulo").style.display = 'block';
             }
             }*/
            function nuevo() {
                document.form.cbosemestre.value = 0;
                document.form.cbocarrera.value = 0;
                document.form.cbotipoexamen.value = 0;
                document.form.cbomateria.value = 0;
                cargarMateria();
                cargarProgramacionExamen();
                document.getElementById("btnAdicionarHorario").style.display = 'none';
                document.getElementById("btnnulo").style.display = 'block';
            }

            function cargarDatos() {
                document.form.cbosemestre.value = '<%=datos.getCODSEMESTRE()%>';
                document.form.cbotipoexamen.value = '<%=datos.getCODTIPEXAMEN()%>';
                document.form.cbocarrera.value = '<%=datos.getCODCARRERA()%>';
                cargarMateria2();
                if (<%=datos.getCODSEMESTRE()%> != 0) {
                    document.getElementById("btnnulo").style.display = 'none';
                    document.getElementById("btnAdicionarHorario").style.display = 'block';
                }
            }
            function eliminar(codproghorario, codprogexamen) {
                document.form.action = "<%=request.getContextPath()%>/ProgramarExamenServlet";
                document.form.method = "GET";
                document.form.op.value = "8";
                document.form.hddcodproghorario.value = codproghorario;
                document.form.hddcodprogexamen.value = codprogexamen;
                document.form.submit();
            }
        </script>
    </head>
    <body onload="">
        <div id="contenedor" >
            <div  id="contenido" >
                <br>
                <br>
                <br>
                <center>
                    <input type="hidden" name="op"/>
                    <div name="divcodigos" id="divcodigos">
                        <input type="hidden" name="hddcodestrucexamen" id="hddcodestrucexamen" value="<%=datos.getCODESTRUCEXAMEN()%>"/>
                        <input type="hidden" name="hddcodproghorario" id="hddcodproghorario" value="<%=datos.getCODPROGHORARIO()%>"/>
                    </div>
                    <input type="hidden" id="hddsemestre"  name="hddsemestre" value="<%=datos.getCODSEMESTRE()%>"/>
                    <input type="hidden" id="hddtipoexamen"  name="hddtipoexamen" value="<%=datos.getCODTIPEXAMEN()%>"/>
                    <input type="hidden" id="hddcarrera"  name="hddcarrera" value="<%=datos.getCODCARRERA()%>"/>
                    <input type="hidden" id="hddmateria"  name="hddmateria" value="<%=datos.getCODMATERIA()%>"/>
                    <input type="hidden" id="hddcodprogmat"  name="hddcodprogmat" value="<%=datos.getCODPROGMAT()%>"/>
                    <input type="hidden" id="hddHORARIO"  name="hddHORARIO" />
                    
                    <input type="hidden" id="hddcodprogexamen"  name="hddcodprogexamen"/>
                    <table width="70%" border="0" class="FondoTabla">
                        <tr class="tituloTabla">
                            <td><h3>Seleccionar Estructura de examen</h3></td>
                        </tr>
                    </table>
                    <table width="350px" style="padding: 10px;margin-top: 10px" class="FondoTabla">
                        <tr style="display: none">
                            <td class="text_normal" >Semestre :</td>
                            <td>
                                <select name="cbosemestre" id="cbosemestre"
                                        onchange="LlenarEstructuraExamen('<%=request.getContextPath()%>');"
                                        <%-- onchange="traerCodEstrucExamen('<%=request.getContextPath()%>');
                                            cargarProgramacionExamen('<%=request.getContextPath()%>');"--%>>
                                    <option value="0">-Seleccionar Semestre-</option>
                                    <% for (SemestreBean obj : listasemestre) {
                                        String Seleccionado = "";
                                        if(obj.getCODSEMESTRE()==datos.getCODSEMESTRE()){
                                            Seleccionado =" Selected ";
                                        }
                                    %>
                                    <option <%=Seleccionado%> value="<%=obj.getCODSEMESTRE()%>"><%=obj.getNOMBSEMESTRE()%></option>
                                    <% }%>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text_normal">Tipo Examen :</td>
                            <td>
                                <select name="cbotipoexamen" id="cbotipoexamen" 
                                        onchange="LlenarEstructuraExamen('<%=request.getContextPath()%>');"
                                        <%--onchange="traerCodEstrucExamen('<%=request.getContextPath()%>');
                                            cargarProgramacionExamen('<%=request.getContextPath()%>');"--%>>
                                    <option value="0">-Seleccionar Tipo Examen-</option>
                                    <% for (TipoExamenBean obj : listatipoexamen) {%>
                                    <option value="<%=obj.getCODTIPEXAMEN()%>"><%=obj.getNOMBTIPEXAMEN()%></option>
                                    <% }%>
                                </select>
                            </td>
                        </tr>
                        <tr style="display: none">
                            <td class="text_normal" >Carrera Profesional :</td>
                            <td>
                                <select name="cbocarrera" id="cbocarrera" onchange="cargarMateria('<%=request.getContextPath()%>', 'ProgramarExamen', 7, this.value, 0);
                                        <%-- traerCodEstrucExamen('<%=request.getContextPath()%>');
                                         cargarProgramacionExamen('<%=request.getContextPath()%>');--%>
                                        LlenarEstructuraExamen('<%=request.getContextPath()%>');">
                                    <option value="0">-Seleccionar Carrera-</option>
                                    <% for (CarreraProfesionalBean obj : listaCarreraProfesional) {
                                        String Seleccionado = "";
                                        if(obj.getCODCARRERA()==datos.getCODCARRERA()){
                                            Seleccionado =" Selected ";
                                        }%>
                                    <option <%=Seleccionado%> value="<%=obj.getCODCARRERA()%>"><%=obj.getNOMBCARRERA()%></option>
                                    <% }%>
                                </select>
                            </td>
                        </tr>
                        <tr style="display: none">
                            <td class="text_normal">Materia :</td>
                            <td>
                                <div id="divmateria">
                                    <select name="cbomateria" id="cbomateria">
                                        <option value="0" selected>---------------------</option>
                                        <% for (MateriaBean obj : listamateria) {
                                        String Seleccionado = "";
                                        if(obj.getCODMATERIA()==datos.getCODMATERIA()){
                                            Seleccionado =" Selected ";
                                        }%>
                                    <option <%=Seleccionado%> value="<%=obj.getCODMATERIA()%>"><%=obj.getNOMBMATERIA()%></option>
                                    <% }%>
                                    </select> 
                                </div>
                            </td>
                        </tr>
                    </table>
                    <br/>
                    <font color="red">
                    <%
                        if (request.getAttribute("mensaje") != null) {
                            String msj = (String) request.getAttribute("mensaje");
                            out.print(msj);
                        }
                    %>
                    </font>
                    <div id="divtabla">
                        <div style="padding: 5px auto 5px auto; width: 75%; background: #E7E4E6;" id="divTableEstructura">
                            <table id="listado" class="display" cellspacing="0" cellpadding="0" width="100%">
                                <thead>
                                    <tr>
                                        <th>Codigo Estructura</th>
                                        <th>Semestre</th>
                                        <th>Carrera</th>                                    
                                        <th>Materia</th>
                                        <th>Tipo Examen</th>
                                        <th>Tiempo Minutos</th>  
                                        <th>Estado</th>                                                         
                                        <th>Seleccionar</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>Codigo Estructura</th>
                                        <th>Semestre</th>
                                        <th>Carrera</th>                                    
                                        <th>Materia</th>
                                        <th>Tipo Examen</th>
                                        <th>Tiempo Minutos</th>  
                                        <th>Estado</th>                                                       
                                        <th>Seleccionar</th>
                                    </tr>
                                </tfoot>                              
                                <tbody>
                                    <%  for (EstructuraExamenBean obj : listaEstructuraExamen) {%>
                                    <tr>
                                        <td><%=obj.getCODESTRUCEXAMEN()%></td>
                                        <td><%=obj.getNOMBSEMESTRE()%></td>
                                        <td><%=obj.getNOMBCARRERA()%></td>
                                        <td><%=obj.getNOMBMATERIA()%></td>
                                        <td><%=obj.getNOMBTIPEXAMEN()%></td>
                                        <td><%=obj.getTiempoMinutos()%></td>      
                                        <td><%=obj.getESTADO()%></td>                                                                  
                                        <td>
                                            <center>
                                                <button type="button" onclick="cargarEstructuraExamen('<%=request.getContextPath()%>', '<%=obj.getCODESTRUCEXAMEN()%>',
                                                                                '<%=obj.getCODSEMESTRE()%>', '<%=obj.getCODCARRERA()%>',
                                                                                '<%=obj.getCODMATERIA()%>', '<%=obj.getCODUNIDAD()%>',
                                                                                '<%=obj.getCODTEMA()%>', '<%=obj.getCODTIPEXAMEN()%>')">
                                                    <img src="<%=request.getContextPath()%>/imagenes/modificar.png" width="20" height="20">Programar
                                                </button>
                                            </center>
                                        </td>
                                </tr>
                                <% }%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <%-- <div id="divlistado">
                         <table width="70%" class="FondoTabla">
                             <thead>
                                 <tr>
                                     <th>Laboratorio</th>
                                     <th>Dia</th>
                                     <th>Horario</th>
                                     <th>Turno</th>
                                     <th>Modificar</th>
                                     <th>Eliminar</th>
                                 </tr>
                             </thead>
                         </table>
                     </div>--%>
                </center> 
            </div>
        </div>
                <div Id="Modal">
                    
                </div>
                <script>
                    $(function(){
                        cargarMateria('<%=request.getContextPath()%>', 'ProgramarExamen', 7, '<%=datos.getCODCARRERA()%>', '<%=datos.getCODMATERIA()%>');
                    });
                </script>
    </body>

    
</html>