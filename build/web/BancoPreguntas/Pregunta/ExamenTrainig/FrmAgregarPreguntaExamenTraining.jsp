
<%!    
   String  contenido; 
 %>

<%     
  contenido=(String) request.getAttribute("contenido");   
 %> 
<LINK href="<%=request.getContextPath()%>/css/screen.css" rel="stylesheet" type="text/css">
<script src="http://cdn.ckeditor.com/4.5.6/standard-all/ckeditor.js"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Agregar Pregunta</title>
</head>
        <script>
                 function regresar()
                 {
                         var contenido=editor2.getData();
                         window.opener.document.getElementById('txtpregunta1').innerHTML='';
                         window.opener.document.getElementById('txtpregunta1').value=contenido;	  
                         window.opener.document.getElementById('txtpregunta').innerHTML='';    
                         var returnObj2 = window.opener.document.getElementById('txtpregunta').innerHTML;   
                            returnObj2=returnObj2.slice(0,-16)+contenido;		
                            window.opener.document.all['txtpregunta'].innerHTML=returnObj2;  
                            window.close();     
                 }
        </script>
    <body>
        <center>
            <table width="100%">
                    <tr>
                            <td class="tituloTabla" colspan="3">Agregar Pregunta</td>
                    </tr>                  
            </table>
            <table>
                <tr>
                    <td>
                        <textarea cols="10" id="editor1" name="editor1" rows="10" ></textarea>
                    </td> 
                </tr>
            </table>
            <button  class="boton" onclick="regresar()" >Adicionar  Pregunta</button> 
        </center>
   
	<script>
		var editor2 = CKEDITOR.replace( 'editor1', {
			extraPlugins: 'mathjax',
			mathJaxLib: 'http://cdn.mathjax.org/mathjax/2.2-latest/MathJax.js?config=TeX-AMS_HTML',
			height: 320
		} );
		if ( CKEDITOR.env.ie && CKEDITOR.env.version == 8 ) 
                {
			document.getElementById( 'ie8-warning' ).className = 'tip alert';
		}
	</script>
 
</body>
</html>

 
	         	
		 