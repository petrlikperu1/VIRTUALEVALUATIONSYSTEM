<%@page session="true" %>
<%@page import="BEAN.*" %>
<%@page import="java.util.ArrayList" %>

<%!
    
    AlumnoBean  objAlumnoBean=null;
   SemestreBean   objSemestreBean=null;   
    
AyudaBean   objAyudas=null;
ArrayList<DesarrolloExamenGeneradoBean>  listaDesarrolloExamenGeneradoBean    = null;
DesarrolloExamenGeneradoBean   objDesarrolloExamenGeneradoBean;
DetalleEstructuraExamenBean  objDetalleEstructuraExamenBean=null;
ArrayList<AyudaBean>  listaAyudas=null;
ArrayList<AlternativaBean>  listaAlternativa=null;
String contadorcad,enunciado,estadoimagenpreg,rutaimagenpreg,capacidad;
int  contador;
String CODMATRICULA,CODDETAMATRICULA;
String  parametro="",limite,parametros="";
String  RESPUESTAOK;
String  CODDESARROLLOEXAMGENERADOCAD,NUMEXAMDESARROLLOGENERADOCAD;
double   penalidadayuda,penalidaderrorpregunta,puntajepregunta;


 ExamenAutoGeneradoBean  objExamenAutoGeneradoBean=null;



%>


<%

   objAlumnoBean=(AlumnoBean)session.getAttribute("SESION"); 
   objSemestreBean=(SemestreBean)session.getAttribute("SESIONSEMESTRE");
   // parametros="&CODALU="+objAlumnoBean.getCODALU()+"&CODSEMESTRE="+objSemestreBean.getCODSEMESTRE();
 
%>




<%

   objAlumnoBean=(AlumnoBean)session.getAttribute("SESION"); 
   objSemestreBean=(SemestreBean)session.getAttribute("SESIONSEMESTRE");
    parametros="&CODALU="+objAlumnoBean.getCODALU()+"&CODSEMESTRE="+objSemestreBean.getCODSEMESTRE();
 
%>



