
<%!
    
    int  j,i;
    
    %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>ONLINE EVALUATION SYSTEM</title>

    
    
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
        
        <input type="hidden" name="CODALU" value="" >
        
        <input type="hidden" name="CODSEMESTRE"  value="">
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
				
		</div>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              
                <ul class="nav navbar-nav navbar-right">
                   <li class="active">
                        <a href="index.html">Start</a>
                    </li>
                                 
                   
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="<%=request.getContextPath()%>/imagenes/examen1.png"    >Exam Application <b class="caret"></b></a>
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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="<%=request.getContextPath()%>/imagenes/configuracion.png"    >  Setting   <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="javascript:InvocarMenu('<%=request.getContextPath()%>','Alumno',24,'')">Actualizar Informacion</a>
                                
                                
                               
                            </li>
                            <li>
                                
                              <a href="javascript:InvocarMenu('')">Cambiar Contraseña</a>   
                               
                            </li>
                            
                        </ul>
                    </li>
                    
                       <li >
                        <a href="<%=request.getContextPath()%>/CerrarSesion?opciones=2" ><img src="<%=request.getContextPath()%>/imagenes/configuracion.png"    > Sign off  </a>
                       
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
                            <h4><strong><center>SUPERVISED EXAM</center></strong></h4>                            
                        </div>                            
              
     <center> 
   
       <div class="panel panel-primary">
                
            
                                <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="0%">                        
                                    <tbody>                  
                                        <tr>
                                                <td   class="col-md-2"   >
                                                    <b> Time remaining :</b>
                                                </td>

                                                <td>
                                                   <div  >                                                        
                                                       <p class="text-justify"><span id="minutos">51:26 minutes  </span>  </p>    
                                                   </div>
                                                </td>
                                        </tr>  
                                        <tr>
                                                <td   class="col-md-2"   >
                                                    <b> Score :</b>
                                                </td>

                                                <td>
                                                   <div  >                                                        
                                                       <p class="text-justify"><span id="minutos">3 points</span>  </p>    
                                                   </div>
                                                </td>
                                        </tr>  
                                     </tbody>  
                                </table>                  
                   
           </div> 
             
          <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"> Question</h3>
                </div>             
                  
                 <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">                        
                        <tbody>
                            <tr>
                                <td class="col-md-1" ><b>2)</b></td>
                                <td   >
                                  <div  style="FONT-FAMILY: Tahoma;BACKGROUND-COLOR:white;FONT-SIZE: 10pt;COLOR: black;height:auto">           
                                         <p class="text-justify">Analyze the following case study and determine the input, output and core operations variables.</p>  
                                         <p class="text-center"><b><u>Worker case study</u></b></p>

<p class="text-justify">
Enter by keyboard the name of the worker, the hours worked and the type of activity (painted, lacquered, varnished), for each
hour worked will be paid:</p>
<ol>
  <li>If the service is painted, you will be paid s / .10</li>
  <li>If the service is paid, you will be paid s / .12</li>
  <li>If the service is varnished, you will be paid s / .14</li>
</ol>
 <p class="text-justify">
     For each hour you will be paid 30% plus the hourly wage, knowing that weekly
works 40 hours.Calculate and visualize the wage
weekly that the worker will receive, the extra wage and the total wage.
Write the answer through the text area or work on it in a project in netbeans that will have to be zipped and uploaded.
</p>                
                                  </div> 
                                </td>
                            </tr>                            
                             
                        </tbody>  
                    </table>             
              
              
              <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Type your Answer or Attach a ZIP file</h3>
                </div> 
                    <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="0%">                        
                        <tbody>                    
                            <tr>
                                <td>
                                    <center>
                                            <textarea       style="width: 100%;height:200px;">Here write the solution</textarea> 
                                    </center>
                                </td>                     
                            </tr>
                             <tr>
                                 <td> 
                                     <center>
                                           <button   class="btn btn-primary"   onclick=""> <img src="<%=request.getContextPath()%>/imagenes/subirimagen.png" width="40px" height="35px"><br> Upload file   </button> 
                                    </center> 
                                   
                                     
                                 </td>                     
                            </tr>
                             
                             
                        </tbody>  
                    </table>                  
            
                   </div>   
     
                               <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="0%">                        
                               <tbody>
                              <input type="button"    class="btn btn-primary"  value="Next question ==>" onclick=""   >
                              </tbody>
                               </table>
                              <br>
                <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Helps</h3>
                </div> 
                       
              
                    <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="0%">                        
                        <tbody>
                    <%   
                          for(int  j=1;j<=2;j++){ 
                              %>
                            <tr   >
                                <td class="col-md-1"   >
                                    
                                    
                                    <input type="button"    class="btn btn-primary"  value="Help # <%=""+j %>:" id="<%="B"+j%>" onclick=""   >
                                
                                
                                <td >
                                      <div  id="ayuda<%="A"+j%>"  style="visibility: visible;display:block;height:100px;FONT-FAMILY: Tahoma;BACKGROUND-COLOR:DarkGray;FONT-SIZE: 10pt;COLOR: black;overflow: scroll">           
                                                            
                                         </div>    
                                </td>
                                
                            </tr>
                            
                              <%   }%>
                             
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
                    <p>Online Assessment System &copy; 2017</p>
                </div>
            </div>
        </footer>

    </div>
</body>
</html>