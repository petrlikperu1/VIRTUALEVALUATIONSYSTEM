
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
   // parametros="&CODALU="+objAlumnoBean.getCODALU()+"&CODSEMESTRE="+objSemestreBean.getCODSEMESTRE();
 
%>

 <% 
   objAlumnoBean=(AlumnoBean)request.getAttribute("datosalumnoactualizar");
  // String  parametros="&coddocente="+objDocenteSBean.getCODDOCENTE()+"&usuario="+objDocenteSBean.getUSUARIO()+"&codrol="+objDocenteSBean.getTIPO();
 %> 


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Portal de Egresados UNFV</title>
       <script src="<%=request.getContextPath()%>/js/jsalumno.js"></script>
 <!-- Bootstrap Core CSS -->
    <link href="<%=request.getContextPath()%>/css/bootstrap.min2.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<%=request.getContextPath()%>/css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<%=request.getContextPath()%>/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
     <!-- jQuery -->
    <script src="<%=request.getContextPath()%>/js/jquery_3.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%=request.getContextPath()%>/js/bootstrap.min5.js"></script>

     <script src="<%=request.getContextPath()%>/js/jssor.slider-22.0.15.mini.js" type="text/javascript" data-library="jssor.slider.mini" data-version="22.0.15"></script>

     
    <script>
         
       function InvocarMenu(ruta,tabla,op,parametros)
       { 
           
           
             
              var pagina=ruta+"/"+tabla+"Servlet?"+parametros;  
              document.form.action=pagina;
              document.form.method="POST";
              document.form.op.value=op;
             
             
              document.form.submit();
                
       } 
         
         
         
         
     </script>
     <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" type="text/css" media="all" />
     <script src="<%=request.getContextPath()%>/js/responsiveslides.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.flexisel.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {

            var jssor_1_SlideoTransitions = [
              [{b:-1,d:1,o:-1},{b:0,d:1000,o:1}],
              [{b:1900,d:2000,x:-379,e:{x:7}}],
              [{b:1900,d:2000,x:-379,e:{x:7}}],
              [{b:-1,d:1,o:-1,r:288,sX:9,sY:9},{b:1000,d:900,x:-1400,y:-660,o:1,r:-288,sX:-9,sY:-9,e:{r:6}},{b:1900,d:1600,x:-200,o:-1,e:{x:16}}]
            ];

            var jssor_1_options = {
              $AutoPlay: true,
              $SlideDuration: 800,
              $SlideEasing: $Jease$.$OutQuint,
              $CaptionSliderOptions: {
                $Class: $JssorCaptionSlideo$,
                $Transitions: jssor_1_SlideoTransitions
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*responsive code begin*/
            /*you can remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 1920);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            /*responsive code end*/
        });
    </script>
    <style>
        /* jssor slider bullet navigator skin 05 css */
        /*
        .jssorb05 div           (normal)
        .jssorb05 div:hover     (normal mouseover)
        .jssorb05 .av           (active)
        .jssorb05 .av:hover     (active mouseover)
        .jssorb05 .dn           (mousedown)
        */
        .jssorb05 {
            position: absolute;
        }
        .jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
            position: absolute;
            /* size of bullet elment */
            width: 16px;
            height: 16px;
            background: url('./imagenes/b05.png') no-repeat;
            overflow: hidden;
            cursor: pointer;
        }
        .jssorb05 div { background-position: -7px -7px; }
        .jssorb05 div:hover, .jssorb05 .av:hover { background-position: -37px -7px; }
        .jssorb05 .av { background-position: -67px -7px; }
        .jssorb05 .dn, .jssorb05 .dn:hover { background-position: -97px -7px; }

        /* jssor slider arrow navigator skin 22 css */
        /*
        .jssora22l                  (normal)
        .jssora22r                  (normal)
        .jssora22l:hover            (normal mouseover)
        .jssora22r:hover            (normal mouseover)
        .jssora22l.jssora22ldn      (mousedown)
        .jssora22r.jssora22rdn      (mousedown)
        .jssora22l.jssora22lds      (disabled)
        .jssora22r.jssora22rds      (disabled)
        */
        .jssora22l, .jssora22r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 40px;
            height: 58px;
            cursor: pointer;
            background: url('imagenes/a22.png') center center no-repeat;
            overflow: hidden;
        }
        .jssora22l { background-position: -10px -31px; }
        .jssora22r { background-position: -70px -31px; }
        .jssora22l:hover { background-position: -130px -31px; }
        .jssora22r:hover { background-position: -190px -31px; }
        .jssora22l.jssora22ldn { background-position: -250px -31px; }
        .jssora22r.jssora22rdn { background-position: -310px -31px; }
        .jssora22l.jssora22lds { background-position: -10px -31px; opacity: .3; pointer-events: none; }
        .jssora22r.jssora22rds { background-position: -70px -31px; opacity: .3; pointer-events: none; }
    </style>
