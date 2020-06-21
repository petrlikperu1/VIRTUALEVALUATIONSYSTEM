
<link href="<%=request.getContextPath()%>/javascript/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
<script src="<%=request.getContextPath()%>/javascript/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
<link rel="stylesheet" type="text/css" media="all" href="<%=request.getContextPath()%>/skins/aqua/theme.css" title="Aqua" />
<link rel="alternate stylesheet" type="text/css" media="all" href="<%=request.getContextPath()%>/css/calendar-blue.css" title="winter" />
<link rel="alternate stylesheet" type="text/css" media="all" href="<%=request.getContextPath()%>/css/calendar-blue2.css" title="blue" />
<link rel="alternate stylesheet" type="text/css" media="all" href="<%=request.getContextPath()%>/css/calendar-brown.css" title="summer" />
<link rel="alternate stylesheet" type="text/css" media="all" href="<%=request.getContextPath()%>/css/calendar-green.css" title="green" />
<link rel="alternate stylesheet" type="text/css" media="all" href="<%=request.getContextPath()%>/css/calendar-win2k-1.css" title="win2k-1" />
<link rel="alternate stylesheet" type="text/css" media="all" href="<%=request.getContextPath()%>/css/calendar-win2k-2.css" title="win2k-2" />
<link rel="alternate stylesheet" type="text/css" media="all" href="<%=request.getContextPath()%>/css/calendar-win2k-cold-1.css" title="win2k-cold-1" />
<link rel="alternate stylesheet" type="text/css" media="all" href="<%=request.getContextPath()%>/css/calendar-win2k-cold-2.css" title="win2k-cold-2" />
<link rel="alternate stylesheet" type="text/css" media="all" href="<%=request.getContextPath()%>/css/calendar-system.css" title="system" />

<!-- import the calendar script -->
<script type="text/javascript" src="<%=request.getContextPath()%>/lang/calendar.js"></script>

