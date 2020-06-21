<!DOCTYPE html>
<html>
<head>
    <title>Portal Docentes</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Cache-Control" content="no-cache" />
    <link rel="shortcut icon" href="/favicon.ico" />

      <link href="<%=request.getContextPath()%>/css/bootstrap.min2.css" rel="stylesheet">

    <link href="/Content/bootstrap-responsive.css" rel="stylesheet"/>

    <link href="/Content/Site.css" rel="stylesheet"/>

    <script src="/bundles/modernizr?v=wBEWDufH_8Md-Pbioxomt90vm6tJN2Pyy9u9zHtWsPo1"></script>

    <link href="/Content/jquery-ui/jquery-ui.css" rel="stylesheet"/>

    <link href="/Content/jquery-ui/jquery-ui.theme.css" rel="stylesheet"/>


      <script src="<%=request.getContextPath()%>/js/jquery_3.js"></script>

    <script src="/Content/jquery-ui/jquery-ui.js"></script>

    <script src="/Scripts/Home.js"></script>


</head>
<body>
    <header>
        <div class="container body-content divPanel topArea notop nobottom" style="width:100% !important; margin:0px 0px 0px 0px">

            <div class="col-md-12 row-fluid" style="margin:auto; width:99%; max-width:1100px; min-width:280px">
                <div class="form-group">
                    <div class="form-horizontal">

                        <div class="form-group">

                            <div class="col-md-2" style="z-index:3000">
                                <div class="navbar-header" style="width:175px; margin-top: 8px">
                                    <a class="TituloHeader" href="/Home/UTP?Length=0">Portal</a>
                                    <a class="TituloHeader" href="/Home/UTP?Length=0">docente</a>
                                </div>
                            </div>

                            <div id="divMenuRight" class="col-md-8">
                                <div class="navbar" style="margin-top:10px">

                                    <button type="button" class="btn btn-navbar-highlight btn-large btn-primary" style="height:40px; width:50px; background-color:black;" data-toggle="collapse" data-target=".nav-collapse">
                                        <img src="/Content/verMenu.png" style="width:100%;height:100%;"><span class="icon-chevron-down icon-white"></span>
                                    </button>

                                    <nav class="nav-collapse collapse">
                                        <ul id="" class="nav navbar-nav navbar-right" style="margin-top:15px; float:right!important; z-index:1000">

                                                <li> <a href=" https://login.microsoftonline.com/" target="_blank">Correo</a></li>
                                                <li> <a href="https://cadutp.zendesk.com" target="_blank">CAD en Línea</a></li>
                                                <li> <a href="http://tubiblioteca.utp.edu.pe/" target="_blank">Biblioteca</a></li>
                                                <li> <a href="https://caledu.campusvirtualutp.edu.pe/" target="_blank">Caledu</a></li>
                                                    <li><a href="/Publicacion/IndexPublicaciones">Publicaciones</a></li>

                                                <li><a id="logoff" href="#">Cerrar Sesión</a> </li>
                                        </ul>
                                    </nav>

                                </div>
                            </div>

                            <div class="col-md-2">
                                <div class="navbar-header" style="margin-top: 18px; margin-right:20%">
                                    <img src="/App_Themes/Img/logo-blanco.png" alt="Portal docente" style="width:130px">
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            

        </div>
    </header>

    <div class="container body-content">
        
<script src="/Scripts/HomeMantenimientoIndex.js"></script>

<script src="/Scripts/AsistenciaIndex.js"></script>


    <style>
        .ui-state-active, .ui-widget-content .ui-state-active, .ui-widget-header .ui-state-active {
            background: #3CA79E;
            border: #3CA79E;
        }

        legend {
            background-color: #3CA79E;
        }

        .ui-dialog-titlebar.ui-widget-header.ui-corner-all.ui-helper-clearfix.ui-draggable-handle {
            background: #3CA79E;
        }
    </style>

<br />
<legend>Asistencia de alumnos</legend>

<section>
    <fieldset>
        <br />

        <div class="col-sm-offset-1" id="lstFiltros">
            <div class="form-group">
                <div class="form-horizontal">

                    <div class="form-group">
                        <div>
                            <label class="control-label col-md-2" for="Unidad" style="margin-top:6px">Unidad</label>
                        </div>
                        <div class="col-md-3">
                            <select class="form-control" id="tnCodUni" name="tnCodUni"><option selected="selected" value="1">UTP - Pregrado</option>
<option value="4">UTP - CGT</option>
</select>
                            <span class="field-validation-valid text-danger" data-valmsg-for="tnCodUni" data-valmsg-replace="true"></span>
                        </div>
                        <div>
                            <label class="control-label col-md-2" for="Periodo" style="margin-top:6px">Periodo</label>
                        </div>
                        <div class="col-md-3">
                            <select class="form-control" id="tnCodPer" name="tnCodPer"><option value="">Seleccione...</option>
</select>
                            <span class="field-validation-valid text-danger" data-valmsg-for="tnCodPer" data-valmsg-replace="true"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <div>
                            <label class="control-label col-md-2" for="Curso" style="margin-top:6px">Curso</label>
                        </div>
                        <div class="col-md-3">
                            <select class="form-control" id="tcCodCur" name="tcCodCur"><option value="">Seleccione...</option>
