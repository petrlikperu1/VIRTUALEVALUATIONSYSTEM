
<%@page  import="java.util.ArrayList" %>
<%@page  import="BEAN.*" %>

  

<%!

ArrayList<TemaBean> lista=null;

%>


<LINK href="<%=request.getContextPath()%>/css/screen.css" rel="stylesheet" type="text/css">
<script src="http://cdn.ckeditor.com/4.5.6/standard-all/ckeditor.js"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Bsuqueda Institucion Ejecutora</title>
</head>
<script>

	 function pulsar(e,obj) {
 	    tecla=(document.all) ? e.keyCode : e.which;
 	 	if(tecla==13){
   			buscarInstitucionEjecutora();
		}
	}

	 function buscarInstitucionEjecutora(){
	 	document.forms[0].metodo.value='buscarInstitucionEjecutora';
		document.forms[0].submit();
	 }

	 function regresar(codigoInstitucion,descripcionInstitucion)
	{
                var contenido=editor2.getData();
          var returnObj = window.opener.document.getElementById('txtpregunta').innerHTML;
	//window.opener.document.getElementById('Tid_descripcionE1').tvalue=contenido;
	//window.opener.document.forms[0].elements['Tnid_descripcionE1'].value=contenido;
	
        
        returnObj=returnObj.slice(0,-16)+contenido;
		
		 window.opener.document.all['txtpregunta'].innerHTML=returnObj;
        
        
        window.close();
       // self.close();

	}
</script>
<body>
<form  name="form" >
	<input type="hidden" name="metodo"/>
        <center>
	<table>
		<tr>
			<td class="tituloTabla" colspan="3">Busqueda de Productos</td>
		</tr>
		<tr>
			<td class="tituloFormulario">Descripcion:</td>
			<td><input type="text"  name="descripcionEjecutora" class="input_text_combo" value=""  size="50" onKeyDown="return pulsar(event,this);" /></td>
			<td><input type="button" class="boton" value="Buscar" onclick="javascript:buscarInstitucionEjecutora();"/></td>
		</tr>
	</table>
	<br/><br/>

<textarea cols="10" id="editor1" name="editor1" rows="10" >
        </textarea>
<input   type="button"  value="OK" onclick="Ajax('<%=request.getContextPath()%>','Logica',1)">
        <span id="contenido">
	</span>
	<script>
		var editor2 = CKEDITOR.replace( 'editor1', {
			extraPlugins: 'mathjax',
			mathJaxLib: 'http://cdn.mathjax.org/mathjax/2.2-latest/MathJax.js?config=TeX-AMS_HTML',
			height: 320
		} );

		if ( CKEDITOR.env.ie && CKEDITOR.env.version == 8 ) {
			document.getElementById( 'ie8-warning' ).className = 'tip alert';
		}
                
                
                
                
                
	</script>
  <div align="center">
 <%
      lista=(ArrayList<TemaBean>)request.getAttribute("listaTema");
     
        %>
        <table>
            <tr>
                <td>Codigo</td>
                <td>Nombre</td>
            </tr>
        <%  for(TemaBean    obj:lista)
        {            
        %>
 
            <tr>
                <td><a href = "javascript:regresar('<%=obj.getCODTEMA()%>','<%=obj.getNOMBTEMA()%>');">  <%=obj.getCODTEMA()%></a></td>
                <td><%=obj.getNOMBTEMA()%></td>
            </tr>
        
        
      <% } %>
        </TABLE>
  </div>
    </center>
</form>
</body>
</html>

 
	         	
		 