<!-- import the language module -->
<script type="text/javascript" src="<%=request.getContextPath()%>/lang/calendar-en.js"></script>
<html>
    <head>
         <link href="<%=request.getContextPath()%>/css/screen.css" rel="stylesheet" type="text/css">
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<SCRIPT>
setUrlImage('/javascript/dhtmlgoodies_calendar/images/');
</SCRIPT>
      <script>
	var lin1=1;
	function agregarItem1(nomDiv){
		f=document.forms[0];
		var value0=f.Tid_institucionE1.value;
		var value1=f.Tnid_institucionE1.value;
		var value2=f.Tnum_rucE1.value;
		var value3=f.Ttxt_tipo_institucionE1.value;

		if(value1=='')
		{
			alert('Seleccione un Institucion  Ejecutora ,gracias');
			f.Tnid_institucionE1.focus();
		}else if(value2==''){
			alert('Ingrese Numero de RUC, gracias');
			f.Tnum_rucE1.focus();
		}else if(value3==''){
			alert('Seleccione un Tipo ,gracias');
			f.Ttxt_tipo_institucionE1.focus();
		}else{

		 var strHtml;
		 var returnObj = document.getElementById(nomDiv).innerHTML;


		 if (nomDiv=='div1'){

            lin1++;
            strHtml ='<tr id="h'+lin1+'">';

			 strHtml+='<td >';
			 strHtml+='<input type="hidden"   name="id_institucionE" value="'+value0+'" id="id_institucionE'+lin1+'"  >';
			 strHtml+='<input type="text" size="70" readonly="readonly" name="nid_institucionE" value="'+value1+'" id="nid_institucionE'+lin1+'"  class="input_text_combo"  >';
			 strHtml+='</td>';

			 strHtml+='<td class="tituloFormulario">';
			strHtml+='<input type="text" size="15" readonly="readonly" name="num_rucE" id="num_rucE'+lin1+'" value="'+value2+'"  class="input_text_combo" >';
			strHtml+='</td>';

			strHtml+='<td>';
			strHtml+='<input type="text" size="40" readonly="readonly" name="txt_tipo_institucionE" id="txt_tipo_institucionE'+lin1+'" value="'+value3+'"  class="input_text_combo" >';
			strHtml+='</td>';



			strHtml+='<td>';
			strHtml+='<a href="javascript:retirarItem(\'h'+lin1+'\',\'nid_institucionE'+lin1+'\');" title="Eliminar Fila"><img src="/img/generales/tacho.gif" border="0" /></a>';
			strHtml+='</td>';
			strHtml+='</tr>';

		 }

 		returnObj=returnObj.slice(0,-16)+strHtml;
		returnObj+="</tbody></table>";
		document.all[nomDiv].innerHTML=returnObj;

		f.Tid_institucionE1.value
		f.Tnid_institucionE1.value="";
		f.Tnum_rucE1.value="";
		f.Ttxt_tipo_institucionE1.value="";
		}
 }

 	var lin2=1;
	function agregarItem2(nomDiv){
		f=document.forms[0];
		var value0=f.Tid_institucionR1.value;
		var value1=f.Tnid_institucionR1.value;
		var value2=f.Tnum_rucR1.value;
		var value3=f.Ttxt_tipo_institucionR1.value;

		if(value1=='')
		{
			alert('Seleccione un Institucion  Responsable ,gracias');
			f.Tnid_institucionR1.focus();
		}else if(value2==''){
			alert('Ingrese Numero de RUC, gracias');
			f.Tnum_rucR1.focus();
		}else if(value3==''){
			alert('Seleccione un Tipo ,gracias');
			f.Ttxt_tipo_institucionR1.focus();
		}else{

		 var strHtml;
		 var returnObj = document.getElementById(nomDiv).innerHTML;


		 if (nomDiv=='div2'){

            lin2++;
            strHtml ='<tr id="g'+lin2+'">';

			 strHtml+='<td>';
			 strHtml+='<input type="hidden"   name="id_institucionR" value="'+value0+'" id="id_institucionR'+lin2+'"  >';
			 strHtml+='<input type="text" size="70" readonly="readonly" name="nid_institucionR" value="'+value1+'" id="nid_institucionR'+lin2+'"  class="input_text_combo"  >';
			 strHtml+='</td>';

			 strHtml+='<td class="tituloFormulario">';
			strHtml+='<input type="text" size="15" readonly="readonly" name="num_rucR" id="num_rucR'+lin2+'" value="'+value2+'"  class="input_text_combo" >';
			strHtml+='</td>';

			strHtml+='<td>';
			strHtml+='<input type="text" size="30" readonly="readonly" name="txt_tipo_institucionR" id="txt_tipo_institucionR'+lin2+'" value="'+value3+'"  class="input_text_combo" >';
			strHtml+='</td>';



			strHtml+='<td>';
			strHtml+='<a href="javascript:retirarItem(\'g'+lin2+'\',\'nid_institucionR'+lin2+'\');" title="Eliminar Fila"><img src="/img/generales/tacho.gif" border="0" /></a>';
			strHtml+='</td>';
			strHtml+='</tr>';

		 }

 		returnObj=returnObj.slice(0,-16)+strHtml;
		returnObj+="</tbody></table>";
		document.all[nomDiv].innerHTML=returnObj;

		f.Tid_institucionR1.value="";
		f.Tnid_institucionR1.value="";
		f.Tnum_rucR1.value="";
		f.Ttxt_tipo_institucionR1.value="";
		}
 }



	function buscarInstitucionEjecutora()
	{
	var w=800;
	var h=500;
	var url="/pages/informeAnual/mantenimiento/ayuda/busquedaInstitucionEjecutora.jsp";
	popitup2(url,'',h,w);

	}

	function buscarInstitucionResponsable()
	{
	var w=800;
	var h=500;
	var url="/pages/informeAnual/mantenimiento/ayuda/busquedaInstitucionResponsable.jsp";
	popitup2(url,'',h,w);
	}

	 function grabarIdentificacion(value,fec_inicio,fec_termino){
                f=document.forms[0];
		var fecha1=f.fec_inicio.value;
		var fecha2=f.fec_termino.value;
                var  diainicio,mesinicio,anoinicio;
                var  diafin,mesfin,anofin;
                diainicio = fecha1.substring(0, 2);
                mesinicio = fecha1.substring(3, 5);
                anoinicio =fecha1.substring(6, 11);
                diafin = fecha2.substring(0, 2);
                mesfin = fecha2.substring(3, 5);
               anofin =fecha2.substring(6, 11);

          if(  (   mesinicio>mesfin  )||(   mesinicio<mesfin   &&  anoinicio> anofin) ||(   diainicio > diafin) ){


            alert("La Fecha de Inicio es Mayor que La  Fecha de Fin ");

          }else{



		document.forms[0].tab.value=value;
	 	document.forms[0].metodo.value='grabarIdentificacion';
		document.forms[0].submit();
                }

	 }


	  function eliminarEjecutora(institucion,value){

		document.forms[0].tab.value=value;
		document.forms[0].codigoInstitucionEliminar.value=institucion;
	 	document.forms[0].metodo.value='eliminarEjecutora';
		document.forms[0].submit();
	 }

	 function eliminarResponsable(institucion,value){

		document.forms[0].tab.value=value;
		document.forms[0].codigoInstitucionEliminar.value=institucion;
	 	document.forms[0].metodo.value='eliminarResponsable';
		document.forms[0].submit();

	 }

	 function ayudaTipoCambio(){
	 	var w=800;
		var h=400;
		var url="/pages/informeAnual/mantenimiento/ayuda/tipoCambio.jsp";
		popitup2(url,'',h,w);

	 }


