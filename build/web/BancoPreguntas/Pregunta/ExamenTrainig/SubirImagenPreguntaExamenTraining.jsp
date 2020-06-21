
<html>
    <head>
        <script src="<%=request.getContextPath()%>/jquery/jquery-1.8.2.js"></script>
        <script src="<%=request.getContextPath()%>/jquery/jquery.ajaxfileupload.js"></script>
        <script src="<%=request.getContextPath()%>/js/javascript.js"></script>
        <link href="<%=request.getContextPath()%>/css/screen.css" rel="stylesheet" type="text/css"> 
        <title>Subir Imagen</title>
         <script>
            
               $(document).ready(function() {
                  
	       $('input[type="file"]').ajaxfileupload({
		'action' : '<%=request.getContextPath()%>/UploadFilePregunta',
		'onComplete' : function(response) {
			$('#upload').hide();
			$('#message').show();
			
			var statusVal = JSON.stringify(response.status);
                           
			if(statusVal == "false")
			{
				$("#message").html("<font color='red'>"+ JSON.stringify(response.message) +" </font>");
                              
			}	
			if(statusVal == "true")
			{       // <img src="<%=request.getContextPath()%>/imagenes/BARRAVILLARREALINICIO.png" width="170" height="170" /> 
				$("#message").html("<font color='red'><b>Imagen subida !!!!</b> </font>");
                               
                               var returnObj3 = window.opener.document.getElementById('divimagenes').innerHTML;   
                               returnObj3=returnObj3.slice(0,-16)+"<font color='red'><b>Imagen subida !!!!</b> </font>";		
                               window.opener.document.all['divimagenes'].innerHTML=returnObj3;  
                                 
                               //  window.close()
                                 
			}			
		},
		'onStart' : function() {
			$('#upload').show();
			$('#message').hide();
		}
	        });
               
              });
            
         </script>   
    </head>
<form>
	<div class="centered">
          <center>
            <table  class="FONDOTABLA">
                <tr>
                    <td  class="tituloFormulario">Subir Imagen</td>                    
                </tr> 
                <tr>
                    <td><input type="file" class="boton"  id="file" name="file" /></td>                    
                </tr>
                <tr>
                    <td>
                        <div id="upload" style="display: none;">Subiendo......</div><br>                
		       <div id="message"></div> 
                    </td>
                </tr>
            </table>
          </center>
	</div>
</form>
    
</html>