</select>
                            <span class="field-validation-valid text-danger" data-valmsg-for="tcCodCur" data-valmsg-replace="true"></span>
                        </div>
                        <div>
                            <label class="control-label col-md-2" for="Secci_n" style="margin-top:6px">Secci&#243;n</label>
                        </div>
                        <div class="col-md-3">
                            <select class="form-control" id="tcCodSec" name="tcCodSec"><option value="">Seleccione...</option>
</select>
                            <span class="field-validation-valid text-danger" data-valmsg-for="tcCodSec" data-valmsg-replace="true"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <div>
                            <label class="control-label col-md-2" for=""> </label>
                        </div>
                        <div class="col-md-3">
                            
                        </div>
                        <div>
                            <label class="control-label col-md-2" for=""> </label>
                        </div>
                        <div class="col-md-3">
                            <button type="button" class="btn btn-default" id="btnBusquedaAsist">
                                <span class="glyphicon glyphicon-search" data-toggle="tooltip" title="Buscar"></span>
                            </button>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </fieldset>
</section>

<div id="divMantenimiento">
        <h3>Consulta asistencia</h3>
        <div id="61" class="loading">Asistencia/IndexAsistencia</div>
        <h3>Listado de alumnos</h3>
        <div id="62" class="loading">Asistencia/IndexAlumnos</div>
</div>

<br />

    </div>

    <footer class="footer">
        <div id="footer-inner" class="col-xs-12 form-inline">

            <div class="col-md-6">
                <div class="form-group-lg">
                    <p class="idp" style="margin-top: 10px;">
                        <a style="margin-left: 0px!important; font-family:Helvetica-Neue-Bold!important">Vicerrectorado de Servicios Universitarios</a>
                    </p>
                    <p class="idp">
                        <img alt="" src="/App_Themes/Img/mb_phone.png" style="height:25px; width:25px; position:absolute; bottom: 10px;">
                        <a>&nbsp;315 9600  &nbsp;&nbsp;&nbsp;&nbsp;Anexo: 1267</a>
                        <a>vserviciosuniversitarios@utp.edu.pe</a>
                    </p>
                </div>
            </div>

            <div class="col-md-6" style="padding-left: 0px;">
                <div class=" form-group-lg" style="border-left: 1px groove;">
                    <p class="idp" style=" margin-top: 10px;">
                        <a style="margin-left: 0px!important;  font-family:Helvetica-Neue-Bold!important">Mesa de Ayuda</a>
                    </p>
                    <p class="idp">
                        <img alt="" src="/App_Themes/Img/mb_phone.png" style="height:25px; width:25px; position:absolute; bottom: 10px;">
                        <a> &nbsp;315 9606</a>
                        <a>mesadeayuda.utp.edu.pe</a>
                    </p>
                </div>
            </div>
        </div>
        <div class="col-xs-12 form-inline">
            <p class="idp" style=" margin-top: 10px; font-size: 11px!important; ">
                <a style="margin-left: 0px!important;">Universidad Tecnológica del Perú -</a><a href="/Home/PoliticasDePrivacidad" target=" _blank" style="margin-left: 0px!important;"> Políticas de Privacidad -</a><a href="/Home/TerminosDeUso" target="_blank" style="margin-left: 0px!important;"> Términos y Condiciones</a>
            </p>
        </div>
    </footer>

    

    

    

    <link href="/Content/datatable/css/dataTables.bootstrap.min.css" rel="stylesheet"/>

    <link href="/Content/datatable/css/buttons.dataTables.min.css" rel="stylesheet"/>

    <script src="/Content/datatable/js/jquery.dataTables.min.js"></script>

    <script src="/Content/datatable/js/dataTables.bootstrap.min.js"></script>


    

    <script src="/Content/datatable/js/buttons/dataTables.buttons.min.js"></script>

    <script src="/Content/datatable/js/buttons/buttons.flash.min.js"></script>

    <script src="/Content/datatable/js/jszip/jszip.min.js"></script>

    <script src="/Content/datatable/js/pdfmake/pdfmake.min.js"></script>

    <script src="/Content/datatable/js/pdfmake/vfs_fonts.js"></script>

    <script src="/Content/datatable/js/buttons/buttons.html5.min.js"></script>

    <script src="/Content/datatable/js/pdfmake/buttons.print.min.js"></script>

    <script src="/Content/datatable/js/dataTables.responsive.min.js"></script>

    <script src="/Content/datatable/js/date-dd-MMM-yyyy.js"></script>


    <script src="/Scripts/jquery.validate.min.js"></script>

    <script src="/Scripts/jquery.validate.unobtrusive.min.js"></script>



    <script src="/bundles/bootstrap?v=2Fz3B0iizV2NnnamQFrx-NbYJNTFeBJ2GM05SilbtQU1"></script>

    
    
    <div id="dialog"></div>
    <div id="dialogCerrar"></div>
</body>
</html>