</script>





    </head>
    <body>

    <center>
       <form  name="form">

           <table width="90%" cellpadding="0" cellspacing="0" align="center">
           	<tr>
       		<td width="82%"></td>
       		<td width="6%"></td>
       		<td width="6%"><input type="button" class="boton" value="Grabar" onclick="javascript:grabarIdentificacion('1');" /></td>
       		<td width="6%"><input type="button" class="boton" value="Regresar" onclick="javascript:regresarPresentacion();" /></td>
        	</tr>
        	<tr>
       		<td colspan="4"><img src="/image/linea_azul.gif" width=100% height=1 /></td>
        	</tr>
	   </table>
       <br/>

       <div id="div1" style="visibility:visible;display:block;">
       <table width="90%" align="center">
			<tr>
			<td class="tituloFormulario4">
			Elija la institucion completando sus datos asociados y luego presione el boton "Registrar Inst.Ejecutora" para seleccionar.
			</td>
			</tr>
		</table>
		<br/>
 <TABLE WIDTH="90%" align="center"  >
            <TR id="h1">
                <TD class="tituloFormulario">INSTITUCI&Oacute;N EJECUTORA (*)<BR/>
                <input type="hidden" name="Tid_institucionE" id="Tid_institucionE1"/>
                <input type="text" name="Tnid_institucionE" size="60" id="Tnid_institucionE1" class="input_text_combo" readonly="readonly" />
                <a href="javascript:buscarInstitucionEjecutora();">
                <img src="<c:url value='/image/find.gif'/>" border="0" />
                </a>
                </TD>
                <TD class="tituloFormulario">RUC: (*)<BR/>
                <input  size="15" maxlength="11" class="input_text_combo" type="text" onkeypress="javascript:validarSoloNumeros();" name="Tnum_rucE" id="Tnum_rucE1" value="" />
                </TD>

                <TD class="tituloFormulario" >TIPO INSTITUCION: (*)<br/>
                <select name="Ttxt_tipo_institucionE" id="Ttxt_tipo_institucionE1" class="input_text_combo">
                        <option value="">-----------------Seleccionar-------------------</option>
                        <option value="Agencia de cooperacion internacional"> Agencia de cooperaci&oacute;n internacional</option>
                        <option value="Asociaciones extranjeras">Asociaciones extranjeras</option>
                        <option value="Asociaciones privadas">Asociaciones privadas</option>
                        <option value="Centro educativo extranjero">Centro educativo extranjero</option>
                        <option value="Centro educativo nacional">Centro educativo nacional</option>
                        <option value="Consulados con sede en el Peru;">Consulados con sede en el Per&uacute;</option>
                        <option value="Cooperativas">Cooperativas</option>
                        <option value="Embajadas con sede en el Peru;">Embajadas con sede en el Per&uacute;</option>
                        <option value="Fondo de contravalor">Fondo de contravalor</option>
                        <option value="Fundaciones extranjeras">Fundaciones extranjeras</option>
                        <option value="Fundaciones nacionales">Fundaciones nacionales</option>
                        <option value="Gobierno central">Gobierno central</option>
                        <option value="Gobierno regional">Gobierno regional</option>
                        <option value="Gobierno local">Gobierno local</option>
                        <option value="Gobierno extranjero">Gobierno extranjero</option>
                        <option value="ONG extranjera (ENIEX)">ONG extranjera (ENIEX)</option>
                        <option value="ONGD nacional">ONGD nacional</option>
                        <option value="Organismo internacional">Organismo internacional</option>
                        <option value="Organismo Público Descentralizado">Organismo Público Descentralizado</option>
                        <option value="Organizacion religiosa">Organizaci&oacute;n religiosa</option>
                        <option value="Otra institucion extranjera">Otra instituci&oacute;n extranjera</option>
                        <option value="Otra institucion nacional">Otra instituci&oacute;n nacional</option>

                    </select>
                </TD>
                <td><br/><INPUT TYPE="button" class="boton"  VALUE="Registrar Inst. Ejecutora" onclick="javascript:agregarItem1('div1');">
                </td>
            </TR>

            <TR>
                <TD ></TD>
                <TD ></TD>
                <TD ></TD>
                <td ><a href="javascript:eliminarEjecutora('2','1');">
                <img src="/img/generales/tacho.gif" border="0" /></a></td>
            </TR>
	   </table>

         </br>




         <!------------------------   parte 2 identificacion     -------------------------->

         <table width="90%" align="center">
			<tr>
			<td class="tituloFormulario4">
				Elija la instituci&oacute;n completando sus datos asociados y luego presione el bot&oacute;n "Registrar Inst.Responsable" para seleccionar.
			</td>
			</tr>
		</table>
		<br/>

		<div id="div2">
        <TABLE WIDTH="90%" align="center"  >
            <TR id="g1">
                <TD class="tituloFormulario">INSTITUCI&Oacute;N RESPONSABLE:(*)<BR/>
                <input type="hidden" name="Tid_institucionR" id="Tid_institucionR1"/>
                <input type="text" name="Tnid_institucionR" size="60" id="Tnid_institucionR1" class="input_text_combo" readonly="readonly" />
                <a href="javascript:buscarInstitucionResponsable();">
                <img src="/image/find.gif" border="0" />
                </a>
                </TD>
                <TD class="tituloFormulario">RUC: (*)<BR/>
                	<input size="15" maxlength="11"  class="input_text_combo" onkeypress="javascript:validarSoloNumeros();" type="text" name="Tnum_rucR" id="Tnum_rucR1" />
                </TD>

                <TD class="tituloFormulario">TIPO INSTITUCION: (*)<br/>
                <select name="Ttxt_tipo_institucionR" class="input_text_combo" id="Ttxt_tipo_institucionR1">
                    <option value="">-----------------Seleccionar-------------------</option>
                    <option value="Agencia de cooperacion internacional"> Agencia de cooperaci&oacute;n internacional</option>
                    <option value="Asociaciones extranjeras">Asociaciones extranjeras</option>
                    <option value="Asociaciones privadas">Asociaciones privadas</option>
                    <option value="Centro educativo extranjero">Centro educativo extranjero</option>
                    <option value="Centro educativo nacional">Centro educativo nacional</option>
                    <option value="Consulados con sede en el Peru;">Consulados con sede en el Per&uacute;</option>
                    <option value="Cooperativas">Cooperativas</option>
                    <option value="Embajadas con sede en el Peru;">Embajadas con sede en el Per&uacute;</option>
                    <option value="Fondo de contravalor">Fondo de contravalor</option>
                    <option value="Fundaciones extranjeras">Fundaciones extranjeras</option>
                    <option value="Fundaciones nacionales">Fundaciones nacionales</option>
                    <option value="Gobierno central">Gobierno central</option>
                    <option value="Gobierno regional">Gobierno regional</option>
                    <option value="Gobierno local">Gobierno local</option>
                    <option value="Gobierno extranjero">Gobierno extranjero</option>
                    <option value="ONG extranjera (ENIEX)">ONG extranjera (ENIEX)</option>
                    <option value="ONGD nacional">ONGD nacional</option>
                    <option value="Organismo internacional">Organismo internacional</option>
                    <option value="Organismo Público Descentralizado">Organismo Público Descentralizado</option>
                    <option value="Organizacion religiosa">Organizaci&oacute;n religiosa</option>
                    <option value="Otra institucion extranjera">Otra instituci&oacute;n extranjera</option>
                    <option value="Otra institucion nacional">Otra instituci&oacute;n nacional</option>
		    	</select>
                </TD>
                <td ><br/><INPUT TYPE="button" class="boton"  VALUE="Registrar Inst. Responsable" onclick="javascript:agregarItem2('div2');" />
                </td>
            </TR>
           
            <TR>
                <TD >hhhhhh</TD>
                <TD >hhhhhh</TD>
                <TD >hhhhhh</TD>
                <td ><a href="javascript:eliminarResponsable('2','1');">
                <img src="/img/generales/tacho.gif" border="0" /></a></td>
            </TR>
	        <     </table>
        </div>


          <!------------------------------------------------------------------------------->


        &nbsp<br/>

        <TABLE WIDTH="90%" align="center" >
            <TR>
                <TD class="tituloFormulario" >TITULO DE PROYECTO: (*)<BR>
                <input size="80" type="text" readonly="readonly" class="input_text_combo" value="" name="txt_proyecto"  />
                </TD>

                <TD class="tituloFormulario">TIPO: (*)<BR>
                <select class="input_text_combo" name="txt_tipo_proyecto">
                    <option value="">----------Seleccionar----------</option>
                    <option value="3" selected  >Actividad</option>
                    <option value="1"  >Programa</option>
                    <option value="2"  >Proyecto</option>
                </select>
                </TD>
                <td></td>
            </TR>

            <TR>
                <TD class="tituloFormulario">SIGLAS:<BR>
                	<input size="80" class="input_text_combo" maxlength="80" value=""  type="text" name="txt_proyecto_sigla"  onKeyUp="javascript: this.value=this.value.toUpperCase();"/>
                </TD>
                <TD class="tituloFormulario">CODIGO SNIP:<br/>
                	<input size="15" maxlength="20" type="text" value="" class="input_text_combo" name="cid_snip" />
                </TD>
                <TD class="tituloFormulario">SITUACION DEL PROYECTO: (*)<br/>
                <select name="txt_situacion_proyecto" class="input_text_combo">
                    <option value="">----------Seleccionar---------</option>
                    <option value="En ejecucion"  selected  >En ejecuci&oacute;n</option>
                   <option value="En ejecucion" >En ejecuci&oacute;n</option>
                   <option value="En ejecucion" >En ejecuci&oacute;n</option>
                   <option value="En ejecucion" >En ejecuci&oacute;n</option>
                </select>
                </TD>
            </TR>

            <TR>
                <TD class="tituloFormulario">PROGRAMA CONTENEDOR:<br>
                	<input size="80" type="text" class="input_text_combo" name="txt_programa" value="" />
                </TD>
                <TD class="tituloFormulario" >FEC. INICIO: (*)<BR/>
                	<input size="12" class="input_text_combo" value="" readonly="readonly" type="text" name="fec_inicio" />
                	<input type="button"  value="Cal" class="boton" onclick="displayCalendar(document.forms[0].fec_inicio,'dd/mm/yyyy',this)" />
          	  	</TD>
                <TD class="tituloFormulario">
               </TD>
            </TR>

            <TR>
                <TD class="tituloFormulario">MONEDA DEL CONVENIO: (*) &nbsp;&nbsp;&nbsp; <a href="javascript:ayudaTipoCambio();">TIPO CAMBIO<img src="/image/find.gif" border="0" /></a><BR>
                <select name="txt_moneda" class="input_text_combo">
                    <option value="">--Seleccionar---</option>
                    <option value="USDolar"  selected  >USD&oacute;lar</option>
                    <option value="USDolar"   >USD&oacute;lar</option>
                    <option value="USDolar"  selected  >USD&oacute;lar</option>
                    <option value="USDolar"  selected  >USD&oacute;lar</option>
                    <option value="USDolar"  selected  >USD&oacute;lar</option>
                </select>
                </TD>
                <td colspan="2" class="tituloFormulario">
                	FEC. FIN: (*)<BR/>
                <input size="12" class="input_text_combo" type="text" value="" name="fec_termino" readonly="readonly" />
                	<input type="button"  value="Cal" class="boton" onclick="displayCalendar(document.forms[0].fec_termino,'dd/mm/yyyy',this)" />
                </td>
            </TR>


        </TABLE>
        <br/>
        <table width="90%" align="center">
        	<tr>
            	<td class="tituloFormulario4">
                (*) Campos obligatorios
            	</td>
        	</tr>
        </table>
        <table width="90%" align="center">
        	<tr>
            	<td >
              ffff
            	</td>
            </tr>
        </table>

        <table width="90%" cellpadding="0" cellspacing="0" align="center">
       	<tr>
       		<td width="82%"></td>
       		<td width="6%"></td>
       		<td width="6%"><input type="button" class="boton" value="Grabar" onclick="javascript:grabarIdentificacion('','','1');" /></td>
       		<td width="6%"><input type="button" class="boton" value="Regresar" onclick="javascript:regresarPresentacion();" /></td>
       	</tr>
       	<tr>
       		<td colspan="4"><img src="/image/linea_azul.gif" width=100% height=1 /></td>
       	</tr>
		</table>










       </form>







        </center>






    </body>
</html>
