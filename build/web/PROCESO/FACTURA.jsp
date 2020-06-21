
<html >
<!-- $Id: index.html,v 1.15 2005/03/05 14:38:10 mishoo Exp $ -->

<head>
<meta http-equiv="content-type" content="text/xml; charset=utf-8" />
<title>The Coolest DHTML Calendar - Online Demo</title>
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
<script type="text/javascript" src="<%=request.getContextPath()%>/lang/calendar-es.js"></script>

<LINK href="<%=request.getContextPath()%>/css/screen.css" rel="stylesheet" type="text/css" >
<link href="<%=request.getContextPath()%>/javascript/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">

  <style>
    body {font-family:verdana;font-size:10px}
    textarea,input {background:#FFF0FF;}
   </style>

<script src="<%=request.getContextPath()%>/javascript/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
	<script src="<%=request.getContextPath()%>/javascript/funciones.js"></script>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<script>
setUrlImage('<%=request.getContextPath()%>/javascript/dhtmlgoodies_calendar/images/');
</script>
<script type="text/javascript">

     function grabarMarcoLogico(value){
	 	document.forms[0].tab.value=value;
	 	document.forms[0].metodo.value='grabarMarcoLogico';
		document.forms[0].submit();
	 }

	 function grabarResultado(value){
	 var f=document.forms[0];
	 	if(f.resulObjetivo.value=='')
	 	{
	 		alert('Ingrese el objetivo del resultado');
	 		f.resulObjetivo.focus();
	 		return;
	 	}
	 	if(f.resulIndicador.value=='')
	 	{
	 		alert('Ingrese el indicador del resultado');
	 		f.resulIndicador.focus();
	 		return;
	 	}
	 	if(f.resulFuenteVerificacion.value=='')
	 	{
	 		alert('Ingrese la fuente de verificacion del resultado');
	 		f.resulFuenteVerificacion.focus();
	 		return;
	 	}
	 	if(f.resulSupuesto.value=='')
	 	{
	 		alert('Ingrese el supuesto del resultado');
	 		f.resulSupuesto.focus();
	 		return;
	 	}if(document.getElementById("actObjetivo1").value==''||document.getElementById("actIndicador1").value==''||document.getElementById("actFuentesVerificacion1").value==''||document.getElementById("actSupuesto1").value==''){
			alert('Debe ingresar al menos una actividad , gracias');
			document.getElementById("actObjetivo1").focus();
			return;
	 	}else{
	 	document.forms[0].tab.value=value;
	 	document.forms[0].metodo.value='grabarResultadoActividad';
		document.forms[0].submit();
		}
	 }

	 function nuevoResultado(value){
		document.forms[0].tab.value=value;
	 	document.forms[0].metodo.value='nuevoResultado';
		document.forms[0].submit();
	 }

	 function grabarActividades(value){
		document.forms[0].tab.value=value;
	 	document.forms[0].metodo.value='grabarActividades';
		document.forms[0].submit();
	 }

	 function grabarOGP(value){
	 	document.forms[0].tab.value=value;

	 	document.forms[0].metodo.value='grabarOGP';
		document.forms[0].submit();

	 }

 function calcularTotal(num,num2,num3){
              var   cantidad ,precioUnit;

                cantidad  = document.getElementById(num).value;
                precioUnit  = document.getElementById(num3).value;

              var  total=0, c=0 , p=0;


                   c=parseInt(cantidad);
                   p=parseFloat(precioUnit);
                   total=c*p;
                   if(""+ total=="NaN"){
                    document.getElementById(num2).value="0";
                   }else{

                       document.getElementById(num2).value=""+ total;
                   }


 }

	 var linML=1;
	 function agregarItemMarcoLogico(nomDiv)
	 { var  canti;

 		 var strHtml;
		 var returnObj = document.getElementById(nomDiv).innerHTML;
                
            

		 if (nomDiv=='divMarcoLogico'){

            linML++;
            strHtml ='<tr id="z'+linML+'">';
           
          


             strHtml+='<td colspan="1" align="center"  class="tituloFormulario">';
		        strHtml+='<input   type="text" class="input_text" size="15"  name="cantidad1"  id="cantidad1'+linML+'"  onkeypress="javascript:validarSoloNumeros();" onKeyUp="calcularTotal(\'cantidad1'+linML+'\',\'valorventa'+linML+'\',\'preciounitario'+linML+'\')">';

			strHtml+='</td>'

			 strHtml+='<td colspan="40" align="center" class="tituloFormulario">';
			  strHtml+='<input type="text"  class="input_text" readonly="readonly"  name="descripcion"  id="descripcion'+linML+'" maxlength="15" size="40" >';

			strHtml+='</td>';

			strHtml+='<td colspan="1" align="center" class="tituloFormulario">';
			  strHtml+='<input   type="text"  class="input_text" size="15"   name="preciounitario"  id="preciounitario'+linML+'" onkeypress="javascript:calcularTotal(\'cantidad1'+linML+'\',\'valorventa'+linML+'\',\'preciounitario'+linML+'\')"   onKeyUp="calcularTotal(\'cantidad1'+linML+'\',\'valorventa'+linML+'\',\'preciounitario'+linML+'\')">';

			strHtml+='</td>';

                        strHtml+='<td colspan="1" align="center" class="tituloFormulario">';
			 strHtml+='<input   type="text" class="input_text"  size="15"  name="valorventa"  id="valorventa'+linML+'"  readonly="readonly" >';

			strHtml+='</td>';

			strHtml+='<td  align="center">';
			strHtml+='<a href="javascript:retirarItem(\'z'+linML+'\',\'actObjetivo'+linML+'\');" title="Eliminar Fila"><img src="<%=request.getContextPath()%>/img/generales/tacho.gif" border="0" /></a>';
			strHtml+='</td>';
			strHtml+='</tr>';


		 }

 		returnObj=returnObj.slice(0,-16)+strHtml;
		returnObj+="</tbody></table>";
		document.all[nomDiv].innerHTML=returnObj;

		}


	function  retirarItem(fila,campo){

	  var fila=document.getElementById(fila);
	  fila.style.display = "none";
	  var obj=document.getElementById(campo);


	 }


	  function regresar(cod1,cod2,value)
	{

	     document.forms[0].tab.value=value;
	       document.forms[0].nid_proyecto1.value=cod1;
	         document.forms[0].nid_result1.value=cod2;

	 	 document.forms[0].metodo.value='eliminarResultadoActividadML2000';
		 document.forms[0].submit();



	}



var oldLink = null;
// code to change the active stylesheet
function setActiveStyleSheet(link, title) {
  var i, a, main;
  for(i=0; (a = document.getElementsByTagName("link")[i]); i++) {
    if(a.getAttribute("rel").indexOf("style") != -1 && a.getAttribute("title")) {
      a.disabled = true;
      if(a.getAttribute("title") == title) a.disabled = false;
    }
  }
  if (oldLink) oldLink.style.fontWeight = 'normal';
  oldLink = link;
  link.style.fontWeight = 'bold';
  return false;
}

// This function gets called when the end-user clicks on some date.
function selected(cal, date) {
  cal.sel.value = date; // just update the date in the input field.
  if (cal.dateClicked && (cal.sel.id == "sel1" || cal.sel.id == "sel3"))
    // if we add this call we close the calendar on single-click.
    // just to exemplify both cases, we are using this only for the 1st
    // and the 3rd field, while 2nd and 4th will still require double-click.
    cal.callCloseHandler();
}

// And this gets called when the end-user clicks on the _selected_ date,
// or clicks on the "Close" button.  It just hides the calendar without
// destroying it.
function closeHandler(cal) {
  cal.hide();                        // hide the calendar
//  cal.destroy();
  _dynarch_popupCalendar = null;
}

// This function shows the calendar under the element having the given id.
// It takes care of catching "mousedown" signals on document and hiding the
// calendar if the click was outside.
function showCalendar(id, format, showsTime, showsOtherMonths) {
  var el = document.getElementById(id);
  if (_dynarch_popupCalendar != null) {
    // we already have some calendar created
    _dynarch_popupCalendar.hide();                 // so we hide it first.
  } else {
    // first-time call, create the calendar.
    var cal = new Calendar(1, null, selected, closeHandler);
    // uncomment the following line to hide the week numbers
    // cal.weekNumbers = false;
    if (typeof showsTime == "string") {
      cal.showsTime = true;
      cal.time24 = (showsTime == "24");
    }
    if (showsOtherMonths) {
      cal.showsOtherMonths = true;
    }
    _dynarch_popupCalendar = cal;                  // remember it in the global var
    cal.setRange(1900, 2070);        // min/max year allowed.
    cal.create();
  }
  _dynarch_popupCalendar.setDateFormat(format);    // set the specified date format
  _dynarch_popupCalendar.parseDate(el.value);      // try to parse the text in field
  _dynarch_popupCalendar.sel = el;                 // inform it what input field we use

  // the reference element that we pass to showAtElement is the button that
  // triggers the calendar.  In this example we align the calendar bottom-right
  // to the button.
  _dynarch_popupCalendar.showAtElement(el.nextSibling, "Br");        // show the calendar

  return false;
}








</script>


</head>
<body >

<form  method="get" action="<%=request.getContextPath()%>/Cargar">


<input type="hidden" name="nid_proyecto1"  />
      <input type="hidden" name="nid_result1"  />
	   <br/>

       	<BR/>
       	<br/>
       	<br/>
           	<br/>
       	<br/>
         <center>
        <table align="center"width="50%" border="0" class="FondoTabla">
    <tr class="tituloTabla">
        <td >FACTURACION DE VENTAS</td>
    </tr>
  </table>
  <br>

  <table width="50%" border="0" align="center" class="FondoTabla">
    <tr class="tituloFormulario">
      <td >Numero Factura :</td>
      <td ><input type="text" size="15"   name="nf" class="input_text"  >

</td>
    </tr>
    <tr class="tituloFormulario">
      <td >Nombre  :</td>
      <td ><input type="text" size="20"   name="nombre" class="input_text"  ></td>
    </tr>
    <tr class="tituloFormulario">
      <td >Apellidos  :</td>
      <td ><input type="text" size="30"   name="apellido" class="input_text"  ></td>
    </tr>
     <tr class="tituloFormulario">
      <td >Fecha Emision :</td>
      <td ><input type="text"    class="input_text" name="date3" id="sel3" size="30" ><img src="<%=request.getContextPath()%>/imagenes/img.gif"  width="20" height="20" onclick="return showCalendar('sel3', '%d/%m/%Y');">





      </td>
    </tr>

  </table>

       	<div id='divMarcoLogico' style="visibility:visible;display:block;">
       	<table  align="center"   width="50%" border="0" class="FondoTabla">
       	 	<tr class="tituloTabla" >
       			<td colspan="1"  align="center" >CANTIDAD </td>
                        <td colspan="40"  align="center">DESCRIPCION </td>
                        <td colspan="1" align="center">P.UNITARIO </td>
                        <td colspan="1"  align="center">VALOR DE VENTA</td>
                        <td colspan="1"  align="center">&nbsp;</td>
       		</tr>
       		<tr >
                    <td colspan="1" align="center"  ><input type="text" size="15" readonly="readonly"  name="n1" class="tituloTabla" ></td>
                    <td colspan="40"  align="center"><input type="text" size="40"  name="n2" readonly="readonly"   class="tituloTabla"></td>
                        <td colspan="1" align="center"><input type="text" size="15"  name="n3" readonly="readonly" class="tituloTabla"></td>
                        <td colspan="1" align="center"><input type="text" size="15"  name="n4" readonly="readonly" class="tituloTabla"></td>
       			<td colspan="1" align="center"><input type="button" class="boton" value="Agregar" onclick="javascript:agregarItemMarcoLogico('divMarcoLogico')" /></td>

       		</tr>

       	</table>
       	</div>
</center>
        </form>







</body></html>
