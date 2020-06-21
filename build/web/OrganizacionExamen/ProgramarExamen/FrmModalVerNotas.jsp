<%@page import="java.util.ArrayList"%>
<%@page import="BEAN.*"%>
<%!
    ArrayList<ExamenAutoGeneradoBean> ListExamenAutoGeneradoBean;
%>
<%
    ListExamenAutoGeneradoBean = (ArrayList<ExamenAutoGeneradoBean>) request.getAttribute("ListExamenAutoGeneradoBean");
%>
<style>
    div#ModalProgramar table.FondoTabla td input {
        margin-top: 3px;
    }
    div#ModalProgramar table.FondoTabla {
        margin-top: 10px;
    }
</style>
<center>
    <div id="ModalVerNotas">
        <div style="padding: 5px auto 5px auto; margin-top: 10px;width: 95%; background: #E7E4E6;">
            <div id="divlistadoNotas">
                <table id="listadoNotas" class="display" cellspacing="0" cellpadding="0" width="100%">
                    <thead>
                        <tr>
                            <th>Semestre</th>
                            <th>Carrera</th>
                            <th>Curso</th>                                    
                            <th>Alumno</th>
                            <th>Estado</th>
                            <th>Nota</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                           <th>Semestre</th>
                            <th>Carrera</th>
                            <th>Curso</th>                                    
                            <th>Alumno</th>
                            <th>Nota</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        <%for(ExamenAutoGeneradoBean obj:ListExamenAutoGeneradoBean){%>
                        <tr>
                            <td><%=obj.getNOMBSEMESTRE()%></td>
                            <td><%=obj.getNOMBCARRERA()%></td>
                            <td><%=obj.getNOMBMATERIA()%></td>                                    
                            <td><%=obj.getNOMBALUMN()%></td>                                 
                            <td><%=obj.getESTADO()%></td>
                            <td><%=obj.getNotaExamen()%></td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </div>        
        </div>
    </div>
</center>