<%
	
	listaDesarrolloExamenGeneradoBean =(ArrayList<DesarrolloExamenGeneradoBean> )session.getAttribute("listaDesarrolloExamenGenerado");
     
        listaAlternativa=(ArrayList<AlternativaBean>)request.getAttribute("Alternativa");
        listaAyudas=(ArrayList<AyudaBean>)request.getAttribute("Ayudas");
	contadorcad=session.getAttribute("contador").toString();      
        contador=Integer.parseInt(contadorcad);
        objDesarrolloExamenGeneradoBean=(DesarrolloExamenGeneradoBean)request.getAttribute("PREGUNTAS");
        enunciado=objDesarrolloExamenGeneradoBean.getENUNCIADOPREG();
        RESPUESTAOK=objDesarrolloExamenGeneradoBean.getRESPUESTAOK();
        limite =request.getAttribute("limite").toString();    

        estadoimagenpreg=objDesarrolloExamenGeneradoBean.getESTADOIMGPREG();
        rutaimagenpreg=objDesarrolloExamenGeneradoBean.getIMAGENPREG();
        capacidad=objDesarrolloExamenGeneradoBean.getCAPACIDAD();
        objExamenAutoGeneradoBean=(ExamenAutoGeneradoBean)request.getAttribute("datosmatricula");  
        parametros="&CODMATRICULA="+objExamenAutoGeneradoBean.getCODMATRICULA()+"&CODDETAMATRI="+objExamenAutoGeneradoBean.getCODDETAMATRI()+"&CODMATERIA="+objExamenAutoGeneradoBean.getCODMATERIA()+"&CODESTRUCEXAMEN="+objExamenAutoGeneradoBean.getCODESTRUCEXAMEN(); 
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SISTEMA  VIRTUAL DE  EVALUACION EN  LINEA USB</title>

    
    
       <script src="<%=request.getContextPath()%>/js/jsalumno.js"></script>   
    
 <!-- Bootstrap Core CSS -->
    <link href="<%=request.getContextPath()%>/css/bootstrap.min2.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<%=request.getContextPath()%>/css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<%=request.getContextPath()%>/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
     <!-- jQuery -->
    <script src="<%=request.getContextPath()%>/js/jquery_3.js"></script>
    <script src="<%=request.getContextPath()%>/js/jquery_3.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<%=request.getContextPath()%>/js/bootstrap.min5.js"></script>

   
     <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" type="text/css" media="all" />
     <script src="<%=request.getContextPath()%>/js/responsiveslides.min.js"></script>
   
     
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
     
 
</head>
<body >
   
     <form name="form">
        <input type="hidden" name="op">
        
        <input type="hidden" name="CODALU" value="<%=objAlumnoBean.getCODALU()%>" >
        
        <input type="hidden" name="CODSEMESTRE"  value="<%=objSemestreBean.getCODSEMESTRE()%>">
        <input type="hidden" name="parametros"  >
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

     
 
                        <div class="alert alert-info">
                            <h4><strong><center>EXAMEN   DE ENTRENAMIENTO</center></strong></h4>                            
                        </div>                            
              
     <center> 
   
       <div class="panel panel-primary">
                
            
                                <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="0%">                        
                                    <tbody>                  
                                        <tr>
                                                <td   class="col-md-2"   >
                                                    <b> Tiempo Restante :</b>
                                                </td>

                                                <td>
                                                   <div  >                                                        
                                                       <p class="text-justify"><span id="minutos">80:00  Min  </span>  </p>    
                                                   </div>
                                                </td>
                                        </tr>  
                                        <tr>
                                                <td   class="col-md-2"   >
                                                    <b> Puntaje :</b>
                                                </td>

                                                <td>
                                                   <div  >                                                        
                                                       <p class="text-justify"><span id="minutos">3 Puntos</span>  </p>    
                                                   </div>
                                                </td>
                                        </tr>  
                                     </tbody>  
                                </table>                  
                   
           </div> 
             
          <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"> Pregunta</h3>
                </div>             
                  
                 <% if(estadoimagenpreg.equals("I")) {  %>
         
                  <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">                        
                        <tbody>
                            <tr>
                                <td  class="col-md-1"  ><%=contador%>)</td>
                                <td   >
                                  <div  style="FONT-FAMILY: Tahoma;BACKGROUND-COLOR:white;FONT-SIZE: 10pt;COLOR: black;height:auto">           
                                         <p class="text-justify"><%=enunciado%></p>                   
                                  </div> 
                                    
                                </td>                                
                            </tr>
                        </tbody>  
                    </table> 
         
         
                 <%  } else{  %>

                   <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">                        
                        <tbody>
                            <tr>
                                <td class="col-md-1" ><%=contador%>)</td>
                                <td   >
                                  <div  style="FONT-FAMILY: Tahoma;BACKGROUND-COLOR:white;FONT-SIZE: 10pt;COLOR: black;height:auto">           
                                         <p class="text-justify"><%=enunciado%></p>                   
                                  </div> 
                                </td>
                            </tr>                            
                              <tr>
                                  <td class="col-md-1" ></td>
                                  <td >
                                    <div class="logo"    >
                                        <center>
                                            <img src="<%=request.getContextPath()%>/imagenes/header-bg4.png" style="width: 100%;height:60%;" >
                                        </center> 
		                    </div>
                                </td>
                            </tr>
                        </tbody>  
                    </table> 

                 <% }  %>
              
                       
     <%  if(capacidad.equals("CONCEPTUAL")){ %>         
               <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Alternativas</h3>
                </div> 
                       
               
                    <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="0%">                        
                        <tbody>
                    <%  for(AlternativaBean  objAlternativas:listaAlternativa){  %>
                            <tr   >
                                <td   class="col-md-1"   ><%=objAlternativas.getCLAVEALTER()%><b>)</b>&nbsp;&nbsp;&nbsp;<input type="radio" name="rdop" id="rdop" value="<%=objAlternativas.getCLAVEALTER()%>"></td>
                                
                                <td>
                                                       <div style="FONT-FAMILY: Tahoma;FONT-SIZE: 10pt;COLOR: black;" >                                                        
                                                           <p class="text-justify"><%=objAlternativas.getENUNCIADOALTER()%></p>    
                                                        </div>
                                </td>
                            </tr>
                            
                              <%   }%>
                             
                        </tbody>  
                    </table>                  
            
                   </div>
                            
        <%  }else{ %>
                  <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Digite su Respuesta o Adjunte archivo con  formato ZIP</h3>
                </div> 
                    <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="0%">                        
                        <tbody>                    
                            <tr>
                                <td>
                                    <center>
                                            <textarea       style="width: 100%;height:200px;"></textarea> 
                                    </center>
                                </td>                     
                            </tr>
                             <tr>
                                 <td> 
                                     <center>
                                           <button   class="btn btn-primary"   onclick=""> <img src="<%=request.getContextPath()%>/imagenes/subirimagen.png" width="40px" height="35px"><br>Subir archivo</button> 
                                    </center> 
                                   
                                     
                                 </td>                     
                            </tr>
                             
                             
                        </tbody>  
                    </table>                  
            
                   </div>   
         <%  }  %>
                               <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="0%">                        
                               <tbody>
                              <input type="button"    class="btn btn-primary"  value="Siguiente Pregunta ==>" onclick="siguientepreguntaalumno('<%=request.getContextPath()%>','ExamenAutoGenerado',4,'<%=limite%>','<%=parametros%>')"   >
                              </tbody>
                               </table>
                              <br>
                <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Ayudas</h3>
                </div> 
                       
              
                    <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="0%">                        
                        <tbody>
                    <%    int   i1=1; 
                          for(AyudaBean  objAyudas:listaAyudas){ 
                            parametro="&enunciado="+objAyudas.getENUNCIADOAYUDA();    %>
                            <tr   >
                                <td class="col-md-1"   >
                                    
                                    
                                    <input type="button"    class="btn btn-primary"  value="Ayuda # <%=""+i1 %>:" id="<%="B"+i1%>" onclick="Ayuda('<%=request.getContextPath()%>','ExamenAutoGenerado',6,'<%=parametro%>','ayuda<%="A"+i1%>','<%="B"+i1%>','<%=penalidadayuda%>')"   >
                                
                                
                                <td >
                                      <div  id="ayuda<%="A"+i1%>"  style="visibility: visible;display:block;height:100px;FONT-FAMILY: Tahoma;BACKGROUND-COLOR:DarkGray;FONT-SIZE: 10pt;COLOR: black;overflow: scroll">           
                                                            
                                         </div>    
                                </td>
                                
                            </tr>
                            
                              <%  i1++;  }%>
                             
                        </tbody>  
                    </table>                  
          
                   </div>        
                   
              </div>
          </div>                 
		</center>
                              <!-- Page Content -->
    <div class="container"> 

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
</body>
</html>