</head>

<body>
    <form name="form">
            <input type="hidden" name="op">

            <input type="hidden" name="CODALU"  value="<%=objAlumnoBean.getCODALU()%>">
            <input type="hidden" name="CODSEMESTRE"  value="<%=objSemestreBean.getCODSEMESTRE()%>">
            <input type="hidden" name="parametros"  >
        
        
        
            <input type="hidden" id="txtcodigo1"  name="txtcodigo1"  value="<%=objAlumnoBean.getCODALU()%>">
            <input type="hidden" id="txtnombre"  name="txtnombre"  value="<%=objAlumnoBean.getNOMBALU()%>">
            <input type="hidden" id="txtapepater"  name="txtapepater"  value="<%=objAlumnoBean.getAPEPATERALU()%>">
            <input type="hidden" id="txtapemater"  name="txtapemater"  value="<%=objAlumnoBean.getAPEMATERALU()%>">
        
        
        
        
   <!-- Navigation -->
  
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">   
        <div class="container">
              
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               <div class="logo">
				<img src="<%=request.getContextPath()%>/imagenes/logousb.png" style="width: 100%;height: auto;" >
		</div>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              
                <ul class="nav navbar-nav navbar-right">
                   <li class="active">
                        <a href="index.html">Inicio</a>
                    </li>
                                 
                   
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="<%=request.getContextPath()%>/imagenes/examen1.png"    >Aplicación Examen <b class="caret"></b></a>
                         <ul class="dropdown-menu">
                            <li>
                                <a href="javascript:InvocarMenu('<%=request.getContextPath()%>','DetalleMatricula',1,'')">Rendir Evaluaciones</a>
                            </li>
                            <li>
                                <a href="portfolio-2-col.html">Resultados de las Evaluaciones</a>
                            </li>
                            
                        </ul>
                    </li>
                    
                   
                    
                  <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="<%=request.getContextPath()%>/imagenes/configuracion.png"    >Configuracion <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="javascript:InvocarMenu('<%=request.getContextPath()%>','Alumno',24,'<%="CODALU="+objAlumnoBean.getCODALU()+"&CODSEMESTRE="+objAlumnoBean.getCODSEMESTRE()%>')">Actualizar Informacion</a>
                                
                                
                               
                            </li>
                            <li>
                                
                              <a href="javascript:InvocarMenu('<%=request.getContextPath()%>','Alumno',18,'<%="usuario="+objAlumnoBean.getUSUARIO()+
                                                                                                                        "&clave="+objAlumnoBean.getCLAVE()+                                                                                                                       
                                                                                                                        "&codAlu="+objAlumnoBean.getCODALU()%>')">Cambiar Contraseña</a>   
                               
                            </li>
                            
                        </ul>
                    </li>      
                    
                       <li >
                        <a href="<%=request.getContextPath()%>/CerrarSesion?opciones=2" ><img src="<%=request.getContextPath()%>/imagenes/configuracion.png"    >Cerrar Sesion </a>
                       
                    </li>                    
                    
                </ul>
                     
                        
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

                        
          <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    <small>.</small>
                </h1>
                               
            </div>
             
        </div>
        <!-- /.row -->

        <div class="row">
  
            <div class="col-lg-12">
                <div class="alert alert-info">
                            <h4><strong><center>Actualizar  Datos del Estudiante</center></strong></h4>                            
                        </div> 
                <div >
                   
                    
                     <div class="form-group">
						<label for="codigo" class="col-lg-3 control-label">Codigo:</label>
						<div class="col-lg-8">
							<input type="text"  value="<%=objAlumnoBean.getCODALU()%>" name="txtcodigo" disabled="false" value="" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label for="Nombre" class="col-lg-3 control-label">Nombre:</label>
						<div class="col-lg-8">
							<input type="text" id="txtnombre"   value="<%=objAlumnoBean.getNOMBALU()%>" class="form-control"  >
						</div>
					</div>                                       
                                        <div class="form-group">
						<label for="Nombre" class="col-lg-3 control-label">Apellido Paterno :</label>
						<div class="col-lg-8">
							
                                                        <input type="text"  name="txtapepater" id="txtapepater"  value="<%=objAlumnoBean.getAPEPATERALU()%>" class="form-control"  >
						</div>
					</div>
                                        <div class="form-group">
						<label for="Nombre" class="col-lg-3 control-label">Apellido Materno :</label>
						<div class="col-lg-8">
							<input type="text" name="txtapemater" id="txtapemater"   value="<%=objAlumnoBean.getAPEMATERALU()%>"  class="form-control"  required="required">
						</div>
					</div>
                                       <div class="form-group">
						<label for="Email" class="col-lg-3 control-label">EMAIL :</label>
						<div class="col-lg-8">
							<input type="text" name="txtemail" id="txtemail"   value="<%=objAlumnoBean.getEMAIL()%>"   class="form-control"  >
						</div>
					</div>        
                                        <div class="form-group">
						<label for="password" class="col-lg-3 control-label">Imagen :</label>
						<div class="col-lg-8">
													
                                                <button   class="btn btn-primary"   onclick="SubirImagenAlumno()"> <img src="<%=request.getContextPath()%>/imagenes/subirimagen.png" width="40px" height="35px"><br>Adjuntar Imagen</button>
                                                
                                                </div>
					</div>  
                                                
                                        <div class="form-group">
						<label for="Email" class="col-lg-3 control-label">Nro Telefono :</label>
						<div class="col-lg-8">
							<input type="text" name="txtnrotelefono" id="txtnrotelefono"   value="<%=objAlumnoBean.getNROTELEFONO()%>"   class="form-control"  >
						</div>
					</div>           
                                                
                                           <div class="form-group">
						<label for="Email" class="col-lg-3 control-label">Direccion:</label>
						<div class="col-lg-8">
							
                                                        <textarea   class="form-control" name="txtarea" id="txtarea"  rows="5" cols="20"><%=objAlumnoBean.getDIRECCION()%></textarea> 
						</div>
					</div>  
                                            <div class="form-group text-center">						
						<input type="button"  class="btn btn-primary" onclick="ActualizarDatosPersonalesAlumno('<%=request.getContextPath()%>','Alumno',25)" value="Actualizar Datos" style="height:28px;
                                                                                                        width:120px;" />
                                                <input type="button"  class="btn btn-primary"  onclick="inicio()"   value="Salir" style="height:28px;
                                                                                                        width:80px;" />
					</div>
					<hr>
                      
                    
                  
                </div>
            </div>

        </div>

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Sistema Virtual de  Evaluacion en Linea de la Universidad Peruana  Simon Bolivar  &copy; 2015</p>
                </div>
            </div>
        </footer>

    </div>
    
    
   
    </form> 
</body>

</html>

