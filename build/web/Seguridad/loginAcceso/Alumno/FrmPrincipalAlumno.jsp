<%@page   session="true" %>
 <%@page import="BEAN.*"%> 
<%! 
   AlumnoBean  objAlumnoBean=null;
   SemestreBean   objSemestreBean=null;
   String  parametros="";
%>
<%

   objAlumnoBean=(AlumnoBean)session.getAttribute("SESION"); 
   objSemestreBean=(SemestreBean)session.getAttribute("SESIONSEMESTRE");
    parametros="&CODALU="+objAlumnoBean.getCODALU()+"&CODSEMESTRE="+objSemestreBean.getCODSEMESTRE();
 
%>
<html>
  <head>   
              
        <script src="<%=request.getContextPath()%>/js/jquery.js"></script>
        <script src="<%=request.getContextPath()%>/jquery/jquery.ui.draggable.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/jquery/jquery.alerts.js" type="text/javascript"></script>
        <link href="<%=request.getContextPath()%>/css/jquery.alerts.css" rel="stylesheet" type="text/css" media="screen" />
		
      
         <script src="<%=request.getContextPath()%>/js/javascriptAlumno.js"></script>
         <link href="<%=request.getContextPath()%>/css/maquetado.css" rel="stylesheet" type="text/css">  
         <link href="<%=request.getContextPath()%>/css/screen.css" rel="stylesheet" type="text/css">      
         <link href="<%=request.getContextPath()%>/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">       
         <script src="<%=request.getContextPath()%>/jquery-ui/jquery.js"></script>
         <script src="<%=request.getContextPath()%>/jquery-ui/jquery-ui.js"></script>
	 <script src="<%=request.getContextPath()%>/jquery-ui/jquery-dataTables.js"></script>
         <script src="<%=request.getContextPath()%>/jquery-ui/jquery-dataTables-es.js"></script>
         <script type="text/javascript" src="<%=request.getContextPath()%>/jquery/ddaccordion.js"></script>
         <title>VENTANA  PRINCIPAL DEL  SISTEMA VIRTUAL DE  EVALUACION EN LINEA DE LA  UNIVERSIDAD PERUANA SIMON BOLIVAR</title>        
            <script>                                    
                ddaccordion.init({
                headerclass: "submenuheader", //Shared CSS class name of headers group
                contentclass: "submenu", //Shared CSS class name of contents group
                revealtype: "click", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
                mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
                collapseprev: true, //Collapse previous content (so only one open at any time)? true/false 
                defaultexpanded: [], //index of content(s) open by default [index1, index2, etc] [] denotes no content
                onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
                animatedefault: false, //Should contents open by default be animated into view?
                persiststate: true, //persist state of opened contents within browser session?
                toggleclass: ["", ""], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
                togglehtml: ["suffix", "<img src='<%=request.getContextPath()%>/imagenes/plus.gif' class='statusicon' />", "<img src='<%=request.getContextPath()%>/imagenes/minus.gif' class='statusicon' />"], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
                animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
                oninit:function(headers, expandedindices){ //custom code to run when headers have initalized
                        //do nothing
                },
                onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed
                        //do nothing
                }
        })
        
     
              
           // document.oncontextmenu=inhabilitarMenuContextual;      
                 
             function  SubirImagenAlumno()
              {   var url="<%=request.getContextPath()%>/Seguridad/ConfiguracionCuenta/Estudiante/SubirImagen.jsp";                  
                    var posicion_x; 
                    var posicion_y; 
                    var ancho=400;
                    var alto=100;
                    posicion_x=(screen.width/2)-(ancho/2); 
                    posicion_y=(screen.height/2)-(alto/2);                                
                   window.open(url,'popup',"width="+ancho+",height="+alto+",menubar=0,toolbar=0,directories=0,scrollbars=no,resizable=no,left="+posicion_x+",top="+posicion_y+"");
              }
                 
            var  tope=0;
            var identificador=1;
            function   validartopeayuda(n)
            {   switch(parseInt(n.value))
                {
                        case  1:
                        {            tope=0;
                                     identificador=1;
                                     document.getElementById('ayudas2').style.display = "none";  
                                     document.getElementById('ayudas3').style.display = "none";  
                                     break;
                        }
                        case  2:
                        {           identificador=2;
                                    document.getElementById('ayudas2').style.display = "block";	
                                    document.getElementById('ayudas3').style.display = "none";	
                                    tope=1;
                                    break;
                        }
                        case  3:
                        {           identificador=3;
                                    tope=2;	
                                    document.getElementById('ayudas3').style.display = "block";	
                                    document.getElementById('ayudas2').style.display = "none";	
                                    break;
                        }
                }
             }   
                   
                 
        </script>
             
                    
                <style type="text/css">
                   .glossymenu{
                margin: 5px 0;
                padding: 0;
                width: 200px; /*width of menu*/
                border: 1px solid #9A9A9A;
                border-bottom-width: 0;
                }
                .glossymenu a.menuitem{
                background: black url(imagenes/glossyback.jpg) repeat-x bottom left;
                font: bold 14px "Lucida Grande", "Trebuchet MS", Verdana, Helvetica, sans-serif;
                color: white;
                display: block;
                position: relative; /*To help in the anchoring of the ".statusicon" icon image*/
                width: auto;
                padding: 4px 0;
                padding-left: 10px;
                text-decoration: none;
                }
                .glossymenu a.menuitem:visited, .glossymenu .menuitem:active{
                color: white;
                }

                .glossymenu a.menuitem .statusicon{ /*CSS for icon image that gets dynamically added to headers*/
                position: absolute;
                top: 5px;
                right: 5px;
                border: none;
                }
                .glossymenu a.menuitem:hover{
                background-image: url(imagenes/glossyback2.gif);
                }
                .glossymenu div.submenu{ /*DIV that contains each sub menu*/
                background: white;
                }
                .glossymenu div.submenu ul{ /*UL of each sub menu*/
                list-style-type: none;
                margin: 0;
                padding: 0;
                }
                .glossymenu div.submenu ul li{
                border-bottom: 1px solid black;
                }
                .glossymenu div.submenu ul li a{
                display: block;
                font: normal 13px "Lucida Grande", "Trebuchet MS", Verdana, Helvetica, sans-serif;
                color: black;
                text-decoration: none;
                padding: 2px 0;
                padding-left: 10px;
                }
                .glossymenu div.submenu ul li a:hover{
                background: #DFDCCB;
                color: white;
                }
                </style>
                
       
  </head>
   <%--<form  name="form"   id="form">--%>
        <input type="hidden"  name="op">    
        <div id="grande"  style="width: 100%;height:100%;visibility: visible;display:none;background-color: white" >
            <center> 
                <br><br><br><br><br>    
                <table  border="0">
                    <tr>
                        <td>
                            <img     src="<%=request.getContextPath()%>/imagenes/expiro.jpg"  >
                        </td>
                        <td>
                            <font  face="Arial black" size="5">La Sesion ha  Expirado !!!</font>
                        </td>
                    </tr>                 
                </table>
            </center>   
        </div>
                       
        <div    class="glossymenu"  >
            <a class="menuitem" href="<%=request.getContextPath()%>/CerrarSesion?opciones=2"><center>Cerrar Sesion</center></a>           
        </div>
        <div id="contenedor"      style="visibility: visible;display:block;background-color: white">
            <div  id="cabecera" style="background-color:#386FB3"  >
                <center>
                   
                <table width="0" border="0" cellpadding="0" cellspacing="0">
                    <tr> 

                        <td  rowspan="3"  ><img src="<%=request.getContextPath()%>/imagenes/encabezado.jpg" width="1452px" height="190px" /></td>
                    </tr>
                </table>  
                </center>
            </div> 
            <div id="menu" style="background-color:#386FB3">

                <div style="min-width: 100%">
                    <div  align="center">
                        <table  border="0">
                            <tr>
                                <td><center><div> <img src="<%=request.getContextPath()%>/<%=objAlumnoBean.getFOTO()%>" width="170" height="170" />
                                </div></center></td>
                            </tr>
                        </table>   
                    </div>   	   
                    <table  border="0">
                        <tr>
                            <td width="164">
                                <div align="center"><font  size="3"  color="#FFFFFF">  
                                    <font size="5" color="white">
                                    <%=objAlumnoBean.getNOMBALU()%><br>
                                    <%=objAlumnoBean.getAPEPATERALU()%>
                                    </font>
                                </div>
                            </td>
                        </tr>
                    </table>  
                    <div  style='height: 30px'>
                        .           
                    </div>
                    <div class="glossymenu"  >

                        <a class="menuitem" href="javascript:inicio()">Menu de Inicio</a>                     

                        <a class="menuitem submenuheader" href="#">Aplicación Examen</a>
                        <div class="submenu">
                            <ul>
                                <li><a href="javascript:CallMant('<%=request.getContextPath()%>','DetalleMatricula',1,'<%=parametros%>')">Rendir Evaluaciones</a></li> 
                                 <li><a href="javascript:CallMant('<%=request.getContextPath()%>','DetalleMatricula',2,'<%=parametros%>')">Resultados de las Evaluaciones</a></li>         
                            </ul>
                        </div>
                        <a class="menuitem submenuheader" href="#">Configuración Cuenta</a>
                          <div class="submenu">
                            <ul>  
                                <li><a href="javascript:CallMant('<%=request.getContextPath()%>','Alumno',24,'<%="&codalu="+objAlumnoBean.getCODALU()%>')">Actualizar Datos Personales</a></li>
                                
                                <li><a href="javascript:CallMant('<%=request.getContextPath()%>','Alumno',18,'<%="&usuario="+objAlumnoBean.getUSUARIO()+
                                                                                                                        "&clave="+objAlumnoBean.getCLAVE()+                                                                                                                       
                                                                                                                        "&codAlu="+objAlumnoBean.getCODALU()%>')">Cambiar Password</a></li>
                            </ul>
                        </div>   
                        
                        <a class="menuitem" href="<%=request.getContextPath()%>/CerrarSesion?opciones=2">Cerrar Sesion</a>

                    </div>  
                </div>
            </div>
            <div  id="contenido" style="background:white">
                <br>
                <center>
                <img   id="imagen" src="<%=request.getContextPath()%>/imagenes/evaluacionlinea.jpg">
                </center>
            </div>
            <div  id="contenidoalternativo" style="background:white;display:none;width:85%;height:100%;float:left;" >
                <br>
                <center>
                <img   id="imagen" src="<%=request.getContextPath()%>/imagenes/evaluacionlinea.jpg">
                </center>
            </div>
            <div id="pie" style="background:#386FB3">
                <center> 
                    <font color="#F5F5F5" size="3">Todos lo derechos reservados</font>  
                </center>                            
            </div>
        </div>
    <%--</form>--%>
       
   
     
</body>
</html>




