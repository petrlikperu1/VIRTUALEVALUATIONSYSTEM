<%@page   session="true" %>
 <%@page import="BEAN.*"%> 
<%@page import="java.util.ArrayList" %>
<%!
   AlumnoBean  objAlumnoBean=null;
    ArrayList<DetalleMatriculaBean>  objDetalleMatriculaBean    = null;
   SemestreBean   objSemestreBean=null;
   String  parametros="";
  
	
	int cont = 1;
      
%>

<%

   objAlumnoBean=(AlumnoBean)session.getAttribute("SESION"); 
   objSemestreBean=(SemestreBean)session.getAttribute("SESIONSEMESTRE");
   // parametros="&CODALU="+objAlumnoBean.getCODALU()+"&CODSEMESTRE="+objSemestreBean.getCODSEMESTRE();
  
  parametros="&codalu="+objAlumnoBean.getCODALU()+"&usuario="+objAlumnoBean.getUSUARIO();
  objDetalleMatriculaBean =(ArrayList<DetalleMatriculaBean>) request.getAttribute("listacursosprogramados");
 %>   



<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>VENTANA  PRINCIPAL DEL  SISTEMA VIRTUAL DE  EVALUACION EN LINEA DE LA  UNIVERSIDAD PERUANA SIMON BOLIVAR</title> 
    
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

     
</div>
<div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
             <div class="alert alert-info">
                            <h4><strong><center>Solucionario del  Examen Supervisado</center></strong></h4>                            
                        </div>  
             
        </div>
        <!-- /.row -->

     
</div>

               
          
 <div class="row">
     <div class="col-md-12">
     <div class="panel panel-info">
     <div class="panel-body">
      <div class="table-responsive">
        
              <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
        <thead>
       
                <tr  class="panel-info ">                    
                    <th>Nro</th>                    
                    <th>Materia</th>
                    <th>Semestre</th>
                    <th>Accion</th>
                </tr>
           
        </thead>
        <tbody>
               <% for(DetalleMatriculaBean obj:objDetalleMatriculaBean) 
                                                { 
                                                   parametros="&CODMATRICULA="+obj.getCODMATRICULA()+"&CODDETAMATRI="+obj.getCODDETAMATRI()+"&CODMATERIA="+obj.getCODMATERIA();
                                                    
                                                %>
            <tr>  
                   <td><center><%=cont%></center></td>
                    <td><%=obj.getNOMBMATERIA()%></td>
                    <td><center><%=obj.getNOMBSEMESTRE()%></center></td>
                    
                                                              
                     <td>
                                                                
                                                                <center>
                                                                    
                                                                      <input type="button"    class="btn btn-primary" style="width:150px;"  value="Rendir  Examen" onclick="RendirExamen1('<%=request.getContextPath()%>','ExamenAutoGenerado',1,'<%=parametros%>','',0)"   >
                                                            
                                                                 
                                                                        
                                                                                                                                   
                                                                </center></td> 
                    
                  
                        <%  cont++;  }   %>
                    </td> 
                                
                 
                    </tr>
                
            
        </tbody>
</table>
              
   
     
 </div>     
 </div>
 </div> 
 </div> 
 </div>
                                                                                                     
   </div>                                                                                                       
                                                                                                        
                                                                                                        
                                                                                                        
	


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
    
    
   </form>

</body>

</html>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         