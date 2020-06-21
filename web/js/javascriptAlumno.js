






function   RendirExamenSupervisado(op)
{ 
   
    linML = 0;
    var pagina = ruta + "/" + tabla + "Servlet?op=" + op + parametros;

    if (activartimer == 1)
    {
        // carga(ruta,tabla,tiempo);
    }
    var xmlhttp;
    if (window.XMLHttpRequest)
    {
        xmlhttp = new XMLHttpRequest();
    }
    else
    {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function ()
    {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
        {
            document.getElementById("contenido").innerHTML = xmlhttp.responseText;
            //activeDatatable(); 
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
}




function   RendirExamen(op)
{ 
   
    linML = 0;
    var pagina = ruta + "/" + tabla + "Servlet?op=" + op + parametros;

    if (activartimer == 1)
    {
        // carga(ruta,tabla,tiempo);
    }
    var xmlhttp;
    if (window.XMLHttpRequest)
    {
        xmlhttp = new XMLHttpRequest();
    }
    else
    {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function ()
    {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
        {
            document.getElementById("contenido").innerHTML = xmlhttp.responseText;
            //activeDatatable(); 
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
}




//REUTILIZACION ---------------------------------------------------------------
function validarAccesoEstudiante()
{
    
} 
           
function  inicio()
{

             document.getElementById('contenido').style.display="none";

             document.getElementById('contenidoalternativo').style.display="block";


}

var referencia = 0;
var acumpenalidadayudas = 0;
function deshabilitarteclaF5()
{
    if (window.event && window.event.keyCode == 116)
    {
        window.event.keyCode = 505;
    }
    if (window.event && window.event.keyCode == 505)
    {
        return false;
    }
}

function inhabilitarMenuContextual() {
       jAlert("Esta Funcion esta Inhabilitado !!");
    return false
}
function bloquearMenu()
{
    document.oncontextmenu = inhabilitar;
}

function  VentanaAyuda(ruta, tabla, op, parametros)
{
    var pagina = ruta + "/" + tabla + "Servlet?op=" + op + "&" + parametros;
    var opciones = "toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,width=700,height=600";
    window.open(pagina, "popup2", opciones);
}
function CambiaImg(imgid, imgnew)
{
    if (navigator.appVersion.substring(0, 1) >= 3) {
        document.images[imgid].src = eval(imgnew + ".src");
    }
}

var myVar;
function direccionar()
{
    myVar = setInterval(function () {
        setColor()
    }, 2000);
}
function setColor()
{
    document.location.href = "Seguridad/loginAcceso/Docente/FrmLoginDocente.jsp";
    clearInterval(myVar);
}

var myVar1;
function direccionarAlumno()
{
    myVar1 = setInterval(function () {
        setColor1()
    }, 2000);
}
function setColor1()
{
    document.location.href = "Seguridad/loginAcceso/Alumno/FrmLoginAlumno.jsp";
    clearInterval(myVar1);
}

// metodo  implementado el 19 de enero del  2017
  


// -----------------------------------------------------------------------------





           function CallMant(ruta,tabla,op,parametros)
             { 
                 document.getElementById('contenido').style.display="block";                         
		 document.getElementById('contenidoalternativo').style.display="none";
               acumpenalidadayudas=0;                     
               linML=0;
                var pagina=ruta+"/"+tabla+"Servlet?op="+op+parametros;  
              
                var xmlhttp;
                if(window.XMLHttpRequest)
                {   xmlhttp=new XMLHttpRequest();
                }
                else
                {   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
                }
                xmlhttp.onreadystatechange=function()
                {   if(xmlhttp.readyState==4 && xmlhttp.status==200)
                    {        var   estado=xmlhttp.responseText;
                             var   num=0;
                             try 
                             {  num =parseInt(estado);
                             }
                             catch(e)
                             { 
                             }                           
                           if(num==1)
                           {  direccionarAlumno();
                              document.getElementById("grande").style.display="block";
                              document.getElementById("contenedor").style.display="none";
                           }
                           else
                           {  document.getElementById("contenido").innerHTML=xmlhttp.responseText;
                               activeDatatable(); 
                           }                         
                    }
                }                
                xmlhttp.open("GET",pagina,true);
                xmlhttp.send(null); 
               total=0;             
             clearInterval(cronometro3);
            }    
function salir(ruta, tabla, op, parametros)
{
    var pagina = ruta + "/" + tabla + "Servlet?op=" + op + "&" + parametros;
    var xmlhttp;
    if (window.XMLHttpRequest)
    {
        xmlhttp = new XMLHttpRequest();
    }
    else
    {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function ()
    {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
        {
              var   estado=xmlhttp.responseText;
                             var   num=0;
                             try 
                             {  num =parseInt(estado);
                             }
                             catch(e)
                             { alert("Error");
                             }                           
                           if(num==1)
                           {  direccionar();
                              document.getElementById("grande").style.display="block";
                              document.getElementById("contenedor").style.display="none";
                           }
                           else
                           {  document.getElementById("contenido").innerHTML=xmlhttp.responseText;
                               activeDatatable(); 
                           }
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
}

function nuevo(ruta, tabla, op, parametros) {
    var pagina = ruta + "/" + tabla + "Servlet?op=" + op + "&" + parametros;
    var xmlhttp;
    if (window.XMLHttpRequest)
    {
        xmlhttp = new XMLHttpRequest();
    }
    else
    {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function ()
    {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
        {
              var   estado=xmlhttp.responseText;
                             var   num=0;
                             try 
                             {  num =parseInt(estado);
                             }
                             catch(e)
                             { alert("Error");
                             }                           
                           if(num==1)
                           {  direccionar();
                              document.getElementById("grande").style.display="block";
                              document.getElementById("contenedor").style.display="none";
                           }
                           else
                           {  document.getElementById("contenido").innerHTML=xmlhttp.responseText;
                               activeDatatable(); 
                           }
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
}


function   grabar(ruta, tabla, op, parametros)
{
    var pagina = ruta + "/" + tabla + "Servlet?op=" + op + "&" + parametros;
   
    var xmlhttp;
    if (window.XMLHttpRequest)
    {
        xmlhttp = new XMLHttpRequest();
    }
    else
    {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function ()
    {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
        {
             var   estado=xmlhttp.responseText;
                             var   num=0;
                             try 
                             {  num =parseInt(estado);
                             }
                             catch(e)
                             { alert("Error");
                             }                           
                           if(num==1)
                           {  direccionar();
                              document.getElementById("grande").style.display="block";
                              document.getElementById("contenedor").style.display="none";
                           }
                           else
                           {  document.getElementById("contenido").innerHTML=xmlhttp.responseText;
                               activeDatatable(); 
                           }
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
}
function modificar(ruta, tabla, op, parametros)
{
    var pagina = ruta + "/" + tabla + "Servlet?op=" + op + "&" + parametros;
   
    var xmlhttp;
    if (window.XMLHttpRequest)
    {
        xmlhttp = new XMLHttpRequest();
    }
    else
    {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function ()
    {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
        {
           var   estado=xmlhttp.responseText;
                             var   num=0;
                             try 
                             {  num =parseInt(estado);
                             }
                             catch(e)
                             { alert("Error");
                             }                           
                           if(num==1)
                           {  direccionar();
                              document.getElementById("grande").style.display="block";
                              document.getElementById("contenedor").style.display="none";
                           }
                           else
                           {  document.getElementById("contenido").innerHTML=xmlhttp.responseText;
                              //activeDatatable(); 
                           }                         
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
    
    
}

function eliminar(ruta, tabla, op, parametros)
{
    var pagina = ruta + "/" + tabla + "Servlet?op=" + op + "&" + parametros;
    var xmlhttp;
    if (window.XMLHttpRequest)
    {
        xmlhttp = new XMLHttpRequest();
    }
    else
    {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function ()
    {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
        {
              var   estado=xmlhttp.responseText;
                             var   num=0;
                             try 
                             {  num =parseInt(estado);
                             }
                             catch(e)
                             { alert("Error");
                             }                           
                           if(num==1)
                           {  direccionar();
                              document.getElementById("grande").style.display="block";
                              document.getElementById("contenedor").style.display="none";
                           }
                           else
                           {  document.getElementById("contenido").innerHTML=xmlhttp.responseText;
                               activeDatatable(); 
                           }
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
}

    function nobackbutton()
    {   window.location.hash = "no-back-button";
        window.location.hash = "Again-No-back-button" //chrome
        window.onhashchange = function () {
        window.location.hash = "no-back-button";
    }

}



//----------------------------------------------------------------------------------------------------------------
// MANTENIMIENTOS DE  LA  TABLA
// ----------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------
// Inicio de Mantenimiento de la Tabla Docente >----- Hecho por Ivan <--------

function GrabarCambiosClave(ruta,tabla,op,parametros)
{  
    var  claveactual= document.getElementById('txtclave1').value;
    var  clavenueva= document.getElementById('txtclavenueva').value;
    var repetirclavenueva=document.getElementById('txtrepetirclave').value;   
    
    var pagina=ruta+"/"+tabla+"Servlet?op="+op+"&claveactual="+claveactual+"&clavenueva="+clavenueva+"&repetirclavenueva="+repetirclavenueva+parametros;
    var xmlhttp;
    
    if (claveactual == "") {
        jAlert("Ingrese por favor la  clave Actual !!!", 'Validacion');
        document.getElementById('txtclave1').focus();
        return;
    } else if (clavenueva == "") {
        jAlert("Ingrese por favor la  Clave Nueva !!!", 'Validacion');
        document.getElementById('txtclavenueva').focus();
        return;
    } else if (repetirclavenueva == "") {
        jAlert("Ingrese por favor la La  Clave Nueva Repetida  !!!", 'Validacion');
        document.getElementById('txtrepetirclave').focus();
        return;
    }else
    {
    
            if(window.XMLHttpRequest)
            {   xmlhttp=new XMLHttpRequest();
            }
            else
            {   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
            }
            xmlhttp.onreadystatechange=function()
            {   if(xmlhttp.readyState==4 && xmlhttp.status==200)
                {        var   estado=xmlhttp.responseText;
                         var   num=0;
                         try 
                         {  num =parseInt(estado);
                         }
                         catch(e)
                         { 
                         }                           
                       if(num==1)
                       {  direccionar();
                          document.getElementById("grande").style.display="block";
                          document.getElementById("contenedor").style.display="none";
                       }
                       else
                       {  document.getElementById("divclavemodificada").innerHTML=xmlhttp.responseText;
                           //activeDatatable(); 
                       }                         
                }
            }                
            xmlhttp.open("GET",pagina,true);
                        xmlhttp.send(null);  
    
    }
    
}

function colocarFocoComboDocente()
{
    document.getElementById('txtnombre').focus();
}

function validarClaveNueva(ruta,tabla,op)
{
  document.getElementById('txtrepetirclave').disabled=false;  
  var  clavenueva= document.getElementById('txtclavenueva').value;
    
    var pagina=ruta+"/"+tabla+"Servlet?op="+op+"&clavenueva="+clavenueva;
    
    var xmlhttp;
    if(window.XMLHttpRequest)
    {   xmlhttp=new XMLHttpRequest();
    }
    else
    {   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
    }
    xmlhttp.onreadystatechange=function()
    {   if(xmlhttp.readyState==4 && xmlhttp.status==200)
        {        var   estado=xmlhttp.responseText;
                 var   num=0;
                 try 
                 {  num =parseInt(estado);
                 }
                 catch(e)
                 { 
                 }                           
               if(num==1)
               {  direccionar();
                  document.getElementById("grande").style.display="block";
                  document.getElementById("contenedor").style.display="none";
               }
               else
               {  document.getElementById("correcto0").innerHTML=xmlhttp.responseText;
                   activeDatatable(); 
               }                         
        }
    }                
    xmlhttp.open("GET",pagina,true);
                xmlhttp.send(null); 
  
  
}

function validarRepetirClaveNueva(ruta,tabla,op)
{
    var  clavenueva= document.getElementById('txtclavenueva').value;
    var repetirclavenueva=document.getElementById('txtrepetirclave').value;    
    var pagina=ruta+"/"+tabla+"Servlet?op="+op+"&clavenueva="+clavenueva+"&repetirclavenueva="+repetirclavenueva;
    var xmlhttp;
    if(window.XMLHttpRequest)
    {   xmlhttp=new XMLHttpRequest();
    }
    else
    {   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
    }
    xmlhttp.onreadystatechange=function()
    {   if(xmlhttp.readyState==4 && xmlhttp.status==200)
        {        var   estado=xmlhttp.responseText;
                 var   num=0;
                 try 
                 {  num =parseInt(estado);
                 }
                 catch(e)
                 { 
                 }                           
               if(num==1)
               {  direccionar();
                  document.getElementById("grande").style.display="block";
                  document.getElementById("contenedor").style.display="none";
               }
               else
               {  document.getElementById("correcto1").innerHTML=xmlhttp.responseText;
                   activeDatatable(); 
               }                         
        }
    }                
    xmlhttp.open("GET",pagina,true);
                xmlhttp.send(null); 
  
}

function validarClaveActual(ruta,tabla,op,parametros)
{   document.getElementById('txtclavenueva').disabled=false;   
    var clave=document.getElementById('txtclave1').value;
    var pagina=ruta+"/"+tabla+"Servlet?op="+op+parametros+"&clave="+clave;  

    var xmlhttp;
    if(window.XMLHttpRequest)
    {   xmlhttp=new XMLHttpRequest();
    }
    else
    {   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
    }
    xmlhttp.onreadystatechange=function()
    {   if(xmlhttp.readyState==4 && xmlhttp.status==200)
        {        var   estado=xmlhttp.responseText;
                 var   num=0;
                 try 
                 {  num =parseInt(estado);
                 }
                 catch(e)
                 { 
                 }                           
               if(num==1)
               {  direccionar();
                  document.getElementById("grande").style.display="block";
                  document.getElementById("contenedor").style.display="none";
               }
               else
               {  document.getElementById("correcto").innerHTML=xmlhttp.responseText;
                   activeDatatable(); 
               }                         
        }
    }                
    xmlhttp.open("GET",pagina,true);
                xmlhttp.send(null); 
}


function grabarDocente(cod, ruta)
{   var codcarrera = document.getElementById('cbocarrera').value;
    var Nombre = document.getElementById('txtnombre').value;
    var ApellidoPaterno = document.getElementById('txtapelpate').value;
    var ApellidoMaterno = document.getElementById('txtapelmate').value;
    var Usuario = document.getElementById('txtusuario').value;
    var Clave = document.getElementById('txtclave').value;

    var parametros = '';


   if (codcarrera == '0')
    {
        jAlert("Seleccione la  Carrera Profesional  por favor!!!");
        document.form.cbocarrera.focus();
        return;
    }
    else
    {
    if (Nombre == '')
    {
        jAlert("Ingresar el Nombre por favor!!!");
        document.form.txtnombre.focus();
        return;
    }
    else
    {
        if (ApellidoPaterno == '')
        {
            jAlert("Ingresar el Apellido paterno por favor!!!");
            document.form.txtnombre.focus();
            return;
        }
        else
        {
            if (ApellidoMaterno == '')
            {
                jAlert("Ingresar el Apellido materno por favor!!!");
                document.form.txtnombre.focus();
                return;
            }
            else
            {
                if (Usuario == '')
                {
                    jAlert("Ingresar el Usuario por favor!!!");
                    document.form.txtnombre.focus();
                    return;
                } else {
                    if (Clave == '') {
                        jAlert("Ingresar la Clave por favor!!!");
                        document.form.txtnombre.focus();
                        return;
                    } else {
                        parametros = "cbocarrera=" + codcarrera + "&";
                        parametros += "txtnombre=" + Nombre + "&";
                        parametros += "txtapelpate=" + ApellidoPaterno + "&";
                        parametros += "txtapelmate=" + ApellidoMaterno + "&";
                        parametros += "txtusuario=" + Usuario + "&";
                        parametros += "txtclave=" + Clave + "&";
                        parametros += "hddcodigo=" + cod;
                        
                        grabar(ruta, 'Docente', 4, parametros);
                    }
                }
            }
        }
    }
}
}
function ModificarDocente(cod, ruta)
{   var codcarrera = document.getElementById('cbocarrera').value;
    var Nombre = document.getElementById('txtnombre').value;
    var ApellidoPaterno = document.getElementById('txtapelpate').value;
    var ApellidoMaterno = document.getElementById('txtapelmate').value;
    var Usuario = document.getElementById('txtusuario').value;
    var Clave = document.getElementById('txtclave').value;
    var estado = document.form.cboestado.value;

    var parametros = '';

    if (Nombre == '')
    {
        jAlert("Ingresar el Nombre por favor!!!");
        document.form.txtnombre.focus();
        return;
    }
    else
    {
        if (ApellidoPaterno == '')
        {
            jAlert("Ingresar el Apellido paterno por favor!!!");
            document.form.txtnombre.focus();
            return;
        }
        else
        {
            if (ApellidoMaterno == '')
            {
                jAlert("Ingresar el Apellido materno por favor!!!");
                document.form.txtnombre.focus();
                return;
            }
            else
            {
                if (Usuario == '')
                {
                    jAlert("Ingresar el Usuario por favor!!!");
                    document.form.txtnombre.focus();
                    return;
                } else {
                    if (Clave == '') {
                        jAlert("Ingresar la Clave por favor!!!");
                        document.form.txtnombre.focus();
                        return;
                    } else {
                        parametros = "cbocarrera=" + codcarrera + "&";
                        parametros += "txtnombre=" + Nombre + "&";
                        parametros += "txtapelpate=" + ApellidoPaterno + "&";
                        parametros += "txtapelmate=" + ApellidoMaterno + "&";
                        parametros += "txtusuario=" + Usuario + "&";
                        parametros += "txtclave=" + Clave + "&";
                        parametros += "cboestado=" + estado + "&";
                        parametros += "hddcodigo=" + cod;
                        modificar(ruta, 'Docente', 7, parametros);
                    }
                }
            }
        }
    }
}



function ActualizarDatosPersonalesDocente(ruta,tabla,op)
{   var coddocentecad = document.getElementById('txtcodigo1').value;   
    var Nombre = document.getElementById('txtnombre').value;
    var ApellidoPaterno = document.getElementById('txtapepater').value;
    var ApellidoMaterno = document.getElementById('txtapemater').value;
    var email = document.getElementById('txtemail').value;
    
    var txtnrotelefono = document.getElementById('txtnrotelefono').value;
    var txtarea = document.getElementById('txtarea').value;

  
    var parametros="&coddocente="+coddocentecad +
                   "&txtnombre="+Nombre+
                   "&txtapepater="+ApellidoPaterno+
                   "&txtapemater="+ApellidoMaterno+
                   "&txtemail="+email+
                   "&txtnrotelefono="+txtnrotelefono+
                   "&txtarea="+txtarea;
       
    var pagina=ruta+"/"+tabla+"Servlet?op="+op+parametros;
   
       var xmlhttp;
                if(window.XMLHttpRequest)
                {   xmlhttp=new XMLHttpRequest();
                }
                else
                {   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
                }
                xmlhttp.onreadystatechange=function()
                {   if(xmlhttp.readyState==4 && xmlhttp.status==200)
                    {        var   estado=xmlhttp.responseText;
                             var   num=0;
                             try 
                             {  num =parseInt(estado);
                             }
                             catch(e)
                             { 
                             }                           
                           if(num==1)
                           {   
                               direccionar();
                              document.getElementById("grande").style.display="block";
                              document.getElementById("contenedor").style.display="none";
                           } else
                               {                            
                                  document.getElementById("divdatospersonales").innerHTML=xmlhttp.responseText;
                              // activeDatatable(); 
                                }
                           }                         
                    }
                                
                xmlhttp.open("GET",pagina,true);
                xmlhttp.send(null);             
                   
    }





function ActualizarDatosPersonalesAlumno(ruta,tabla,op)
{   var coddocentecad = document.getElementById('txtcodigo1').value;   
    var Nombre = document.getElementById('txtnombre').value;
    var ApellidoPaterno = document.getElementById('txtapepater').value;
    var ApellidoMaterno = document.getElementById('txtapemater').value;
    var email = document.getElementById('txtemail').value;
    
    var txtnrotelefono = document.getElementById('txtnrotelefono').value;
    var txtarea = document.getElementById('txtarea').value;

  
    var parametros="&codalu="+coddocentecad +
                   "&txtnombre="+Nombre+
                   "&txtapepater="+ApellidoPaterno+
                   "&txtapemater="+ApellidoMaterno+
                   "&txtemail="+email+
                   "&txtnrotelefono="+txtnrotelefono+
                   "&txtarea="+txtarea;
       
    var pagina=ruta+"/"+tabla+"Servlet?op="+op+parametros;
 
       var xmlhttp;
                if(window.XMLHttpRequest)
                {   xmlhttp=new XMLHttpRequest();
                }
                else
                {   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
                }
                xmlhttp.onreadystatechange=function()
                {   if(xmlhttp.readyState==4 && xmlhttp.status==200)
                    {        var   estado=xmlhttp.responseText;
                             var   num=0;
                             try 
                             {  num =parseInt(estado);
                             }
                             catch(e)
                             { 
                             }                           
                           if(num==1)
                           {   
                               direccionarAlumno();
                              document.getElementById("grande").style.display="block";
                              document.getElementById("contenedor").style.display="none";
                           }
                               else
                               {                            
                                  document.getElementById("divdatospersonales1").innerHTML=xmlhttp.responseText;
                              // activeDatatable(); 
                                }
                           }                         
                    }
                                
                xmlhttp.open("GET",pagina,true);
                xmlhttp.send(null);             
                   
    }



// Fin de Mantenimiento de la Tabla Docente >----- Hecho por Ivan <--------
// ----------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------
// Inicio de Mantenimiento de la Tabla Materia >----- Hecho por Ivan <--------
function grabarMateria(cod, ruta)
{
    var Nombre = document.getElementById('txtnombre').value;
    var Carrera = document.getElementById('cbocarrera').value;

    var parametros = '';
    if (Carrera == '')
    {
        jAlert("Seleccione la carrera profecional por favor!!!");
        document.form.txtnombre.focus();
        return;
    }
    else
    {
        if (Nombre == '')
        {
            jAlert("Ingresar la Materia por favor!!!");
            document.form.txtnombre.focus();
            return;
        }
        else
        {
            parametros = "txtnombre=" + Nombre + "&";
            parametros += "cbocarrera=" + Carrera + "&";
            parametros += "hddcodigo=" + cod;
            grabar(ruta, 'Materia', 4, parametros);
        }
    }
}

function ModificarMateria(cod, ruta)
{
    var Nombre = document.getElementById('txtnombre').value;
    var Carrera = document.getElementById('hddcodcar').value;
    var estado = document.getElementById('cboestado').value;

    var parametros = '';
    if (Carrera == '')
    {
        jAlert("Seleccione la carrera profecional por favor!!!");
        document.form.txtnombre.focus();
        return;
    }
    else
    {
        if (Nombre == '')
        {
            jAlert("Ingresar la Materia por favor!!!");
            document.form.txtnombre.focus();
            return;
        }
        else
        {
            parametros = "txtnombre=" + Nombre + "&";
            parametros += "hddcodcar=" + Carrera + "&";
            parametros += "hddcodigo=" + cod + "&";
            parametros += "cboestado=" + estado;
            modificar(ruta, 'Materia', 7, parametros);
        }
    }
}
// Fin de Mantenimiento de la Tabla Materia >----- Hecho por Ivan <--------
//----------------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------------
//Inicio de Mantenimiento de la Tabla Unidad Temática >----- Hecho por Ivan <--------
function grabarUnidadTematica(cod, ruta)
{
    var Carrera = document.getElementById('cbocarrera').value;
    var Materia = document.getElementById('cbomateria').value;
    var Nombre = document.getElementById('txtnombre').value;


    var parametros = '';
    if (!Carrera || Carrera == 0)
    {
        jAlert("Seleccione la carrera profecional por favor!!!");
        document.form.cbocarrera.focus();
        return;
    }
    else
    {
        if (!Materia || Materia == 0)
        {
            jAlert("Seleccione la Materia por favor!!!");
            document.form.cbomateria.focus();
            return;
        }
        else
        {
            if (!Nombre)
            {
                jAlert("Ingrese el nombre de la unidad Temática por favor!!!");
                document.form.txtnombre.focus();
                return;
            }
            else
            {
                parametros = "txtnombre=" + Nombre + "&";
                parametros += "cbocarrera=" + Carrera + "&";
                parametros += "hddcodigo=" + cod + "&";
                parametros += "cbomateria=" + Materia;
                grabar(ruta, 'UnidadTematica', 4, parametros);
            }
        }
    }
}

function ModificarUnidadTematica(cod, ruta)
{
    var Nombre = document.getElementById('txtnombre').value;
    var Carrera = document.getElementById('hddcarrera').value;
    var Materia = document.getElementById('hddmateria').value;
    var estado = document.getElementById('cboestado').value;

    var parametros = '';
    if (Carrera == '')
    {
        jAlert("Seleccione la carrera profecional por favor!!!");
        document.form.txtnombre.focus();
        return;
    }
    else
    {
        if (Nombre == '')
        {
            jAlert("Ingrese el nombre de la unidad Temática por favor!!!");
            document.form.txtnombre.focus();
            return;
        }
        else
        {
            parametros = "hddmateria=" + Materia + "&";
            parametros += "hddcarrera=" + Carrera + "&";
            parametros += "hddcodigo=" + cod + "&";
            parametros += "cboestado=" + estado + "&";
            parametros += "txtnombre=" + Nombre;
            modificar(ruta, 'UnidadTematica', 7, parametros);
        }
    }
}
// Fin de Mantenimiento de la Tabla Unidad Temática >----- Hecho por Ivan <--------
//----------------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------------
// Inicio de Mantenimiento de la Tabla Tema >----- Hecho por Ivan <-------- 
function grabarTema(cod, ruta)
{
    var Carrera = document.getElementById('cbocarrera').value;
    var Materia = document.getElementById('cbomateria').value;
    var UnidadTematica = document.getElementById('cbounidadtematica').value;
    var Nombre = document.getElementById('txtnombre').value;


    var parametros = '';
    if (!Carrera || Carrera == 0)
    {
        jAlert("Seleccione la carrera profecional por favor!!!");
        document.form.cbocarrera.focus();
        return;
    }
    else
    {
        if (!Materia || Materia == 0)
        {
            jAlert("Seleccione la Materia por favor!!!");
            document.form.cbomateria.focus();
            return;
        }
        else
        {
            if (!UnidadTematica || UnidadTematica == 0)
            {
                jAlert("Seleccione la Unidad tematica por favor!!!");
                document.form.UnidadTematica.focus();
                return;
            }
            else
            {
                if (!Nombre)
                {
                    jAlert("Ingrese el nombre del Tema por favor!!!");
                    document.form.txtnombre.focus();
                    return;
                }
                else
                {
                    parametros = "hddcodigo=" + cod + "&";
                    parametros += "cbocarrera=" + Carrera + "&";
                    parametros += "cbomateria=" + Materia + "&";
                    parametros += "cbounidadtematica=" + UnidadTematica + "&";
                    parametros += "txtnombre=" + Nombre;
                    grabar(ruta, 'Tema', 4, parametros);
                }
            }
        }
    }
}
function ModificarTema(cod, ruta)
{
    var Carrera = document.getElementById('hddcarrera').value;
    var Materia = document.getElementById('hddmateria').value;
    var UnidadTematica = document.getElementById('hddunidadtematica').value;
    var Nombre = document.getElementById('txtnombre').value;
    var Estado = document.getElementById('cboestado').value;

    var parametros = '';
    if (!Carrera || Carrera == 0)
    {
        jAlert("Seleccione la carrera profecional por favor!!!");
        document.form.cbocarrera.focus();
        return;
    }
    else
    {
        if (!Materia || Materia == 0)
        {
            jAlert("Seleccione la Materia por favor!!!");
            document.form.cbomateria.focus();
            return;
        }
        else
        {
            if (!UnidadTematica || UnidadTematica == 0)
            {
                jAlert("Seleccione la Unidad tematica por favor!!!");
                document.form.UnidadTematica.focus();
                return;
            }
            else
            {
                if (!Nombre)
                {
                    jAlert("Ingrese el nombre del Tema por favor!!!");
                    document.form.txtnombre.focus();
                    return;
                }
                else
                {
                    parametros = "hddcodigo=" + cod + "&";
                    parametros += "hddcarrera=" + Carrera + "&";
                    parametros += "hddmateria=" + Materia + "&";
                    parametros += "hddunidadtematica=" + UnidadTematica + "&";
                    parametros += "cboestado=" + Estado + "&";
                    parametros += "txtnombre=" + Nombre;
                    grabar(ruta, 'Tema', 7, parametros);
                }
            }
        }
    }
}
// Fin de Mantenimiento de la Tabla Tema >----- Hecho por Ivan <--------
//----------------------------------------------------------------------------------------------------------------

//----------------------------------------------------------------------------------------------------------------
// Inicio de Mantenimiento de la Tabla Dia >----- Hecho por Ivan <-------- 
function grabarDia(cod, ruta)
{
    var Nombre = document.getElementById('txtnombre').value;

    var parametros = '';

    if (!Nombre)
    {
        jAlert("Ingrese el nombre del Dia por favor!!!");
        document.form.txtnombre.focus();
        return;
    }
    else
    {
        parametros = "hddcodigo=" + cod + "&";
        parametros += "txtnombre=" + Nombre;
        grabar(ruta, 'Dia', 4, parametros);
    }



}
function ModificarDia(cod, ruta)
{
    var Nombre = document.getElementById('txtnombre').value;
    var Estado = document.getElementById('cboestado').value;

    var parametros = '';

    if (!Nombre)
    {
        jAlert("Ingrese el nombre del Dia por favor!!!");
        document.form.txtnombre.focus();
        return;
    }
    else
    {
        parametros = "hddcodigo=" + cod + "&";
        parametros += "txtnombre=" + Nombre + "&";
        parametros += "cboestado=" + Estado;
        modificar(ruta, 'Dia', 7, parametros);
    }
}
// Fin de Mantenimiento de la Tabla Turno >----- Hecho por Ivan <--------
//----------------------------------------------------------------------------------------------------------------

//----------------------------------------------------------------------------------------------------------------
// Inicio de Mantenimiento de la Tabla Turno >----- Hecho por Ivan <-------- 
function grabarTurno(cod, ruta)
{
    var Nombre = document.getElementById('txtnombre').value;

    var parametros = '';

    if (!Nombre)
    {
        jAlert("Ingrese el nombre del Turno por favor!!!");
        document.form.txtnombre.focus();
        return;
    }
    else
    {
        parametros = "hddcodigo=" + cod + "&";
        parametros += "txtnombre=" + Nombre;
        grabar(ruta, 'Turno', 4, parametros);
    }



}
function ModificarTurno(cod, ruta)
{
    var Nombre = document.getElementById('txtnombre').value;
    var Estado = document.getElementById('cboestado').value;

    var parametros = '';

    if (!Nombre)
    {
        jAlert("Ingrese el nombre del Turno por favor!!!");
        document.form.txtnombre.focus();
        return;
    }
    else
    {
        parametros = "hddcodigo=" + cod + "&";
        parametros += "txtnombre=" + Nombre + "&";
        parametros += "cboestado=" + Estado;
        modificar(ruta, 'Turno', 7, parametros);
    }
}
// Fin de Mantenimiento de la Tabla Turno >----- Hecho por Ivan <--------
//----------------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------------
// Inicio de Mantenimiento de la Tabla Tipo Examen >----- Hecho por Ivan <-------- 
function grabarTipoExamen(cod, ruta)
{
    var Nombre = document.getElementById('txtnombre').value;

    var parametros = '';

    if (!Nombre)
    {
        jAlert("Ingrese el nombre del Tipo de examen por favor!!!");
        document.form.txtnombre.focus();
        return;
    }
    else
    {
        parametros = "hddcodigo=" + cod + "&";
        parametros += "txtnombre=" + Nombre;
        grabar(ruta, 'TipoExamen', 4, parametros);
    }



}
function ModificarTipoExamen(cod, ruta)
{
    var Nombre = document.getElementById('txtnombre').value;
    var Estado = document.getElementById('cboestado').value;

    var parametros = '';

    if (!Nombre)
    {
        jAlert("Ingrese el nombre del Tipo de Examen por favor!!!");
        document.form.txtnombre.focus();
        return;
    }
    else
    {
        parametros = "hddcodigo=" + cod + "&";
        parametros += "txtnombre=" + Nombre + "&";
        parametros += "cboestado=" + Estado;
        modificar(ruta, 'TipoExamen', 7, parametros);
    }
}
// Fin de Mantenimiento de la Tabla Tipo Examen >----- Hecho por Ivan <--------
//----------------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------------
// Inicio de Mantenimiento de la Tabla Rol >----- Hecho por Ivan <-------- 
function grabarRol(cod, ruta)
{
    var Nombre = document.getElementById('txtnombre').value;

    var parametros = '';

    if (!Nombre)
    {
        jAlert("Ingrese el nombre del Rol por favor!!!");
        document.form.txtnombre.focus();
        return;
    }
    else
    {
        parametros = "hddcodigo=" + cod + "&";
        parametros += "txtnombre=" + Nombre;
        grabar(ruta, 'Rol', 4, parametros);
    }



}
function ModificarRol(cod, ruta)
{
    var Nombre = document.getElementById('txtnombre').value;
    var Estado = document.getElementById('cboestado').value;

    var parametros = '';

    if (!Nombre)
    {
        jAlert("Ingrese el nombre del Rol por favor!!!");
        document.form.txtnombre.focus();
        return;
    }
    else
    {
        parametros = "hddcodigo=" + cod + "&";
        parametros += "txtnombre=" + Nombre + "&";
        parametros += "cboestado=" + Estado;
        modificar(ruta, 'Rol', 7, parametros);
    }
}
// Fin de Mantenimiento de la Tabla Rol >----- Hecho por Ivan <--------
//----------------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------------
// Inicio de Mantenimiento de la Tabla Laboratorio >----- Hecho por Ivan <-------- 
function grabarLaboratorio(cod, ruta)
{
    var Nombre = document.getElementById('txtnombre').value;
    var NroPc = document.getElementById('txtnumpc').value;
    var parametros = '';

    if (!Nombre)
    {
        jAlert("Ingrese el nombre del Laboratorio por favor!!!");
        document.form.txtnombre.focus();
        return;
    }
    else
    {
        if (!NroPc || NroPc <= 0) {
            jAlert("Ingrese el Numero de PCs del Laboratorio por favor!!!");
            document.form.txtnombre.focus();
            return;
        } else {
            parametros = "hddcodigo=" + cod + "&";
            parametros += "txtnombre=" + Nombre + "&";
            parametros += "txtnumpc=" + NroPc;
            grabar(ruta, 'Laboratorio', 4, parametros);
        }
    }
}
function ModificarLaboratorio(cod, ruta)
{
    var Nombre = document.getElementById('txtnombre').value;
    var NroPc = document.getElementById('txtnumpc').value;
    var Estado = document.getElementById('cboestado').value;
    var parametros = '';

    if (!Nombre)
    {
        jAlert("Ingrese el nombre del Laboratorio por favor!!!");
        document.form.txtnombre.focus();
        return;
    }
    else
    {
        if (!NroPc || NroPc <= 0) {
            jAlert("Ingrese el Numero de PCs del Laboratorio por favor!!!");
            document.form.txtnombre.focus();
            return;
        } else {
            parametros = "hddcodigo=" + cod + "&";
            parametros += "txtnombre=" + Nombre + "&";
            parametros += "txtnumpc=" + NroPc + "&";
            parametros += "cboestado=" + Estado;
            grabar(ruta, 'Laboratorio', 7, parametros);
        }
    }
}
// Fin de Mantenimiento de la Tabla Laboratorio >----- Hecho por Ivan <--------
//----------------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------------
// Inicio de Mantenimiento de la Tabla Nivel Dificultad >----- Hecho por Ivan <-------- 
function grabarNivelDificultad(cod, ruta)
{
    var Nombre = document.getElementById('txtnombre').value;

    var parametros = '';

    if (!Nombre)
    {
        jAlert("Ingrese el nombre del Nivel de Dificultad por favor!!!");
        document.form.txtnombre.focus();
        return;
    }
    else
    {
        parametros = "hddcodigo=" + cod + "&";
        parametros += "txtnombre=" + Nombre;
        grabar(ruta, 'NivelDificultad', 4, parametros);
    }



}
function ModificarNivelDificultad(cod, ruta)
{
    var Nombre = document.getElementById('txtnombre').value;
    var Estado = document.getElementById('cboestado').value;

    var parametros = '';

    if (!Nombre)
    {
        jAlert("Ingrese el nombre del Nivel de Dificultad por favor!!!");
        document.form.txtnombre.focus();
        return;
    }
    else
    {
        parametros = "hddcodigo=" + cod + "&";
        parametros += "txtnombre=" + Nombre + "&";
        parametros += "cboestado=" + Estado;
        modificar(ruta, 'NivelDificultad', 7, parametros);
    }
}
// Fin de Mantenimiento de la Tabla Tipo Nivel Dificultad >----- Hecho por Ivan <--------
//----------------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------------
// Inicio de Mantenimiento de la Tabla Coordinador de la materia >----- Hecho por Ivan <-------- 
function cargarDocenteMateria(ruta, tabla, op, carrera, materia, docente) {

    var pagina = ruta + "/" + tabla + "Servlet?op=" + op + "&codcar=" + carrera + "&codmat=" + materia + "&coddoc=" + docente;
    var xmlhttp;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("divdocente").innerHTML = xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);

}
function nuevoCoordinador(Ruta) {
    event.preventDefault();
    event.stopPropagation();
    document.getElementById('cbocarrera').value = 0;
    cargarMateria(Ruta, 'Materia', 13, 0)
    cargarDocenteMateria(Ruta, 'DefinirCoordinador', 7, 0, 0, 0);
}
function modificarCoordinador(Ruta, CODROLXDOCENTE, CODCARRERA, CODMATERIA, CODDOCENTE) {
    event.preventDefault();
    event.stopPropagation();
    document.getElementById('cbocarrera').value = CODCARRERA;
    cargarMateria(Ruta, 'Materia', 13, CODCARRERA, CODMATERIA)
    cargarDocenteMateria(Ruta, 'DefinirCoordinador', 7, CODCARRERA, CODMATERIA, CODDOCENTE);

    document.getElementById('hddcodigo').value = CODROLXDOCENTE;
    document.getElementById('btnActualizar').style.display = "block";
    document.getElementById('btnGuardar').style.display = "none";
}
function eliminarCoordinador(Ruta, CODCOOR) {
    eliminar(Ruta, 'DefinirCoordinador', 6, 'hddcodigo=' + CODCOOR);
}
function guardarCoordinador(cod, ruta)
{
    event.preventDefault();
    event.stopPropagation();
    var Carrera = document.getElementById('cbocarrera').value;
    var Materia = document.getElementById('cbomateria').value;
    var Docente = document.getElementById('cbodocente').value;

    var parametros = '';

    if (!Carrera || Carrera == 0)
    {
        jAlert("Seleccione la carrera profecional por favor!!!");
        document.form.cbocarrera.focus();
        return;
    }
    else
    {
        if (!Materia || Materia == 0)
        {
            jAlert("Seleccione la Materia por favor!!!");
            document.form.cbomateria.focus();
            return;
        }
        else
        {
            if (!Docente || Docente == 0)
            {
                jAlert("Seleccione el Docente por favor!!!");
                document.form.cbodocente.focus();
                return;
            }
            else
            {
                parametros = "hddcodigo=" + cod + "&";
                parametros += "cbocarrera=" + Carrera + "&";
                parametros += "cbomateria=" + Materia + "&";
                parametros += "cbodocente=" + Docente;
                grabar(ruta, 'DefinirCoordinador', 4, parametros);
                //CallMant(ruta,'DefinirCoordinador',1,'')
            }
        }
    }
}
function actualizarCoordinador(ruta)
{
    event.preventDefault();
    event.stopPropagation();
    var Codigo = document.getElementById('hddcodigo').value;
    var Carrera = document.getElementById('cbocarrera').value;
    var Materia = document.getElementById('cbomateria').value;
    var Docente = document.getElementById('cbodocente').value;

    var parametros = '';

    if (!Carrera || Carrera == 0)
    {
        jAlert("Seleccione la carrera profecional por favor!!!");
        document.form.cbocarrera.focus();
        return;
    }
    else
    {
        if (!Materia || Materia == 0)
        {
            jAlert("Seleccione la Materia por favor!!!");
            document.form.cbomateria.focus();
            return;
        }
        else
        {
            if (!Docente || Docente == 0)
            {
                jAlert("Seleccione el Docente por favor!!!");
                document.form.cbodocente.focus();
                return;
            }
            else
            {
                parametros = "hddcodigo=" + Codigo + "&";
                parametros += "cbocarrera=" + Carrera + "&";
                parametros += "cbomateria=" + Materia + "&";
                parametros += "cbodocente=" + Docente;
                modificar(ruta, 'DefinirCoordinador', 5, parametros);
                //CallMant(ruta,'DefinirCoordinador',1,'')
            }
        }
    }
}
// Fin de Mantenimiento de la Tabla Coordinador de la materia >----- Hecho por Ivan <--------
//----------------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------------
// Inicio de Mantenimiento de la Tabla Alumno >----- Hecho por Ivan <-------- 


function colocarFocoComboAlumno()
{
    document.getElementById('txtnombre').focus();
}


function grabarAlumno(cod, ruta)
{  var codcarrera = document.getElementById('cbocarrera').value;
    var Nombre = document.getElementById('txtnombre').value;
    var ApellidoPaterno = document.getElementById('txtapelpate').value;
    var ApellidoMaterno = document.getElementById('txtapelmate').value;
    var Usuario = document.getElementById('txtusuario').value;
    var Clave = document.getElementById('txtclave').value;

    var parametros = '';

    if (Nombre == '')
    {
        jAlert("Ingresar el Nombre por favor!!!");
        document.form.txtnombre.focus();
        return;
    }
    else
    {
        if (ApellidoPaterno == '')
        {
            jAlert("Ingresar el Apellido paterno por favor!!!");
            document.form.txtnombre.focus();
            return;
        }
        else
        {
            if (ApellidoMaterno == '')
            {
                jAlert("Ingresar el Apellido materno por favor!!!");
                document.form.txtnombre.focus();
                return;
            }
            else
            {
                if (Usuario == '')
                {
                    jAlert("Ingresar el Usuario por favor!!!");
                    document.form.txtnombre.focus();
                    return;
                } else {
                    if (Clave == '') {
                        jAlert("Ingresar la Clave por favor!!!");
                        document.form.txtnombre.focus();
                        return;
                    } else {
                        parametros = "cbocarrera=" + codcarrera + "&";
                        parametros += "txtnombre=" + Nombre + "&";
                        parametros += "txtapelpate=" + ApellidoPaterno + "&";
                        parametros += "txtapelmate=" + ApellidoMaterno + "&";
                        parametros += "txtusuario=" + Usuario + "&";
                        parametros += "txtclave=" + Clave + "&";
                        parametros += "hddcodigo=" + cod;
                        grabar(ruta, 'Alumno', 4, parametros);
                    }
                }
            }
        }
    }
}

function ModificarAlumno(cod, ruta)
{   var codcarrera = document.getElementById('cbocarrera').value;
    var Nombre = document.getElementById('txtnombre').value;
    var ApellidoPaterno = document.getElementById('txtapelpate').value;
    var ApellidoMaterno = document.getElementById('txtapelmate').value;
    var Usuario = document.getElementById('txtusuario').value;
    var Clave = document.getElementById('txtclave').value;
    var estado = document.form.cboestado.value;

    var parametros = '';

    if (Nombre == '')
    {
        jAlert("Ingresar el Nombre por favor!!!");
        document.form.txtnombre.focus();
        return;
    }
    else
    {
        if (ApellidoPaterno == '')
        {
            jAlert("Ingresar el Apellido paterno por favor!!!");
            document.form.txtnombre.focus();
            return;
        }
        else
        {
            if (ApellidoMaterno == '')
            {
                jAlert("Ingresar el Apellido materno por favor!!!");
                document.form.txtnombre.focus();
                return;
            }
            else
            {
                if (Usuario == '')
                {
                    jAlert("Ingresar el Usuario por favor!!!");
                    document.form.txtnombre.focus();
                    return;
                } else {
                    if (Clave == '') {
                        jAlert("Ingresar la Clave por favor!!!");
                        document.form.txtnombre.focus();
                        return;
                    } else {
                        parametros = "cbocarrera=" + codcarrera + "&";
                        parametros += "txtnombre=" + Nombre + "&";
                        parametros += "txtapelpate=" + ApellidoPaterno + "&";
                        parametros += "txtapelmate=" + ApellidoMaterno + "&";
                        parametros += "txtusuario=" + Usuario + "&";
                        parametros += "txtclave=" + Clave + "&";
                        parametros += "cboestado=" + estado + "&";
                        parametros += "hddcodigo=" + cod;
                        modificar(ruta, 'Alumno', 7, parametros);
                    }
                }
            }
        }
    }
}
// Fin de Mantenimiento de la Tabla Alumno >----- Hecho por Ivan <--------
// Inicio de Mantenimiento de registro de horarios de laboratorio>----- Hecho por Ivan <--------          
function nuevoHorario(ruta) {
    CallMant(ruta, 'RegistrarHorarioLaboratorio', 1, '');
}
function guardarHorario(ruta) {
    var semestre = document.getElementById("cbosemestre").value;
    var laboratorio = document.getElementById("cbolaboratorio").value;
    var turno = document.getElementById("cboturno").value;
    var dia = document.getElementById("cbodia").value;
    var horainicio = document.getElementById("tmehorainicio").value;
    var horafin = document.getElementById("tmehorafin").value;

    if (semestre == 0) {
        alert("Es necesario seleccionar el Semestre");
        document.getElementById("cbosemestre").focus();
        return false;
    } else if (laboratorio == 0) {
        alert("Es necesario seleccionar un Laboratorio");
        document.getElementById("cbolaboratorio").focus();
        return false;
    } else if (turno == 0) {
        alert("Es necesario seleccionar el Turno");
        document.getElementById("cboturno").focus();
        return false;
    } else if (dia == 0) {
        alert("Es necesario seleccionar el Día");
        document.getElementById("cbodia").focus();
        return false;
    } else if (horainicio == 0) {
        alert("Es necesario seleccionar el Día");
        document.getElementById("tmehorainicio").focus();
        return false;
    } else if (horafin == 0) {
        alert("Es necesario seleccionar el Día");
        document.getElementById("tmehorafin").focus();
        return false;
    } else {
        var objHorariodeLabDisBean = new Object();
        objHorariodeLabDisBean.CODHORARIOLAB = 0;
        objHorariodeLabDisBean.CODSEMESTRE = semestre;
        objHorariodeLabDisBean.CODLAB = laboratorio;
        objHorariodeLabDisBean.CODTURNO = turno;
        objHorariodeLabDisBean.CODDIA = dia;
        objHorariodeLabDisBean.HORAINICIO = horainicio;
        objHorariodeLabDisBean.HORAFIN = horafin;
        objHorariodeLabDisBean.ESTADO = "A";
        var pagina = ruta + "/RegistrarHorarioLaboratorioServlet?op=" + 3;
        $.ajax({
            type: 'POST',
            url: pagina,
            //    dataType: 'JSON',
            data: {
                HorariodeLabDisBean: JSON.stringify(objHorariodeLabDisBean)
            }, //'lista0='+lista0+'&lista1='+lista1+'&lista2='+lista2+'&lista3='+lista3+'&lista4='+lista4+'&lista5='+lista5+'&cbosemestre='+cbosemestre+'&cbocarrera='+cbocarrera+'&cbomateria='+cbomateria1+'&cbounidadtematica='+cbounidadtematica1+'&cbotema='+cbotema1+'&codigoestructura='+cod+"&cbotipoexamen="+cbotipoexamen,
            success: function (data) {
                CallMant(ruta, 'RegistrarHorarioLaboratorio', 1, '');
            }
        });
    }
}
function modificarHorario(Ruta, codigo, semestre, laboratorio, turno, dia, horainicio, horafin) {
    document.getElementById("cbosemestre").value = semestre;
    document.getElementById("cbolaboratorio").value = laboratorio;
    document.getElementById("cboturno").value = turno;
    document.getElementById("cbodia").value = dia;
    document.getElementById("tmehorainicio").value = horainicio;
    document.getElementById("tmehorafin").value = horafin;
    document.getElementById("hddcodigo").value = codigo;

    document.getElementById('btnActualizar').style.display = 'block';
    document.getElementById('btnGuardar').style.display = 'none';
    return false;
}
function actualizarHorario(ruta) {
    var semestre = document.getElementById("cbosemestre").value;
    var laboratorio = document.getElementById("cbolaboratorio").value;
    var turno = document.getElementById("cboturno").value;
    var dia = document.getElementById("cbodia").value;
    var horainicio = document.getElementById("tmehorainicio").value;
    var horafin = document.getElementById("tmehorafin").value;
    var codigo = document.getElementById("hddcodigo").value;

    if (semestre == 0) {
        alert("Es necesario seleccionar el Semestre");
        document.getElementById("cbosemestre").focus();
        return false;
    } else if (laboratorio == 0) {
        alert("Es necesario seleccionar un Laboratorio");
        document.getElementById("cbolaboratorio").focus();
        return false;
    } else if (turno == 0) {
        alert("Es necesario seleccionar el Turno");
        document.getElementById("cboturno").focus();
        return false;
    } else if (dia == 0) {
        alert("Es necesario seleccionar el Día");
        document.getElementById("cbodia").focus();
        return false;
    } else if (horainicio == 0) {
        alert("Es necesario seleccionar el Día");
        document.getElementById("tmehorainicio").focus();
        return false;
    } else if (horafin == 0) {
        alert("Es necesario seleccionar el Día");
        document.getElementById("tmehorafin").focus();
        return false;
    } else {
        var objHorariodeLabDisBean = new Object();
        objHorariodeLabDisBean.CODHORARIOLAB = codigo;
        objHorariodeLabDisBean.CODSEMESTRE = semestre;
        objHorariodeLabDisBean.CODLAB = laboratorio;
        objHorariodeLabDisBean.CODTURNO = turno;
        objHorariodeLabDisBean.CODDIA = dia;
        objHorariodeLabDisBean.HORAINICIO = horainicio;
        objHorariodeLabDisBean.HORAFIN = horafin;
        objHorariodeLabDisBean.ESTADO = "A";
        var pagina = ruta + "/RegistrarHorarioLaboratorioServlet?op=" + 4;
        $.ajax({
            type: 'POST',
            url: pagina,
            //    dataType: 'JSON',
            data: {
                HorariodeLabDisBean: JSON.stringify(objHorariodeLabDisBean)
            }, //'lista0='+lista0+'&lista1='+lista1+'&lista2='+lista2+'&lista3='+lista3+'&lista4='+lista4+'&lista5='+lista5+'&cbosemestre='+cbosemestre+'&cbocarrera='+cbocarrera+'&cbomateria='+cbomateria1+'&cbounidadtematica='+cbounidadtematica1+'&cbotema='+cbotema1+'&codigoestructura='+cod+"&cbotipoexamen="+cbotipoexamen,
            success: function (data) {
                CallMant(ruta, 'RegistrarHorarioLaboratorio', 1, '');
            }
        });
    }
}
function eliminarHorario(ruta, codigo) {

    var pagina = ruta + "/RegistrarHorarioLaboratorioServlet?op=" + 5 + "&hddcodigo=" + codigo;
    $.ajax({
        type: 'POST',
        url: pagina,
        //    dataType: 'JSON',
        /*data: {
         HorariodeLabDisBean: JSON.stringify(objHorariodeLabDisBean)
         },*/ //'lista0='+lista0+'&lista1='+lista1+'&lista2='+lista2+'&lista3='+lista3+'&lista4='+lista4+'&lista5='+lista5+'&cbosemestre='+cbosemestre+'&cbocarrera='+cbocarrera+'&cbomateria='+cbomateria1+'&cbounidadtematica='+cbounidadtematica1+'&cbotema='+cbotema1+'&codigoestructura='+cod+"&cbotipoexamen="+cbotipoexamen,
        success: function (data) {
            CallMant(ruta, 'RegistrarHorarioLaboratorio', 1, '');
        }
    });

}
function cargarRegistroHorarioLab(ruta) {
    document.getElementById("divlistado").innerHTML = "";
    var semestre = document.form.cbosemestre.value;
    var laboratorio = document.form.cbolaboratorio.value;
    var turno = document.form.cboturno.value;
    var dia = document.form.cbodia.value;
    var pagina = ruta + "/RegistrarHorarioLaboratorioServlet?op=6&SEMESTRE=" + semestre + "&LABORATORIO=" + laboratorio + "&TURNO=" + turno + "&DIA=" + dia;
    var xmlhttp;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    }
    else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("divlistado").innerHTML = xmlhttp.responseText;
            activeDatatable();
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
    activeDatatable();
}
// Fin de Mantenimiento de registro de horarios de laboratorio >----- Hecho por Ivan <--------     
// Inicio de Mantenimiento de Programacion de examen>----- Hecho por Ivan <--------    
function traerCodEstrucExamen(Ruta) {
    var semestre = document.form.cbosemestre.value;
    var carrera = document.form.cbocarrera.value;
    var tipoexamen = document.form.cbotipoexamen.value;
    var materia = document.form.cbomateria.value;
    if (semestre != 0 && carrera != 0 && tipoexamen != 0 && materia != 0)

    {
        var pagina = Ruta + "/ProgramarExamenServlet?op=5&SEMESTRE=" + semestre + "&CARRERA=" + carrera + "&TIPOEXAMEN=" + tipoexamen + "&MATERIA=" + materia;
        var xmlhttp;
        if (window.XMLHttpRequest) {
            xmlhttp = new XMLHttpRequest();
        }
        else {
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("divcodigos").innerHTML = xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET", pagina, true);
        xmlhttp.send(null);
        document.getElementById("btnnulo").style.display = 'none';
        document.getElementById("btnAdicionarHorario").style.display = 'block';
    } else {
        document.getElementById("btnAdicionarHorario").style.display = 'none';
        document.getElementById("btnnulo").style.display = 'block';
    }
}
function cargarProgramacionExamen(Ruta) {
    var semestre = document.getElementById('cbosemestre').value;
    var carrera = document.getElementById('cbocarrera').value;
    var tipoexamen = document.getElementById('cbotipoexamen').value;
    var materia = document.getElementById('cbomateria').value;
    var pagina = Ruta + "/ProgramarExamenServlet?op=4&SEMESTRE=" + semestre + "&CARRERA=" + carrera + "&TIPOEXAMEN=" + tipoexamen + "&MATERIA=" + materia;
    var xmlhttp;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    }
    else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("divlistado").innerHTML = xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
}
function cargarProgramacionExamen2(Ruta) {
    var semestre = document.getElementById('hddsemestre').value;
    var carrera = document.getElementById('hddcarrera').value;
    var tipoexamen = document.getElementById('hddtipoexamen').value;
    var materia = document.getElementById('hddmateria').value;
    /*
     var semestre = document.form.hddsemestre.value;
     var carrera = document.form.hddcarrera.value;
     var tipoexamen = document.form.hddtipoexamen.value;
     var materia = document.form.hddmateria.value;*/
    var pagina = Ruta + "/ProgramarExamenServlet?op=4&SEMESTRE=" + semestre + "&CARRERA=" + carrera + "&TIPOEXAMEN=" + tipoexamen + "&MATERIA=" + materia;
    var xmlhttp;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    }
    else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("divlistado").innerHTML = xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
}
function adicionarhorario(Ruta) {
    var objEstructuraExamenBean = new Object();
    objEstructuraExamenBean.CODESTRUCEXAMEN = document.getElementById("hddcodestrucexamen").value;
    objEstructuraExamenBean.CODSEMESTRE = document.getElementById("hddsemestre").value;
    objEstructuraExamenBean.CODTIPEXAMEN = document.getElementById("hddtipoexamen").value;
    objEstructuraExamenBean.CODCARRERA = document.getElementById("hddcarrera").value;
    objEstructuraExamenBean.CODMATERIA = document.getElementById("hddmateria").value;

    var pagina = Ruta + "/ConsultarHorariosServlet?op=" + 1;
    $.ajax({
        type: 'POST',
        url: pagina,
        data: {
            objEstructuraExamenBean: JSON.stringify(objEstructuraExamenBean)
        },
        success: function (data) {
            CallMant(ruta, 'RegistrarHorarioLaboratorio', 1, '');
        }
    });
}

function LlenarEstructuraExamen(Ruta) {
    var objEstructuraExamenBean = new Object();
    objEstructuraExamenBean.CODSEMESTRE = document.getElementById("cbosemestre").value;
    objEstructuraExamenBean.CODTIPEXAMEN = document.getElementById("cbotipoexamen").value;
    objEstructuraExamenBean.CODCARRERA = document.getElementById("cbocarrera").value;
    objEstructuraExamenBean.CODMATERIA = document.getElementById("cbomateria").value;

    var pagina = Ruta + "/EstructuraExamenServlet?op=15";
    $.ajax({
        type: 'POST',
        url: pagina,
        //    dataType: 'JSON',
        data: {
            objEstructuraExamenBean: JSON.stringify(objEstructuraExamenBean),
        },
        success: function (data) {
            document.getElementById("divTableEstructura").innerHTML = data;
            activeDatatable();
            //CallMant(ruta, 'EstructuraExamen', 11, '');
            /*$('#divtabla').html(data);
             activeDatatable();   */
        }
    });


}

function filtrarProgramacionMateria(Ruta) {
    var objProgramacionMateriaBean = new Object();
    objProgramacionMateriaBean.CODCARRERA = document.getElementById("cbocarrera").value;
    objProgramacionMateriaBean.CODMATERIA = document.getElementById("cbomateria").value;
    objProgramacionMateriaBean.CODSEMESTRE = document.getElementById("cbosemestre").value;

    var pagina = Ruta + "/ProgramacionMateriaServlet?op=2";
    $.ajax({
        type: 'POST',
        url: pagina,
        //    dataType: 'JSON',
        data: {
            objProgramacionMateriaBean: JSON.stringify(objProgramacionMateriaBean),
        },
        success: function (data) {
            document.getElementById("divTableProgramacionMateria").innerHTML = data;
            activeDatatable();
            //CallMant(ruta, 'EstructuraExamen', 11, '');
            /*$('#divtabla').html(data);
             activeDatatable();   */
        }
    });
}
function AsignarFiltroProgramacionMateria(Ruta) {
    document.getElementById("cbomateria").setAttribute("onChange", "javascript:filtrarProgramacionMateria ('" + Ruta + "');");
}
// LA TABLA  SEMESTRE
function nuevaProgramacionMateria(Ruta, Codigo) {
    var ProgramacionMateriaBean = new Object();
    ProgramacionMateriaBean.CODPROGRAMAT = Codigo;

    var pagina = Ruta + "/ProgramacionMateriaServlet?op=3";
    $.ajax({
        type: 'POST',
        url: pagina,
        //    dataType: 'JSON',
        data: {
            ProgramacionMateriaBean: JSON.stringify(ProgramacionMateriaBean),
        },
        success: function (data) {
            document.getElementById("DivModal").innerHTML = data;
            crearModalProgramacionMateria(Ruta, Codigo);
            //CallMant(ruta, 'EstructuraExamen', 11, '');
            /*$('#divtabla').html(data);
             activeDatatable();   */
        }
    });
}

function crearModalProgramacionMateria(Ruta, Codigo) {

    var buttons = new Object();
    if (Codigo == 0)
    {
        buttons.Guardar = function () {

            var objProgramacionMateriaBean = new Object();
            objProgramacionMateriaBean.CODCARRERA = document.getElementById("cbocarrera1").value;
            objProgramacionMateriaBean.CODMATERIA = document.getElementById("divmateria2").children.cbomateria.value;
            objProgramacionMateriaBean.CODSEMESTRE = document.getElementById("cbosemestre1").value;
            objProgramacionMateriaBean.CODDOCENTE = document.getElementById("cboDocente").value;
            var pagina = Ruta + "/ProgramacionMateriaServlet?op=5";
            $.ajax({
                type: 'POST',
                url: pagina,
                data: {
                    objProgramacionMateriaBean: JSON.stringify(objProgramacionMateriaBean),
                },
                success: function (data) {
                    $('#ModalProgramacionMateria').dialog('close');
                    CallMant(Ruta, 'ProgramacionMateria', 1, '')
                }
            });
        }
        buttons.Cancelar = function () {
            $('#ModalProgramacionMateria').dialog('close');
        }
    } else {
        buttons.Modificar = function () {
            var objProgramacionMateriaBean = new Object();
            objProgramacionMateriaBean.CODCARRERA = document.getElementById("cbocarrera1").value;
            objProgramacionMateriaBean.CODMATERIA = document.getElementById("divmateria2").children.cbomateria.value;
            objProgramacionMateriaBean.CODSEMESTRE = document.getElementById("cbosemestre1").value;
            objProgramacionMateriaBean.CODDOCENTE = document.getElementById("cboDocente").value;
            objProgramacionMateriaBean.CODPROGRAMAT = document.getElementById("hddCODPROGRAMAT").value;

            var pagina = Ruta + "/ProgramacionMateriaServlet?op=6";
            $.ajax({
                type: 'POST',
                url: pagina,
                data: {
                    objProgramacionMateriaBean: JSON.stringify(objProgramacionMateriaBean),
                },
                success: function (data) {
                    $('#ModalProgramacionMateria').dialog('close');
                    CallMant(Ruta, 'ProgramacionMateria', 1, '')
                }
            });
        }
        buttons.Cancelar = function () {
            $('#ModalProgramacionMateria').dialog('close');
        }
    }

    $('#ModalProgramacionMateria').dialog({
        autoOpen: false,
        modal: true,
        title: "Registrar Programacion Materia",
        zIndex: 10000,
        width: '400',
        open: function () {
            if (Codigo != 0) {
                var CodCarrera = document.getElementById('hddCODCARRERA').value;
                var CodDocente = document.getElementById('hddCODDOCENTE').value;
                var CodMateria = document.getElementById('hddCODMATERIA').value;
                var CodSemestre = document.getElementById('hddCODSEMESTRE').value;

                document.getElementById('cbocarrera1').value = CodCarrera;
                cargarMateria(Ruta, 'Materia', 11, CodCarrera, 0, 'divmateria2')
                document.getElementById('divmateria2').children.cbomateria.value = CodMateria;
                document.getElementById('cbosemestre1').value = CodSemestre;
                AsignarFiltroDocenteMateria(Ruta);
                FiltrarDocentesProgramarMateria(Ruta);
                document.getElementById('cboDocente').value = CodDocente;

            }
        },
        buttons: buttons,
        close: function (event, ui) {
            event.target.parentElement.remove();
        }
    });

    $('#ModalProgramacionMateria').dialog('open');
}
function grabarSemestre(cod, ruta)
{
    var nomb = document.getElementById('txtnombre').value;
    var fecini = document.getElementById('txtfechainicio').value;
    var fecfin = document.getElementById('txtfechafin').value;
    var parametros = '';
    if (nomb == '')
    {
        jAlert("Ingresar por favor el Nombre !!!");
        document.form.txtnombre.focus();
        return;
    }
    else
    {
        if (fecini == '')
        {
            jAlert("Ingresar por favor la Fecha de Inicio !!!");
            document.form.txtfechainicio.focus();
            return;
        }
        else
        {
            if (fecfin == '')
            {
                jAlert("Ingresar por favor la Fecha de Fin !!!");
                document.form.txtfechafin.focus();
                return;
            }
            else {
                if ((Date.parse(fecini)) > (Date.parse(fecfin)))
                {
                    jAlert("La fecha de inicio no puede ser mayor a la fecha final.");
                    document.form.txtfechainicio.focus();
                    return;
                }
                else
                {
                    parametros = "txtnombre=" + nomb + "&txtfechainicio=" + fecini + "&txtfechafin=" + fecfin + "&hddcodigo=" + cod;
                    grabar(ruta, 'Semestre', 4, parametros);
                }
            }
        }
    }
}

function  modificarSemestre(cod, ruta)
{
    var parametros = '';
    var nomb = document.form.txtnombre.value;
    var fecini = document.form.txtfechainicio.value;
    var fecfin = document.form.txtfechafin.value;
    var estado = document.form.cboestado.value;
    if (nomb == '') {
        jAlert("Ingresar por favor el Nombre !!!");
        document.form.txtnombre.focus();
        return;
    } else if (fecini == '') {
        jAlert("Ingresar por favor la Fecha de Inicio !!!");
        document.form.txtfechainicio.focus();
        return;
    } else if (fecfin == '') {
        jAlert("Ingresar por favor la Fecha de Fin !!!");
        document.form.txtfechafin.focus();
        return;
    } else {
        parametros = "txtnombre=" + nomb + "&txtfechainicio=" + fecini + "&txtfechafin=" + fecfin + "&hddcodigo=" + cod + "&cboestado=" + estado;
        modificar(ruta, 'Semestre', 7, parametros);


    }
}

// MENU DEL  MANTENIMIENTO DE  LAS  TABLAS  -------------------------------------------


//--------------------------------------------------------------------------------------
//METODOS  DE  REGISTRAR    PREGUNTAS(BANCO DE  PREGUNTAS )


function salirPregunta() {
    document.form.action = "<%=request.getContextPath()%>/PreguntaServlet";
    document.form.method = "GET";
    document.form.op.value = "5";
    document.form.submit();
}
function cargarFocoPregunta() {
    document.form.txtpregunta.focus();
}




function GrabarPreguntaAjax(pagina) {
    var xmlhttp;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("contenido").innerHTML = xmlhttp.responseText;
            activeDatatable();
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
}
function ActualizarPreguntaAjax(pagina) {
    var xmlhttp;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("contenido").innerHTML = xmlhttp.responseText;
            activeDatatable();
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
}
function GrabarPregunta(ruta, tabla, op, codigopreg) {
    var pagina = "";
    var nive = document.getElementById('cbonivel').value;
    var carpro = document.getElementById('cbocarrera').value;
    var mate = document.getElementById('cbomateria').value;
    var unid = document.getElementById('cbounidadtematica').value;
    var tema = document.getElementById('cbotema').value;
    var nivel = document.getElementById('cbonivel').value;
    var preg = document.getElementById('txtpregunta1').value;
    var cborespuestaok = document.getElementById('cborespuestaok').value;
    var alternativaA = document.getElementById('alternativaA').value;
    var alternativaB = document.getElementById('alternativaB').value;
    var alternativaC = document.getElementById('alternativaC').value;
    var alternativaD = document.getElementById('alternativaD').value;
    var alternativaE = document.getElementById('alternativaE').value;
    var enunciadoAyudas1, enunciadoAyudas2, enunciadoAyudas3, enunciadoAyudas4, enunciadoAyudas5;
    if (carpro == "0") {
        jAlert("Es necesario seleccionar una Carrera Profesional !!!", 'Validacion');
        document.getElementById('cbocarrera').focus();
        return;
    } else if (mate == "0") {
        jAlert("Es necesario seleccionar una Materia !!!", 'Validacion');
        document.getElementById('cbomateria').focus();
        return;
    } else if (unid == "0") {
        jAlert("Es necesario seleccionar Unidad Temática !!!", 'Validacion');
        document.getElementById('cbounidadtematica').focus();
        return;
    } else if (tema == "0") {
        jAlert("Es necesario seleccionar Tema !!!", 'Validacion');
        document.getElementById('cbotema').focus();
        return;
    } else if (nive == "0") {
        jAlert("Es necesario seleccionar Nivel !!!", 'Validacion');
        document.getElementById('cbonivel').focus();
        return;
    } else if (preg == "") {
        jAlert("Es necesario Ingresar la  Pregunta !!!", 'Validacion');
        document.getElementById('txtpregunta').focus();
        return;
    } else if (alternativaA == "") {
        jAlert("Es necesario Ingresar la primera Alternativa !!!", 'Validacion');
        document.getElementById('alternativaA').focus();
        return;
    } else if (alternativaB == "") {
        jAlert("Es necesario Ingresar la segunda Alternativa !!!", 'Validacion');
        document.getElementById('alternativaB').focus();
        return;
    } else if (alternativaC == "") {
        jAlert("Es necesario Ingresar la tercera Alternativa !!!", 'Validacion');
        document.getElementById('alternativaC').focus();
        return;
    } else if (alternativaD == "") {
        jAlert("Es necesario Ingresar la cuarta Alternativa !!!", 'Validacion');
        document.getElementById('alternativaD').focus();
        return;
    } else if (alternativaE == "") {
        jAlert("Es necesario Ingresar la quinta Alternativa !!!", 'Validacion');
        document.getElementById('alternativaE').focus();
        return;
    } else if (nivel == 1) {
        pagina = ruta + "/" + tabla + "Servlet?op=" + op +
                "&CODPREG=" + codigopreg + "&cborespuestaok=" + cborespuestaok + "&CODCAR=" +
                carpro + "&CODMAT=" + mate + "&CODUNID=" +
                unid + "&CODTEMA=" + tema + "&CODNIVEL=" +
                nivel + "&TXTPREG=" + preg + "&alternativaA=" + alternativaA + "&alternativaB=" +
                alternativaB + "&alternativaC=" + alternativaC + "&alternativaD=" + alternativaD+ "&alternativaE=" + alternativaE;
        GrabarPreguntaAjax(pagina);
    } else if (nivel == 2) {
        enunciadoAyudas1 = document.getElementById('enunciadoAyudas1').value;
        
        if (enunciadoAyudas1 == "") {
            jAlert("Es necesario Ingresar la primera Ayuda por  Favor !!!", 'Validacion');
           document.getElementById('enunciadoAyudas1').focus();
            return;
        }
        else {
            pagina = ruta + "/" + tabla + "Servlet?op=" + op +
                    "&CODPREG=" + codigopreg + "&cborespuestaok=" + cborespuestaok + "&CODCAR=" +
                    carpro + "&CODMAT=" + mate + "&CODUNID=" +
                    unid + "&CODTEMA=" + tema + "&CODNIVEL=" +
                    nivel + "&TXTPREG=" + preg + "&alternativaA=" + alternativaA + "&alternativaB=" +
                    alternativaB + "&alternativaC=" + alternativaC + "&alternativaD=" + alternativaD +"&alternativaE=" + alternativaE+"&enunciadoAyudas1=" + enunciadoAyudas1;
            GrabarPreguntaAjax(pagina);
        }
    } else if (nivel == 3) {
        enunciadoAyudas3 = document.getElementById('enunciadoAyudas3').value;
        enunciadoAyudas4 = document.getElementById('enunciadoAyudas4').value;
        
        if (enunciadoAyudas3 == "") {
            jAlert("Es necesario Ingresar la primera Ayuda por  Favor !!!", 'Validacion');
            document.getElementById('enunciadoAyudas3').focus();
            return;
        } else if (enunciadoAyudas4 == "") {
            jAlert("Es necesario Ingresar la segunda Ayuda por  Favor !!!", 'Validacion');
           document.getElementById('enunciadoAyudas4').focus();
            return;
        } else {
            pagina = ruta + "/" + tabla + "Servlet?op=" + op +
                    "&CODPREG=" + codigopreg + "&cborespuestaok=" + cborespuestaok + "&CODCAR=" +
                    carpro + "&CODMAT=" + mate + "&CODUNID=" +
                    unid + "&CODTEMA=" + tema + "&CODNIVEL=" +
                    nivel + "&TXTPREG=" + preg + "&alternativaA=" + alternativaA + "&alternativaB=" +
                    alternativaB + "&alternativaC=" + alternativaC + "&alternativaD=" + alternativaD +"&alternativaE=" + alternativaE+"&enunciadoAyudas3=" + enunciadoAyudas3 + "&enunciadoAyudas4=" + enunciadoAyudas4;
            GrabarPreguntaAjax(pagina);
        }
    }
}
function ActualizarPregunta(ruta, tabla, op, codigopreg) {
    var pagina = "";
    var carpro = document.getElementById("cbocarrera").value;
    var mate =document.getElementById("cbomateria").value;
    var unid = document.getElementById("cbounidadtematica").value;
    var tema = document.getElementById("cbotema").value;
    var nivel = document.getElementById("cbonivel").value;
    var preg = document.getElementById("txtpregunta").value;
    var codalterA = document.getElementById("hddcodalter1").value;
    var alternativaA = document.getElementById("alternativaA").value;
    var codalterB = document.getElementById("hddcodalter2").value;
    var alternativaB = document.getElementById("alternativaB").value;
    var codalterC = document.getElementById("hddcodalter3").value;
    var alternativaC = document.getElementById("alternativaC").value;
    var codalterD = document.getElementById("hddcodalter4").value;
    var alternativaD = document.getElementById("alternativaD").value;
    var cborespuestaok = document.getElementById("cborespuestaok").value;
    var codayuda1, codayuda2, codayuda3;
    var enunciadoAyudas1, enunciadoAyudas2, enunciadoAyudas3;
    if (carpro == "0") {
        jAlert("Es necesario seleccionar una Carrera Profesional !!!", 'Validacion');
        document.getElementById("cbocarrera").focus();
        return;
    } else if (mate == "0") {
        jAlert("Es necesario seleccionar una Materia !!!", 'Validacion');
        document.getElementById("cbomateria").focus();
        return;
    } else if (unid == "0") {
        jAlert("Es necesario seleccionar Unidad Temática !!!", 'Validacion');
        document.getElementById("cbounidadtematica").focus();
        return;
    } else if (tema == "0") {
        jAlert("Es necesario seleccionar Tema !!!", 'Validacion');
        document.getElementById("cbotema").focus();
        return;
    } else if (nivel == "0") {
        jAlert("Es necesario seleccionar Nivel !!!", 'Validacion');
      document.getElementById("cbonivel").focus();
        return;
    } else if (preg == "") {
        jAlert("Es necesario Ingresar la  Pregunta !!!", 'Validacion');
       document.getElementById("txtpregunta").focus();
        return;
    } else if (alternativaA == "") {
        jAlert("Es necesario Ingresar la primera Alternativa !!!", 'Validacion');
       document.getElementById("alternativaA").focus();
        return;
    } else if (alternativaB == "") {
        jAlert("Es necesario Ingresar la segunda Alternativa !!!", 'Validacion');
        document.getElementById("alternativaB").focus();
        return;
    } else if (alternativaC == "") {
        jAlert("Es necesario Ingresar la tercera Alternativa !!!", 'Validacion');
       document.getElementById("alternativaC").focus();
        return;
    } else if (alternativaD == "") {
        jAlert("Es necesario Ingresar la cuarta Alternativa !!!", 'Validacion');
       document.getElementById("alternativaD").focus();
        return;
    } else if (nivel == 1) {
        pagina = ruta + "/" + tabla + "Servlet?op=" + op + "&CODPREG=" + codigopreg + "&CODCAR=" + carpro + "&CODMAT=" + mate +
                "&CODUNID=" + unid + "&CODTEMA=" + tema + "&CODNIVEL=" + nivel + "&TXTPREG=" + preg + "&cborespuestaok=" + cborespuestaok +
                "&CODALTERA=" + codalterA + "&alternativaA=" + alternativaA + "&CODALTERB=" + codalterB + "&alternativaB=" + alternativaB +
                "&CODALTERC=" + codalterC + "&alternativaC=" + alternativaC + "&CODALTERD=" + codalterD + "&alternativaD=" + alternativaD;
        ActualizarPreguntaAjax(pagina);
    } else if (nivel == 2) {
        codayuda1 =document.getElementById("hddcodigoayuda1").value;
        enunciadoAyudas1 = document.getElementById("enunciadoAyudas1").value;
        codayuda2 = document.getElementById("hddcodigoayuda2").value;
        enunciadoAyudas2 =document.getElementById("enunciadoAyudas2").value;
        if (enunciadoAyudas1 == "") {
            jAlert("Es necesario Ingresar la primera Ayuda por Favor !!!", 'Validacion');
           document.getElementById("enunciadoAyudas1").focus();
            return;
        }
        else if (enunciadoAyudas2 == "") {
            jAlert("Es necesario Ingresar la segunda Ayuda por  Favor !!!", 'Validacion');
           document.getElementById("enunciadoAyudas2").focus();
            return;
        } else {
            pagina = ruta + "/" + tabla + "Servlet?op=" + op + "&CODPREG=" + codigopreg + "&CODCAR=" + carpro + "&CODMAT=" + mate +
                    "&CODUNID=" + unid + "&CODTEMA=" + tema + "&CODNIVEL=" + nivel + "&TXTPREG=" + preg + "&cborespuestaok=" + cborespuestaok +
                    "&CODALTERA=" + codalterA + "&alternativaA=" + alternativaA + "&CODALTERB=" + codalterB + "&alternativaB=" + alternativaB +
                    "&CODALTERC=" + codalterC + "&alternativaC=" + alternativaC + "&CODALTERD=" + codalterD + "&alternativaD=" + alternativaD +
                    "&CODAYUDA1=" + codayuda1 + "&ayuda1=" + enunciadoAyudas1 + "&CODAYUDA2=" + codayuda2 + "&ayuda2=" + enunciadoAyudas2;
            ActualizarPreguntaAjax(pagina);
        }
    } else if (nivel == 3) {
        codayuda1 = document.getElementById("hddcodigoayuda1").value;
        enunciadoAyudas1 = document.getElementById("enunciadoAyudas3").value;
        codayuda2 = document.getElementById("hddcodigoayuda2").value;
        enunciadoAyudas2 = document.getElementById("enunciadoAyudas4").value;
        codayuda3 = document.getElementById("hddcodigoayuda3").value;
        enunciadoAyudas3 = document.getElementById("enunciadoAyudas5").value;
        if (!enunciadoAyudas1) {
            jAlert("Es necesario Ingresar la primera Ayuda por  Favor !!!", 'Validacion');
            document.getElementById("enunciadoAyudas3").focus();
            return;
        } else if (!enunciadoAyudas2) {
            jAlert("Es necesario Ingresar la segunda Ayuda por  Favor !!!", 'Validacion');
            document.getElementById("enunciadoAyudas4").focus();
            return;
        } else if (!enunciadoAyudas3) {
            jAlert("Es necesario Ingresar la tercera Ayuda por  Favor !!!", 'Validacion');
            document.getElementById("enunciadoAyudas5").focus();
            return;
        } else {
            pagina = ruta + "/" + tabla + "Servlet?op=" + op + "&CODPREG=" + codigopreg + "&CODCAR=" + carpro + "&CODMAT=" + mate +
                    "&CODUNID=" + unid + "&CODTEMA=" + tema + "&CODNIVEL=" + nivel + "&TXTPREG=" + preg + "&cborespuestaok=" + cborespuestaok +
                    "&CODALTERA=" + codalterA + "&alternativaA=" + alternativaA + "&CODALTERB=" + codalterB + "&alternativaB=" + alternativaB +
                    "&CODALTERC=" + codalterC + "&alternativaC=" + alternativaC + "&CODALTERD=" + codalterD + "&alternativaD=" + alternativaD +
                    "&CODAYUDA1=" + codayuda1 + "&ayuda1=" + enunciadoAyudas1 + "&CODAYUDA2=" + codayuda2 + "&ayuda2=" + enunciadoAyudas2 +
                    "&CODAYUDA3=" + codayuda3 + "&ayuda3=" + enunciadoAyudas3;
            ActualizarPreguntaAjax(pagina);
        }
    }

}

//TABLA   MATERIA ----------------------------------------------------------------------------------
function cargarMateria(ruta, tabla, op, carrera, materia, Div) {

    var pagina = ruta + "/" + tabla + "Servlet?op=" + op + "&CODCAR=" + carrera + "&CODMAT=" + materia;
    var xmlhttp;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            if (Div) {
                document.getElementById(Div).innerHTML = xmlhttp.responseText;
            } else {
                document.getElementById("divmateria").innerHTML = xmlhttp.responseText;
            }
        }
    }
    xmlhttp.open("GET", pagina, false);
    xmlhttp.send(null);

}

function cargarUnidadTematica(ruta, tabla, op, materia) {
    var carrera = document.getElementById('cbocarrera').value;
    var pagina = ruta + "/" + tabla + "Servlet?op=" + op + "&CODCAR=" + carrera + "&CODMAT=" + materia;

    var xmlhttp;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("divunidadtematica").innerHTML = xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);

}
function cargarTema(ruta, tabla, op, unidad) {
    var carrera = document.getElementById('cbocarrera').value;
    var materia = document.getElementById('cbomateria').value;
    var pagina = ruta + "/" + tabla + "Servlet?op=" + op + "&CODCAR=" + carrera + "&CODMAT=" + materia + "&CODUNID=" + unidad;

    var xmlhttp;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("divtema").innerHTML = xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);

}
// ESTRUCTURA DEL  EXAMEN

function filtrarEstructuraExamenxSemestre(ruta, tabla, op, codsemestre) {
    var pagina = ruta + "/" + tabla + "Servlet?op=" + op + "&CODSEMESTRE=" + codsemestre;

    var xmlhttp;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("divtabla").innerHTML = xmlhttp.responseText;
            activeDatatable();

        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);

}
function filtrarEstructuraExamen(ruta, tabla, op)
{
    var codsemestre = document.getElementById('cbosemestre').value;
    var codcarrera = document.getElementById('cbocarrera').value;
    var codmateria = document.getElementById('cbomateria').value;
    var pagina = ruta + "/" + tabla + "Servlet?op=" + op + "&CODMATERIA=" + codmateria + "&CODCARRERA=" + codcarrera + "&CODSEMESTRE=" + codsemestre;
  
    var xmlhttp;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("divtabla").innerHTML = xmlhttp.responseText;
            activeDatatable();
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);

}

function nuevoDocenteMateria(Ruta, Codigo, Estado) {

    var DocentexMateriaBean = new Object();
    DocentexMateriaBean.CODDOCENXMATERIA = Codigo;

    var pagina = Ruta + "/DocentexMateriaServlet?op=3";
    $.ajax({
        type: 'POST',
        url: pagina,
        //    dataType: 'JSON',
        data: {
            DocentexMateriaBean: JSON.stringify(DocentexMateriaBean),
        },
        success: function (data) {
            document.getElementById("DivModal").innerHTML = data;
            crearModalDocentexMateria(Ruta, Codigo, Estado);
            //CallMant(ruta, 'EstructuraExamen', 11, '');
            /*$('#divtabla').html(data);
             activeDatatable();   */
        }
    });
}
function crearModalDocentexMateria(Ruta, Codigo, Estado) {

    var buttons = new Object();
    if (Codigo == 0) {
        buttons.Guardar = function () {

            var objDocentexMateriaBean = new Object();
            //objDocentexMateriaBean.CODDOCENXMATERIA=document.getElementById('codigo').value;
            objDocentexMateriaBean.CODCARRERA = document.getElementById('cbocarrera').value;
            objDocentexMateriaBean.CODMATERIA = document.getElementById('cbomateria').value;
            objDocentexMateriaBean.CODDOCENTE = document.getElementById('cboDocente').value;

            var pagina = Ruta + "/DocentexMateriaServlet?op=4";
            $.ajax({
                type: 'POST',
                url: pagina,
                data: {
                    objDocentexMateriaBean: JSON.stringify(objDocentexMateriaBean),
                },
                success: function (data) {
                    $('#ModalDocenteMateria').dialog('close');
                    CallMant(Ruta, 'DocentexMateria', 1, '')
                }
            });
        }
        buttons.Cancelar = function () {
            $('#ModalDocenteMateria').dialog('close');
        }
    } else {
        buttons.Modificar = function () {
            var objDocentexMateriaBean = new Object();
            objDocentexMateriaBean.CODDOCENXMATERIA = document.getElementById('hddCODDOCENTEXMATERIA').value;
            objDocentexMateriaBean.CODCARRERA = document.getElementById('cbocarrera').value;
            objDocentexMateriaBean.CODMATERIA = document.getElementById('cbomateria').value;
            objDocentexMateriaBean.CODDOCENTE = document.getElementById('cboDocente').value;

            var pagina = Ruta + "/DocentexMateriaServlet?op=7";
            $.ajax({
                type: 'POST',
                url: pagina,
                data: {
                    objDocentexMateriaBean: JSON.stringify(objDocentexMateriaBean),
                },
                success: function (data) {
                    $('#ModalDocenteMateria').dialog('close');
                    CallMant(Ruta, 'DocentexMateria', 1, '')
                }
            });
        }
        buttons.Cancelar = function () {
            $('#ModalDocenteMateria').dialog('close');
        }
    }

    $('#ModalDocenteMateria').dialog({
        autoOpen: false,
        modal: true,
        title: "Registrar Docente x Materia",
        zIndex: 10000,
        width: '300',
        open: function () {
            if (Codigo != 0) {
                var CodCarrera = document.getElementById('hddCODCARRERA').value;
                var CodDocente = document.getElementById('hddCODDOCENTE').value;
                var CodMateria = document.getElementById('hddCODMATERIA').value;
                document.getElementById('cbocarrera').value = CodCarrera;
                cargarMateria(Ruta, 'Materia', 11, CodCarrera)
                document.getElementById('cboDocente').value = CodDocente;
                document.getElementById('cbomateria').value = CodMateria;

            }
        },
        buttons: buttons,
        close: function (event, ui) {
            event.target.parentElement.remove();
        }
    });

    $('#ModalDocenteMateria').dialog('open');
}
function AsignarFiltroDocenteMateria(Ruta) {
    document.getElementById("divmateria2").children.cbomateria.setAttribute("onChange", "javascript:FiltrarDocentesProgramarMateria ('" + Ruta + "');");

}
function FiltrarDocentesProgramarMateria(Ruta) {
    var objProgramacionMateriaBean = new Object();
    objProgramacionMateriaBean.CODCARRERA = document.getElementById("cbocarrera1").value;
    objProgramacionMateriaBean.CODMATERIA = document.getElementById("divmateria2").children.cbomateria.value;
    objProgramacionMateriaBean.CODSEMESTRE = document.getElementById("cbosemestre1").value;
    objProgramacionMateriaBean.CODDOCENTE = document.getElementById("hddCODDOCENTE").value;
    var pagina = Ruta + "/ProgramacionMateriaServlet?op=4";
    $.ajax({
        type: 'POST',
        url: pagina,
        //    dataType: 'JSON',
        data: {
            objProgramacionMateriaBean: JSON.stringify(objProgramacionMateriaBean),
        },
        success: function (data) {
            document.getElementById("divDocente").innerHTML = data;
            /*crearModalDocentexMateria(Ruta,Codigo, Estado);
             //CallMant(ruta, 'EstructuraExamen', 11, '');
             $('#divtabla').html(data);
             activeDatatable();   */
        }
    });

}

function FiltrarMateriaMatricula(Ruta) {
    var objMatriculaBean = new Object();
    objMatriculaBean.CODSEMESTRE = document.getElementById("cbosemestre1").value;
    objMatriculaBean.CODCARRERAPROFECIONAL = document.getElementById("cbocarrera1").value;
    var pagina = Ruta + "/MatriculaServlet?op=4";
    $.ajax({
        type: 'POST',
        url: pagina,
        //    dataType: 'JSON',
        async: false,
        data: {
            objMatriculaBean: JSON.stringify(objMatriculaBean),
        },
        success: function (data) {
            document.getElementById("divMateriaMatricula").innerHTML = data;
            /*crearModalDocentexMateria(Ruta,Codigo, Estado);
             //CallMant(ruta, 'EstructuraExamen', 11, '');
             $('#divtabla').html(data);
             activeDatatable();   */
        }
    });

}

function FiltrarDocentesMatricula(Ruta) {
    var objMatriculaBean = new Object();
    objMatriculaBean.CODSEMESTRE = document.getElementById("cbosemestre1").value;
    objMatriculaBean.CODCARRERAPROFECIONAL = document.getElementById("cbocarrera1").value;
    objMatriculaBean.CODMATERIA = document.getElementById("cboMateria").value;
    var pagina = Ruta + "/MatriculaServlet?op=5";
    $.ajax({
        type: 'POST',
        url: pagina,
        //    dataType: 'JSON',
        async: false,
        data: {
            objMatriculaBean: JSON.stringify(objMatriculaBean),
        },
        success: function (data) {
            document.getElementById("cboDocente").innerHTML = data;
            /*crearModalDocentexMateria(Ruta,Codigo, Estado);
             //CallMant(ruta, 'EstructuraExamen', 11, '');
             $('#divtabla').html(data);
             activeDatatable();   */
        }
    });

}
function GuardarCabeseraMatricula(Ruta) {

    document.getElementById("cboAlumno").disabled = true;
    document.getElementById("cbosemestre1").disabled = true;
    document.getElementById("cbocarrera1").disabled = true;
    document.getElementById("btnGuardarCabesera").disabled = true;

    document.getElementById("cboMateria").disabled = false;
    document.getElementById("cboDocente").disabled = false;
    document.getElementById("btnGuardarDetalle").disabled = false;
    FiltrarMateriaMatricula(Ruta);

}
function FiltrarCarrerasMatricula(Ruta) {
    var objMatriculaBean = new Object();
    objMatriculaBean.CODSEMESTRE = document.getElementById("cbosemestre1").value;
    var pagina = Ruta + "/MatriculaServlet?op=3";
    $.ajax({
        type: 'POST',
        url: pagina,
        async: false,
        //    dataType: 'JSON',
        data: {
            objMatriculaBean: JSON.stringify(objMatriculaBean),
        },
        success: function (data) {
            document.getElementById("divCarrera").innerHTML = data;
            /*crearModalDocentexMateria(Ruta,Codigo, Estado);
             //CallMant(ruta, 'EstructuraExamen', 11, '');
             $('#divtabla').html(data);
             activeDatatable();   */
        }
    });

}

//---------------------- esto lo  hizo  carlos  pinedo ----------------------------------------------------
function cargarMateria2(ruta, tabla, op, carrera, materia) {
    var pagina = ruta + "/" + tabla + "Servlet?op=" + op + "&CODCAR=" + carrera + "&CODMAT=" + materia;
    var xmlhttp;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("divmateria").innerHTML = xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
}
function cargarUnidadTematica2(ruta, tabla, op, carrera, materia, unidad) {
    var pagina = ruta + "/" + tabla + "Servlet?op=" + op + "&CODCAR=" + carrera + "&CODMAT=" + materia + "&CODUNI=" + unidad;
    var xmlhttp;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("divunidadtematica").innerHTML = xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
}
function cargarTema2(ruta, tabla, op, carrera, materia, unidad, tema) {
    var pagina = ruta + "/" + tabla + "Servlet?op=" + op + "&CODCAR=" + carrera + "&CODMAT=" + materia + "&CODUNID=" + unidad + "&CODUNID=" + unidad + "&CODTEMA=" + tema;
    var xmlhttp;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("divtema").innerHTML = xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
}
function cargarItemMarcoLogico(ruta, codigo) {
    var pagina = ruta + "/EstructuraExamenServlet?op=13&CODIGO=" + codigo;
    var xmlhttp;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("divMarcoLogico").innerHTML = xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
}
function cargarItemMarcoTotal(ruta, codigo) {
    var pagina = ruta + "/EstructuraExamenServlet?op=14&CODIGO=" + codigo;
    var xmlhttp;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("divMarcoTotal").innerHTML = xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
}

function ProgramarExamen(Ruta, Codigo, semestre, carrera, materia, unidad, tema, TipoExamen, Estado) {
    var objEstructuraExamenBean = new Object();
    objEstructuraExamenBean.CODESTRUCEXAMEN = Codigo;

    var pagina = Ruta + "/ProgramarExamenServlet?op=8";
    $.ajax({
        type: 'POST',
        url: pagina,
        //    dataType: 'JSON',
        data: {
            objEstructuraExamenBean: JSON.stringify(objEstructuraExamenBean),
        },
        success: function (data) {
            document.getElementById("Modal").innerHTML = data;
            crearModalProgramar(Ruta, Estado);
            //CallMant(ruta, 'EstructuraExamen', 11, '');
            /*$('#divtabla').html(data);
             activeDatatable();   */
        }
    });
}
function crearModalProgramar(Ruta, Estado) {

    var buttons = new Object();
    if (Estado == "P") {
        buttons.Cerrar = function () {
            $('#ModalProgramar').dialog('close');
        }
    } else {
        buttons.Guardar = function () {
            var ProgramacionExamenBean = new Object();
            ProgramacionExamenBean.CODPROGEXAMEN = 0;
            ProgramacionExamenBean.CODESTRUCEXAMEN = document.getElementById('hddCODESTRUCEXAMEN').value;
            ProgramacionExamenBean.CODHORARIOLAB = document.getElementById('hddCODHORARIOLAB').value;
            ProgramacionExamenBean.CODPROGMAT = document.getElementById('hddcodprogmat').value;
            ProgramacionExamenBean.ESTADO = 'A';
            ProgramacionExamenBean.FECHA = document.getElementById('txtfecha').value;
            ProgramacionExamenBean.CODDIA = document.getElementById("cbodia").value;
            ProgramacionExamenBean.HORAINICIO = document.getElementById("hddHORARIO").value;
            var pagina = Ruta + "/ProgramarExamenServlet?op=9";
            $.ajax({
                type: 'POST',
                url: pagina,
                //    dataType: 'JSON',
                data: {
                    ProgramacionExamenBean: JSON.stringify(ProgramacionExamenBean),
                },
                success: function (data) {
                    $('#ModalProgramar').dialog('close');
                    CallMant(Ruta, 'ProgramarExamen', 14, '&GENEXAMEN=false&VERNOTAS=false')
                }
            });

        }
        buttons.Cancelar = function () {
            $('#ModalProgramar').dialog('close');
        }
    }

    $('#ModalProgramar').dialog({
        autoOpen: false,
        modal: true,
        title: " Seleccionar fecha y lugar de examen",
        zIndex: 10000,
        width: '700',
        open: function () {
            activeDatatableHorarios();
            if (Estado == "P") {
                cargarHorarios(Ruta, Estado, document.getElementById('hddCODHORARIOLAB').value);
                document.getElementById('cbolaboratorio').disabled = true;
                document.getElementById('txtfecha').disabled = true;
                document.getElementById('cboturno').disabled = true;
                document.getElementById('cbodia').disabled = true;
            }
        },
        buttons: buttons,
        close: function (event, ui) {
            event.target.parentElement.remove();
        }
    });

    $('#ModalProgramar').dialog('open');
}
function changeFecha(Element) {
    var NroDia = new Date(Element.value).getDay() + 1;
    document.getElementById('cbodia').value = NroDia;
}
function selectedCheck(Element, Codigo, Horario) {
    var checked = Element.checked;
    if (checked) {
        for (var item in document.getElementsByName("chkSeleccionar")) {
            document.getElementsByName("chkSeleccionar")[item].checked = false;
        }
        document.getElementById('hddCODHORARIOLAB').value = Element.value;
        document.getElementById('hddHORARIO').value = Horario;
        Element.checked = checked;
    }
}
function cargarHorarios(Ruta, Estado, CODHORARIO) {
    var laboratorio = document.getElementById('cbolaboratorio').value;
    var dia = document.getElementById('cbodia').value;
    var turno = document.getElementById('cboturno').value;
    var CODSEM = document.getElementById('hddCODSEM').value;
    if (!Estado)
        Estado = "A";
    if (!CODHORARIO)
        CODHORARIO = 0;
    var pagina = Ruta + "/ConsultarHorariosServlet?op=2&LABORATORIO=" + laboratorio + "&DIA=" + dia + "&TURNO=" + turno + "&CODSEM=" + CODSEM + "&ESTADO=" + Estado + "&CODHORARIO=" + CODHORARIO;

    var xmlhttp;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    }
    else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("divlistadoHorario").innerHTML = xmlhttp.responseText;
            activeDatatableHorarios();
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
}
// -----------------------------------------------------------------------------------------------
function IniciarProgramacionExamen(Ruta, CODPROGEXAMEN) {
    jConfirm('Esta seguro de Iniciar el examen?', 'Confirmación', function (r) {
        if (r) {
            var pagina = Ruta + "/ProgramarExamenServlet?op=17&CODPROGEXAMEN=" + CODPROGEXAMEN;
            $.ajax({
                type: 'POST',
                url: pagina,
                //    dataType: 'JSON',
                success: function (data) {
                    jAlert('El examen se ha iniciado correctamente', 'Mensaje ');
                    filtrarProgramacionExamenes(Ruta);
                }
            });
        }
    });
}
function GenerarExamen(Ruta, CODPROGEXAMEN, Boton) {
    jConfirm('Esta seguro de generar el examen?', 'Confirmación', function (r) {
        if (r) {
            Boton.Disabled = true;
            var pagina = Ruta + "/ProgramarExamenServlet?op=16&CODPROGEXAMEN=" + CODPROGEXAMEN;
            $.ajax({
                type: 'POST',
                url: pagina,
                //    dataType: 'JSON',
                success: function (data) {
                    jAlert('El examen fue generado correctamente', 'Mensaje ');
                    filtrarProgramacionExamenes(Ruta);
                }
            });
        }
    });

}
function FinalizarProgramacionExamen(Ruta, CODPROGEXAMEN) {
    jConfirm('Esta seguro de Finalizar el examen?', 'Confirmación', function (r) {
        if (r) {
            var pagina = Ruta + "/ProgramarExamenServlet?op=18&CODPROGEXAMEN=" + CODPROGEXAMEN;
            $.ajax({
                type: 'POST',
                url: pagina,
                //    dataType: 'JSON',
                success: function (data) {
                    jAlert('El examen se ha Finalizado correctamente', 'Mensaje ');
                    filtrarProgramacionExamenes(Ruta);
                }
            });
        }
    });
}

function nuevaMatricula(Ruta, Codigo) {
    var MatriculaBean = new Object();
    MatriculaBean.CODMATRICULA = Codigo;

    var pagina = Ruta + "/MatriculaServlet?op=2";
    $.ajax({
        type: 'POST',
        url: pagina,
        //    dataType: 'JSON',
        data: {
            MatriculaBean: JSON.stringify(MatriculaBean),
        },
        success: function (data) {
            document.getElementById("DivModal").innerHTML = data;
            crearModalMatricula(Ruta, Codigo);
            //CallMant(ruta, 'EstructuraExamen', 11, '');
            /*$('#divtabla').html(data);
             activeDatatable();   */
        }
    });
}
function crearModalMatricula(Ruta, Codigo) {

    var buttons = new Object();
    if (Codigo == 0)
    {
        buttons.Guardar = function () {
            var objMatriculaBean = new Object();
            objMatriculaBean.CODCARRERAPROFECIONAL = document.getElementById("cbocarrera1").value;
            objMatriculaBean.CODALU = document.getElementById("cboAlumno").value;
            objMatriculaBean.CODSEMESTRE = document.getElementById("cbosemestre1").value;

            var ListaProgramacionMateriaBean = new Array();

            var Cantidad = document.getElementsByName("hddMateria").length;
            for (var i = 0; i < Cantidad; i++) {
                var ProgramacionMateriaBean = new Object();
                ProgramacionMateriaBean.CODDOCENTE = document.getElementsByName("hddDocente")[i].value;
                ProgramacionMateriaBean.CODMATERIA = document.getElementsByName("hddMateria")[i].value;
                ProgramacionMateriaBean.CODSEMESTRE = objMatriculaBean.CODSEMESTRE;
                ProgramacionMateriaBean.CODCARRERA = objMatriculaBean.CODCARRERAPROFECIONAL;

                ListaProgramacionMateriaBean.push(ProgramacionMateriaBean);
            }

            var pagina = Ruta + "/MatriculaServlet?op=6";
            $.ajax({
                type: 'POST',
                url: pagina,
                data: {
                    objMatriculaBean: JSON.stringify(objMatriculaBean),
                    ListaProgramacionMateriaBean: JSON.stringify(ListaProgramacionMateriaBean),
                },
                success: function (data) {
                    $('#ModalMatricula').dialog('close');
                    CallMant(Ruta, 'Matricula', 1, '')
                }
            });
        }
        buttons.Cancelar = function () {
            $('#ModalMatricula').dialog('close');
        }
    } else {
        buttons.Modificar = function () {
            var objMatriculaBean = new Object();
            objMatriculaBean.CODMATRICULA = document.getElementById("hddCODMATRICULA").value;
            objMatriculaBean.CODCARRERAPROFECIONAL = document.getElementById("cbocarrera1").value;
            objMatriculaBean.CODALU = document.getElementById("cboAlumno").value;
            objMatriculaBean.CODSEMESTRE = document.getElementById("cbosemestre1").value;

            var ListaProgramacionMateriaBean = new Array();

            var Cantidad = document.getElementsByName("hddMateria").length;
            for (var i = 0; i < Cantidad; i++) {
                var ProgramacionMateriaBean = new Object();
                ProgramacionMateriaBean.CODDOCENTE = document.getElementsByName("hddDocente")[i].value;
                ProgramacionMateriaBean.CODMATERIA = document.getElementsByName("hddMateria")[i].value;
                ProgramacionMateriaBean.CODSEMESTRE = objMatriculaBean.CODSEMESTRE;
                ProgramacionMateriaBean.CODCARRERA = objMatriculaBean.CODCARRERAPROFECIONAL;

                ListaProgramacionMateriaBean.push(ProgramacionMateriaBean);
            }

            var pagina = Ruta + "/MatriculaServlet?op=7";
            $.ajax({
                type: 'POST',
                url: pagina,
                data: {
                    objMatriculaBean: JSON.stringify(objMatriculaBean),
                    ListaProgramacionMateriaBean: JSON.stringify(ListaProgramacionMateriaBean),
                },
                success: function (data) {
                    $('#ModalMatricula').dialog('close');
                    CallMant(Ruta, 'Matricula', 1, '')
                }
            });
        }
        buttons.Cancelar = function () {
            $('#ModalMatricula').dialog('close');
        }
    }

    $('#ModalMatricula').dialog({
        autoOpen: false,
        modal: true,
        title: "Registrar Matricula",
        zIndex: 10000,
        width: '800',
        open: function () {
            if (Codigo != 0) {
                var CodAlumno = document.getElementById('hddCODALU').value;
                var CodSemestre = document.getElementById('hddCODSEMESTRE').value;
                var FechaMatricula = document.getElementById('hddFECHAMATRICULA').value;
                var CodCarrera = document.getElementById('hddCODCARRERAPROFECIONAL').value;

                document.getElementById('cboAlumno').value = CodAlumno;
                document.getElementById('cbosemestre1').value = CodSemestre;
                FiltrarCarrerasMatricula(Ruta);
                document.getElementById('cbocarrera1').value = CodCarrera;
                GuardarCabeseraMatricula(Ruta);
                var Cantidad = document.getElementsByName("hddMateria").length;

                for (var i = 0; i < Cantidad; i++) {
                    var CODIGOMATERIA = document.getElementsByName("hddMateria")[i].value;
                    document.getElementById("cboMateria").value = CODIGOMATERIA;
                    document.getElementById("cboMateria").selectedOptions[0].remove();
                }
                FiltrarDocentesMatricula(Ruta)
            }
            activeDatatableHorarios();
        },
        buttons: buttons,
        close: function (event, ui) {
            event.target.parentElement.remove();
        }
    });

    $('#ModalMatricula').dialog('open');
}
function AsignarMateria(Ruta) {
    var CODMATERIA = document.getElementById("cboMateria").value;
    var CODDOCENTE = document.getElementById("cboDocente").value;
    var NOMBREMATERIA = document.getElementById("cboMateria").selectedOptions[0].text;
    var NOMBREDOCENTE = document.getElementById("cboDocente").selectedOptions[0].text;
    var Html = "<tr id='" + CODMATERIA + "' data-nombre='" + NOMBREMATERIA + "'><td><input type='hidden' name='hddMateria' value='" + CODMATERIA + "'><input type='text' name='txtMateria' disabled value='" + NOMBREMATERIA + "'></td>" +
            "<td><input type='hidden' name='hddDocente' value='" + CODDOCENTE + "'><input type='text' name='txtDocente' disabled value='" + NOMBREDOCENTE + "'></td>" +
            "<td align='center'><button onclick='retirarItemDetalleMatricula(this);' title='Eliminar Fila'><img src='images/tacho.gif' border='0'></button></td></tr>"
    document.getElementById("MateriasMatriculadas").innerHTML = document.getElementById("MateriasMatriculadas").innerHTML + Html
    document.getElementById("cboMateria").selectedOptions[0].remove();
    FiltrarDocentesMatricula(Ruta)

}
function retirarItemDetalleMatricula(element) {
    var id = element.parentElement.parentElement.id;
    var nombre = element.parentElement.parentElement.dataset.nombre;
    element.parentElement.parentElement.remove();
    document.getElementById("cboMateria").options.add(new Option(nombre, id))
}
function filtrarMatriculas(Ruta) {
    var objMatriculaBean = new Object();
    objMatriculaBean.CODCARRERA = document.getElementById("cbocarrera").value;
    objMatriculaBean.CODSEMESTRE = document.getElementById("cbosemestre").value;

    var pagina = Ruta + "/MatriculaServlet?op=8";
    $.ajax({
        type: 'POST',
        url: pagina,
        //    dataType: 'JSON',
        data: {
            objMatriculaBean: JSON.stringify(objMatriculaBean),
        },
        success: function (data) {
            document.getElementById("divTableMatricula").innerHTML = data;
            activeDatatable();
            //CallMant(ruta, 'EstructuraExamen', 11, '');
            /*$('#divtabla').html(data);
             activeDatatable();   */
        }
    });
}
// MANTENIMIENTO DE  LA  CARRERA  PROFESIONAL --------------------------------------------------

function filtrarCarrerasProgramacionMateriaxDocente(Ruta) {
    var ProgramacionMateriaBean = new Object();
    ProgramacionMateriaBean.CODSEMESTRE = document.getElementById("cbosemestre").value;

    var pagina = Ruta + "/ProgramarExamenServlet?op=11";
    $.ajax({
        type: 'POST',
        url: pagina,
        async: false,
        //    dataType: 'JSON',
        data: {
            ProgramacionMateriaBean: JSON.stringify(ProgramacionMateriaBean),
        },
        success: function (data) {
            document.getElementById("divCarrerasAsignadasDocente").innerHTML = data;
        }
    });
}
function filtrarMateriasAsignadas(Ruta) {
    var ProgramacionMateriaBean = new Object();
    ProgramacionMateriaBean.CODSEMESTRE = document.getElementById("cbosemestre").value;
    ProgramacionMateriaBean.CODCARRERA = document.getElementById("cbocarrera").value;

    var pagina = Ruta + "/ProgramarExamenServlet?op=12";
    $.ajax({
        type: 'POST',
        url: pagina,
        async: false,
        //    dataType: 'JSON',
        data: {
            ProgramacionMateriaBean: JSON.stringify(ProgramacionMateriaBean),
        },
        success: function (data) {
            document.getElementById("ContenidoTabla").innerHTML = data;
        }
    });
}
function MateriasAsignadas(Ruta) {
    var ProgramacionMateriaBean = new Object();
    ProgramacionMateriaBean.CODSEMESTRE = document.getElementById("cbosemestre").value;
    ProgramacionMateriaBean.CODCARRERA = document.getElementById("cbocarrera").value;

    var pagina = Ruta + "/ProgramarExamenServlet?op=13";
    $.ajax({
        type: 'POST',
        url: pagina,
        async: false,
        //    dataType: 'JSON',
        data: {
            ProgramacionMateriaBean: JSON.stringify(ProgramacionMateriaBean),
        },
        success: function (data) {
            document.getElementById("divmateria").innerHTML = data;
        }
    });
}
function CabiarEventoCarrera(Ruta) {
    document.getElementById("cbocarrera").setAttribute("onChange", "javascript:MateriasAsignadas('" + Ruta + "');AsigfiltrarProgramacionExamenes ('" + Ruta + "');");
}
function filtrarProgramacionExamenes(Ruta) {
    var ProgramacionExamenBean = new Object();
    ProgramacionExamenBean.CODSEMESTRE = document.getElementById("cbosemestre").value;
    ProgramacionExamenBean.CODCARRERA = document.getElementById("cbocarrera").value;
    ProgramacionExamenBean.CODMATERIA = document.getElementById("cbomateria").value;
    var GENEXAMEN = document.getElementById("GENEXAMEN").value;
    var VERNOTAS = document.getElementById("VERNOTAS").value;
    var pagina = Ruta + "/ProgramarExamenServlet?op=15&GENEXAMEN=" + GENEXAMEN + "&VERNOTAS=" + VERNOTAS;
    $.ajax({
        type: 'POST',
        url: pagina,
        async: false,
        //    dataType: 'JSON',
        data: {
            ProgramacionExamenBean: JSON.stringify(ProgramacionExamenBean),
        },
        success: function (data) {
            document.getElementById("divTableProgramacionExamen").innerHTML = data;
            activeDatatable();
        }
    });
}
function grabarCarreraProfesional(cod, ruta)
{
    var nomb = document.form.txtnombre.value;

    var parametros = '';
    if (nomb == '')
    {
        jAlert("Ingresar por favor el Nombre !!!");
        //document.form.txtnombre.focus();
        return;
    } else
    {
        parametros = "txtnombre=" + nomb + "&txtcodigo=" + cod;

        grabar(ruta, 'CarreraProfesional', 4, parametros);

    }

}
function  modificarCarreraProfesional(cod, ruta)
{
    var parametros = '';
    var nomb = document.form.txtnombre.value;
    var estado = document.form.cboestado.value;

    parametros = "txtnombre=" + nomb + "&txtcodigo=" + cod + "&cboestado=" + estado;
    modificar(ruta, 'CarreraProfesional', 7, parametros);

}

function VerNotas(Ruta, CODPROGEXAMEN) {
    var programarExamenBean = new Object();
    programarExamenBean.CODPROGEXAMEN = CODPROGEXAMEN;

    var pagina = Ruta + "/ProgramarExamenServlet?op=19";
    $.ajax({
        type: 'POST',
        url: pagina,
        //    dataType: 'JSON',
        data: {
            programarExamenBean: JSON.stringify(programarExamenBean),
        },
        success: function (data) {
            document.getElementById("DivModalProgramarExamen").innerHTML = data;
            CrearModalVerNotas(Ruta, CODPROGEXAMEN);
            //CallMant(ruta, 'EstructuraExamen', 11, '');
            /*$('#divtabla').html(data);
             activeDatatable();   */
        }
    });
}


function CrearModalVerNotas(Ruta, CODPROGEXAMEN)
{
    var buttons = new Object();
    buttons["Exportar excel"] = function () {
        location.href = Ruta + "/ExportarExcelServlet?op=1&CODPROGEXAMEN=" + CODPROGEXAMEN;
    }
    buttons["Exportar PDF"] = function () {
        location.href = Ruta + "/ExportarExcelServlet?op=2&CODPROGEXAMEN=" + CODPROGEXAMEN;
    }
    buttons.Cancelar = function () {
        $('#ModalVerNotas').dialog('close');
    }

    $('#ModalVerNotas').dialog({
        autoOpen: false,
        modal: true,
        title: " Ver Notas",
        zIndex: 10000,
        width: '700',
        open: function () {
            activeDatatableNotas();
        },
        buttons: buttons,
        close: function (event, ui) {
            event.target.parentElement.remove();
        }
    });

    $('#ModalVerNotas').dialog('open');
}
var linML = 0;
var  totalpreguntascad=0;
var  totalpreg=0;
function agregarItemMarcoLogico(nomDiv)
{
    var canti;

    var strHtml;
    var returnObj = document.getElementById(nomDiv).innerHTML;
     if (document.getElementById('cbounidadtematica').value == '0')
    {
        jAlert('Elegir Unidad Tematica !!!!! ', 'Mensaje !!');
        document.getElementById('cbonivel').focus();
        //  document.getElementById('cbonivel').style.background="#DFDDDD";
        return;
    }else if (document.getElementById('cbotema').value == '0')
    {
        jAlert('Elegir  el Tema !!!!! ', 'Mensaje !!');
        document.getElementById('cbonivel').focus();
        //  document.getElementById('cbonivel').style.background="#DFDDDD";
        return;
    }else if (document.getElementById('cbonivel').value == '0')
    {
        jAlert('Elegir el Nivel de Dificultad !!!! ', 'Mensaje !!');
        document.getElementById('cbonivel').focus();
        //  document.getElementById('cbonivel').style.background="#DFDDDD";
        return;
    }
    else if (document.getElementById('txtcantpreg').value == '')
    {
        jAlert('Ingresar la  Cantidad de  Preguntas', 'Mensaje !!');
        //   document.getElementById('txtcantpreg').style.background="#DFDDDD";
        document.getElementById('txtcantpreg').focus();
        return;

    }
    else if (document.getElementById('txtpuntajepreg').value == '')
    {
        jAlert('Ingresar el Puntaje de la  Pregunta', 'Mensaje !!');
        //   document.getElementById('txtpuntajepreg').style.background="#DFDDDD";
        document.getElementById('txtpuntajepreg').focus();

    }
    else if (document.getElementById('txtpenalidadpreg').value == '')
    {
        jAlert('Ingresar el Puntaje de la Pregunta', 'Mensaje !!');
        //    document.getElementById('txtpenalidadpreg').style.background="#DFDDDD";
        document.getElementById('txtpenalidadpreg').focus();

    }
    else if (document.getElementById('txtpenalidadayudas').value == '')
    {
        jAlert('Ingresar el Puntaje de la Ayuda', 'Mensaje !!');
        //    document.getElementById('txtpenalidadayudas').style.background="#DFDDDD";
        document.getElementById('txtpenalidadayudas').focus();

    } else {
        
          totalpreguntascad=document.getElementById("txttotalpreguntas").value;
          totalpreg=parseInt(totalpreguntascad);
         
      if(totaldelaspreguntas<totalpreg)
      {
        if (nomDiv == 'divMarcoLogico')
        {
            
            var cbonivel = document.getElementById('cbonivel').value;
            var txtcantpreg = document.getElementById('txtcantpreg').value;
            var txtpuntajepreg = document.getElementById('txtpuntajepreg').value;
            var txtpenalidadpreg = document.getElementById('txtpenalidadpreg').value;
            var txtpenalidadayudas = document.getElementById('txtpenalidadayudas').value;
            var cbotema = document.getElementById('cbotema').value;

            var indexTema = document.getElementById('cbotema').options.selectedIndex;
            var TextTema = document.getElementById('cbotema').options[indexTema].text
            
            
            var cbounidadtematica = document.getElementById('cbounidadtematica').value;

            var indexunidadtematica = document.getElementById('cbounidadtematica').options.selectedIndex;
            var Textunidadtematica= document.getElementById('cbounidadtematica').options[indexunidadtematica].text
            
            

            var nivel = cbonivel.split("-");
            strHtml = '<tr id="z' + linML + '">';
           
            strHtml += '<input   type="hidden"  value="' +cbounidadtematica + '"  name="hiddencbounidadtematica"  id="hiddencbounidadtematica"   >';
            strHtml += '<td  align="center"  class="tituloFormulario">';
            strHtml += '<input   type="text" class="input_text"  size="10" name="unidadtematica"  readonly  value="' + Textunidadtematica + '" >';
            strHtml += '</td>';
            
            strHtml += '<input   type="hidden"  value="' + cbotema + '"  name="hiddencbotema"  id="hiddencbotema"        >';
            strHtml += '<td  align="center"  class="tituloFormulario">';
            strHtml += '<input   type="text" class="input_text"  size="10" name="tema" id="tema' + linML + '" readonly  value="' + TextTema + '" >';
            strHtml += '</td>';
            
           

            strHtml += '<input   type="hidden"  value="' + nivel[0] + '" name="codnivel">';
            strHtml += '<td  align="center"  class="tituloFormulario">';
            strHtml += '<input   type="text" class="input_text"  size="10" name="nivel" id="nivel' + linML + '" readonly  value="' + nivel[1] + '" >';
            strHtml += '</td>';

            strHtml += '<td  align="center"  class="tituloFormulario">';
            strHtml += '<input   type="text" class="input_text"  size="10"   name="txtcantpreg1"    id="txtcantpreg' + linML + '" readonly value="' + txtcantpreg + '" >';
            strHtml += '</td>';

            strHtml += '<td  align="center"  class="tituloFormulario">';
            strHtml += '<input   type="text" class="input_text"  size="10" id="txtpuntajepreg' + linML + '" readonly  name="txtpuntajepreg1"  value="' + txtpuntajepreg + '"          >';
            strHtml += '</td>';

            strHtml += '<td  align="center"  class="tituloFormulario">';
            strHtml += '<input   type="text" class="input_text"  size="10" id="txtpenalidadpreg' + linML + '"  name="txtpenalidadpreg1" readonly  value="' + txtpenalidadpreg + '" >';
            strHtml += '</td>';

            strHtml += '<td  align="center" class="tituloFormulario">';
            strHtml += '<input type="text"  class="input_text"   size="10" id="txtpenalidadayudas' + linML + '"  name="txtpenalidadayudas1" readonly   value="' + txtpenalidadayudas + '"  >';
            strHtml += '</td>';

            strHtml += '<td  align="center">';
            strHtml += '<a href="javascript:retirarItem(\'z' + linML + '\',\'actObjetivo' + linML + '\',\'' + txtcantpreg + '\',\'' + txtpuntajepreg + '\');" title="Eliminar Fila"><img src="images/tacho.gif" border="0" /></a>';
            strHtml += '</td>';
            strHtml += '</tr>';
            linML++;


        }
        returnObj = returnObj.slice(0, -16) + strHtml;
        returnObj += "</tbody></table>";
        document.all[nomDiv].innerHTML = returnObj;
        calculartotalpreguntas(txtcantpreg, txtpuntajepreg, 1);
    }else
    {
       jAlert('La Cantidad de  Preguntas  esta Fuera de  Rango !!!!!!', 'Mensaje !!');  
       
    }
    }

}
var total = 0;
var totalpuntaje = 0;
var totaldelaspreguntas=0;
function   calculartotalpreguntas(cantpreguntas, puntajepreg, op)
{
    var CantidadPreguntas = document.getElementsByName('codnivel').length;

    var TotalPreguntas = 0, TotalPuntaje = 0;
    for (var i = 0; i < CantidadPreguntas; i++)
    {
        var Cantidad = document.getElementsByName('txtcantpreg1')[i].value;
        var PuntajePregunta = document.getElementsByName('txtpuntajepreg1')[i].value;

        TotalPreguntas = parseFloat(TotalPreguntas) + parseFloat(Cantidad);
        totaldelaspreguntas=TotalPreguntas;
        
        TotalPuntaje = parseFloat(TotalPuntaje) + (parseFloat(Cantidad) * PuntajePregunta);
    }
    document.getElementById('txttotal').value = "" + TotalPreguntas;
    document.getElementById('txtpuntajetotal').value = "" + TotalPuntaje;
    return;


    /*var cantidad = parseInt(cantpreguntas);
     var puntaje = parseFloat(puntajepreg);
     total = document.getElementById('txttotal').value;
     totalpuntaje = document.getElementById('txtpuntajetotal').value;
     switch (op)
     {
     case 1:
     {
     total = parseInt(total) + cantidad;
     totalpuntaje = parseInt(totalpuntaje) + puntaje * cantidad;
     document.getElementById('txttotal').value = "" + total;
     document.getElementById('txtpuntajetotal').value = "" + totalpuntaje;
     break;
     }
     case 2:
     {
     total = parseInt(total) - cantidad;
     totalpuntaje = parseInt(totalpuntaje) - puntaje * cantidad;
     document.getElementById('txttotal').value = "" + total;
     document.getElementById('txtpuntajetotal').value = "" + totalpuntaje;
     break;
     }
     }*/
}

function  validarCantidadPreguntas(nropreg)
{    var numeropreg;
    
    numeropreg=parseInt(nropreg);
    
    totalpreguntascad=document.getElementById("txttotalpreguntas").value;
    totalpreg=parseInt(totalpreguntascad);
    
    
   if((numeropreg>totalpreg))
   {
        jAlert('Cantidad de  Pregunta   Fuera de  Rango !!!!!!', 'Mensaje !!');  
        document.getElementById("txtcantpreg").value="";
        document.getElementById("txtcantpreg").focus(); 
   }
   
    
}



function  retirarItem(fila, campo, cantidad)
{
    //calculartotalpreguntas(cantidad, 2);
    var fila = document.getElementById(fila).remove();
    calculartotalpreguntas(cantidad, 2);
    //fila.style.display = "none";
    //var obj = document.getElementById(campo);

}

function  colorfoco(op)
{
    var op1 = parseInt(op);

    switch (op1)
    {
        case 0:
        {
            document.getElementById('txtpenalidadayudas').value = "";
            document.getElementById("txtpenalidadayudas").readOnly = false;
            document.getElementById('txtcantpreg').focus();

            break;
        }
        case 1:
        {
            document.getElementById('txtpenalidadayudas').value = "0";
            document.getElementById("txtpenalidadayudas").readOnly = true;
            document.getElementById('txtcantpreg').focus();
            break;
        }
        case 2:
        {
            document.getElementById('txtpenalidadayudas').value = "";
            document.getElementById("txtpenalidadayudas").readOnly = false;
            document.getElementById('txtcantpreg').focus();
            break;
        }
        case 3:
        {
            document.getElementById('txtpenalidadayudas').value = "";
            document.getElementById("txtpenalidadayudas").readOnly = false;
            document.getElementById('txtcantpreg').focus();
            break;
        }
    }

}
var acumulador1 = "";
function  GrabarEstructuraExamen(ruta, cod, tabla, op)
{
     /* var lista0=new Array();
     var lista1 = new Array();  
     var lista2 = new Array();  
     var lista3 = new Array();  
     var lista4 = new Array();  
     var lista5 = new Array(); */

    var ListaDetalleEstructuraExamen = new Array();

    var cbosemestre,
            cbocarrera,
            cbomateria,
            cbounidadtematica,
            cbotema,
            cbotipoexamen, txtTiempoMinutos, txtTotalPreguntas;

    cbosemestre = document.getElementById('cbosemestre').value;
    cbocarrera = document.getElementById('cbocarrera').value;
    cbomateria = document.getElementById('cbomateria').value;
    // luego se sacara estos  dos campos -----------------------------
         cbounidadtematica = 1;
         cbotema = 1
    // ----------------------------------------------------------------------------------------------
    cbotipoexamen = document.getElementById('cbotipoexamen').value;
    
    txtTotalPreguntas = document.getElementById('txttotalpreguntas').value;
    txtTiempoMinutos = document.getElementById('txttiempo').value;
    
if(cbosemestre=="0")
{  
   jAlert('Elije el Semestre por Favor !!!!!', 'Mensaje !!'); 
   document.getElementById('cbosemestre').focus();
   return;
    
}else if(cbocarrera=="0")
{  jAlert('Elije la Carrera Profesiona por Favor !!!!!', 'Mensaje !!'); 
   document.getElementById('cbocarrera').focus();
   return;
    
}else if(cbomateria=="0")
{  jAlert('Elije la  Materia por Favor !!!!!', 'Mensaje !!'); 
   document.getElementById('cbomateria').focus();
   return;
    
}else if(cbotipoexamen=="0")
{  jAlert('Elije el Tipo de  Examen por Favor !!!!!', 'Mensaje !!'); 
   document.getElementById('cbotipoexamen').focus();
   return;
    
}else if(txtTiempoMinutos.length==0)
{     jAlert('Ingrese  el total en minutos  del  tiempo de duracion del Examen !!!!!', 'Mensaje !!'); 
      document.getElementById('txttiempo').focus();
      return;
    
}else if(txtTotalPreguntas.length==0)
{     jAlert('Ingrese el  total de  preguntas del Examen por Favor !!!!!', 'Mensaje !!'); 
      document.getElementById('txttotalpreguntas').focus();
      return;
    
}else if(document.getElementsByName('codnivel').length==0)
{     jAlert('Ingrese por favor el Detalle del Examen  por Favor !!!!!', 'Mensaje !!'); 
      document.getElementById('cbounidadtematica').focus();
      return;
    
}else 
{
    var EstructuraExamenBean = new Object();
    EstructuraExamenBean.CODESTRUCEXAMEN = cod;
    EstructuraExamenBean.CODSEMESTRE = cbosemestre;
    EstructuraExamenBean.CODTIPEXAMEN = cbotipoexamen;
    EstructuraExamenBean.CODCARRERA = cbocarrera;
    EstructuraExamenBean.CODMATERIA = cbomateria;
   // EstructuraExamenBean.CODUNIDTEMA = cbounidadtematica;
    EstructuraExamenBean.CODUNIDAD = cbounidadtematica;
    EstructuraExamenBean.CODTEMA = cbotema;
    EstructuraExamenBean.TiempoMinutos = txtTiempoMinutos;

    var Cantidad = document.getElementsByName('codnivel').length;
    // jAlert(cbounidadtematica1);
    for (var i = 0; i < Cantidad; i++)
    {
        var DetalleEstructuraExamenBean = new Object();
        DetalleEstructuraExamenBean.CODDETAESTRUCEXAMEN = cod;
        //DetalleEstructuraExamenBean.TIEMPOXPREG=
        DetalleEstructuraExamenBean.NUMITEM = (i+1);
         
//        
//        
//        
//        alert(document.getElementsByName('cbounidadtematica')[i].value+"    "+document.getElementsByName('codTema')[i].value+"    "+
//                document.getElementsByName('codnivel')[i].value+"     "+document.getElementsByName('txtcantpreg1')[i].value+"   "+
//                document.getElementsByName('txtpuntajepreg1')[i].value+"     "+document.getElementsByName('txtpenalidadayudas1')[i].value+"    "+document.getElementsByName('txtpenalidadpreg1')[i].value);
//        
//        
        DetalleEstructuraExamenBean.CODCARRERA = cbocarrera;
        DetalleEstructuraExamenBean.CODMATERIA = cbomateria;
        DetalleEstructuraExamenBean.CODUNIDAD=document.getElementsByName('hiddencbounidadtematica')[i].value;
        DetalleEstructuraExamenBean.CODTEMA = document.getElementsByName('hiddencbotema')[i].value;
        DetalleEstructuraExamenBean.CODNIVEL = document.getElementsByName('codnivel')[i].value;
        DetalleEstructuraExamenBean.CANTPREG = document.getElementsByName('txtcantpreg1')[i].value;
        DetalleEstructuraExamenBean.PUNTAJEXPREG = document.getElementsByName('txtpuntajepreg1')[i].value;
        DetalleEstructuraExamenBean.PENALIDADXPREG = document.getElementsByName('txtpenalidadpreg1')[i].value;
        DetalleEstructuraExamenBean.PENALIDADAYUDA = document.getElementsByName('txtpenalidadayudas1')[i].value;
        DetalleEstructuraExamenBean.TIEMPOXPREG = 1;

        ListaDetalleEstructuraExamen.push(DetalleEstructuraExamenBean);
        /*lista0.push(document.getElementsByName('codnivel')[i].value);       
         lista1.push(document.getElementsByName('nivel')[i].value);          
         lista2.push(document.getElementsByName('txtcantpreg1')[i].value);
         lista3.push(document.getElementsByName('txtpuntajepreg1')[i].value);
         lista4.push(document.getElementsByName('txtpenalidadpreg1')[i].value);
         lista5.push(document.getElementsByName('txtpenalidadayudas1')[i].value);  */

    }
    var pagina = ruta + "/" + tabla + "Servlet?op=" + op;
    $.ajax({
        type: 'POST',
        url: pagina,
        //    dataType: 'JSON',
        data: {
            EstructuraExamenBean: JSON.stringify(EstructuraExamenBean),
            ListaDetalleEstructuraExamen: JSON.stringify(ListaDetalleEstructuraExamen),
        }, //'lista0='+lista0+'&lista1='+lista1+'&lista2='+lista2+'&lista3='+lista3+'&lista4='+lista4+'&lista5='+lista5+'&cbosemestre='+cbosemestre+'&cbocarrera='+cbocarrera+'&cbomateria='+cbomateria1+'&cbounidadtematica='+cbounidadtematica1+'&cbotema='+cbotema1+'&codigoestructura='+cod+"&cbotipoexamen="+cbotipoexamen,
        success: function (data) {
              
                
            jAlert('Estructura del Examen Registrado Satisfactoriamente  OK !!!!!!! ', 'Confirmaacion !!'); 
           
            CallMant(ruta, 'EstructuraExamen', 11, '');
          //  $('#divtabla').html(data);
          //  activeDatatable();   
        }
    });
    }
}


function  ModificarEstructuraExamen(ruta, tabla, op)
{
    /* var lista0=new Array();
     var lista1 = new Array();  
     var lista2 = new Array();  
     var lista3 = new Array();  
     var lista4 = new Array();  
     var lista5 = new Array(); */

    var ListaDetalleEstructuraExamen = new Array();

    var cbosemestre,
            cbocarrera,
            cbomateria,
            cbounidadtematica,
            cbotema,
            cbotipoexamen,
            codigo,
            txtTiempoMinutos;

    cbosemestre = document.getElementById('cbosemestre').value;
    cbocarrera = document.getElementById('cbocarrera').value;
    cbomateria = document.getElementById('cbomateria').value;
    cbounidadtematica = document.getElementById('cbounidadtematica').value;
    //cbotema = document.getElementById('cbotema').value;
    cbotipoexamen = document.getElementById('cbotipoexamen').value;
    codigo = document.getElementById("txtcodigo").value;
    txtTiempoMinutos = document.getElementById('txtTiempo').value;
    ;

    var EstructuraExamenBean = new Object();
    EstructuraExamenBean.CODESTRUCEXAMEN = codigo;
    EstructuraExamenBean.CODSEMESTRE = cbosemestre;
    EstructuraExamenBean.CODTIPEXAMEN = cbotipoexamen;
    EstructuraExamenBean.CODCARRERA = cbocarrera;
    EstructuraExamenBean.CODMATERIA = cbomateria;
    EstructuraExamenBean.CODUNIDTEMA = cbounidadtematica;
    EstructuraExamenBean.CODUNIDAD = cbounidadtematica;
    EstructuraExamenBean.CODTEMA = cbotema;
    EstructuraExamenBean.TiempoMinutos = txtTiempoMinutos;


    // jAlert(cbounidadtematica1);
    var Cantidad = document.getElementsByName('codnivel').length;
    for (var i = 0; i < Cantidad; i++)
    {
        var DetalleEstructuraExamenBean = new Object();
        DetalleEstructuraExamenBean.CODDETAESTRUCEXAMEN = codigo;
        //DetalleEstructuraExamenBean.TIEMPOXPREG=
        DetalleEstructuraExamenBean.NUMITEM = i;
        DetalleEstructuraExamenBean.CODNIVEL = document.getElementsByName('codnivel')[i].value;
        DetalleEstructuraExamenBean.CODTEMA = document.getElementsByName('codTema')[i].value;
        DetalleEstructuraExamenBean.CANTPREG = document.getElementsByName('txtcantpreg1')[i].value;
        DetalleEstructuraExamenBean.PUNTAJEXPREG = document.getElementsByName('txtpuntajepreg1')[i].value;
        DetalleEstructuraExamenBean.PENALIDADXPREG = document.getElementsByName('txtpenalidadpreg1')[i].value;
        DetalleEstructuraExamenBean.PENALIDADAYUDA = document.getElementsByName('txtpenalidadayudas1')[i].value;
        DetalleEstructuraExamenBean.TIEMPOXPREG = 1;

        ListaDetalleEstructuraExamen.push(DetalleEstructuraExamenBean);
        /*lista0.push(document.getElementsByName('codnivel')[i].value);       
         lista1.push(document.getElementsByName('nivel')[i].value);          
         lista2.push(document.getElementsByName('txtcantpreg1')[i].value);
         lista3.push(document.getElementsByName('txtpuntajepreg1')[i].value);
         lista4.push(document.getElementsByName('txtpenalidadpreg1')[i].value);
         lista5.push(document.getElementsByName('txtpenalidadayudas1')[i].value);  */

    }
    var pagina = ruta + "/" + tabla + "Servlet?op=" + op;
    $.ajax({
        type: 'POST',
        url: pagina,
        //    dataType: 'JSON',
        data: {
            EstructuraExamenBean: JSON.stringify(EstructuraExamenBean),
            ListaDetalleEstructuraExamen: JSON.stringify(ListaDetalleEstructuraExamen),
        }, //'lista0='+lista0+'&lista1='+lista1+'&lista2='+lista2+'&lista3='+lista3+'&lista4='+lista4+'&lista5='+lista5+'&cbosemestre='+cbosemestre+'&cbocarrera='+cbocarrera+'&cbomateria='+cbomateria1+'&cbounidadtematica='+cbounidadtematica1+'&cbotema='+cbotema1+'&codigoestructura='+cod+"&cbotipoexamen="+cbotipoexamen,
        success: function (data) {
            CallMant(ruta, 'EstructuraExamen', 11, '');
            /*$('#divtabla').html(data);
             activeDatatable();   */
        }
    });
}

function cargarEstructuraExamen(ruta, codigo, semestre, carrera, materia, unidad, tema, tipoexamen, TiempoMinutos) {
    document.getElementById("txtcodigo").value = codigo;
    document.getElementById("cbosemestre").value = semestre;
    document.getElementById("cbocarrera").value = carrera;
    document.getElementById("txtTiempo").value = TiempoMinutos;


    cargarMateria2(ruta, 'Materia', 10, carrera, materia);
    cargarUnidadTematica2(ruta, 'UnidadTematica', 10, carrera, materia, unidad);
    cargarTema2(ruta, 'Tema', 14, carrera, materia, unidad, tema);

    document.getElementById("cbotipoexamen").value = tipoexamen;

    cargarItemMarcoLogico(ruta, codigo);
    cargarItemMarcoTotal(ruta, codigo);

    document.getElementById("btnGrabar").style.display = "none";
    document.getElementById("btnModificar").style.display = "block";

    document.getElementById("cbosemestre").disabled = true;
    document.getElementById("cbocarrera").disabled = true;
    document.getElementById("cbotipoexamen").disabled = true;
    setInterval(function () {
        document.getElementById("cbomateria").disabled = true;
        document.getElementById("cbounidadtematica").disabled = true;
    }, 5)
}

function soloNumeros(event)
{
    if (event.keyCode < 45 || event.keyCode > 57)
        event.returnValue = false;
}


function   eliminarEstructuraExamen(ruta,op,cod)
{
    var parametros="codestruct="+cod;
    
   eliminar(ruta,'EstructuraExamen', op,parametros); 
   
    
}





//----------------------------------------------------------------------------------------------

//  EXAMENAUTOGENERADO  -------------------------------------------------------------------------

// RENDIR EL EXAMEN 


function   MostrarExamenesTraining(ruta, tabla, op, parametros, tiempo, activartimer)
{ 
    linML = 0;
    var pagina = ruta + "/" + tabla + "Servlet?op=" + op + parametros;

    if (activartimer == 1)
    {
        // carga(ruta,tabla,tiempo);
    }
    var xmlhttp;
    if (window.XMLHttpRequest)
    {
        xmlhttp = new XMLHttpRequest();
    }
    else
    {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function ()
    {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
        {
            document.getElementById("divtraining").innerHTML = xmlhttp.responseText;
            //activeDatatable(); 
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
}




function   VerExamenesARendir(ruta, tabla, op, parametros)
{
    linML = 0;
    var pagina = ruta + "/" + tabla + "Servlet?op=" + op + parametros;

    var xmlhttp;
    if (window.XMLHttpRequest)
    {
        xmlhttp = new XMLHttpRequest();
    }
    else
    {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function ()
    {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
        {
            document.getElementById("contenido").innerHTML = xmlhttp.responseText;

        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
}

function   finExamen(ruta, tabla, op)
{
    linML = 0;
    var pagina = ruta + "/" + tabla + "Servlet?op=" + op;
    var xmlhttp;
    if (window.XMLHttpRequest)
    {
        xmlhttp = new XMLHttpRequest();
    }
    else
    {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function ()
    {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
        {
            document.getElementById("contenido").innerHTML = xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
    clearInterval(cronometro3);
}
function   IniciarExamenAlumno(ruta, tabla, op,parametros)
{   
    linML = 0;
    var pagina = ruta + "/" + tabla + "Servlet?op=" + op+parametros;
    
    var tiempo = document.getElementById("tiempo").value;
   
    var xmlhttp;
    if (window.XMLHttpRequest)
    {
        xmlhttp = new XMLHttpRequest();
    }
    else
    {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function ()
    {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
        {
            document.getElementById("contenido").innerHTML = xmlhttp.responseText;
            //activeDatatable(); 
        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
    total = 0;
    carga(ruta, tabla, tiempo);
}

var cronometro3;
var FlagCronometro = true;
var FlagExamenTerminado = false;

function carga(ruta, tabla, tiempo)
{
    var contador_s = 0;
    var contador_m = parseInt(tiempo);
    
    FlagCronometro = true;
    FlagExamenTerminado = false;
    
    

    cronometro3 = setInterval(
            function ()
            {
                if (FlagExamenTerminado) {
                    return;
                }
                
                if (parseInt(contador_m) <= 9 && FlagCronometro) {
                    document.getElementById('minutos').parentElement.style.color = "red";
                   // jAlert('Su tiempo esta por terminar solo le quedan 10 minutos.');
                    FlagCronometro = false;
                }
                
                if (contador_s == -1)
                {
                    contador_s = 59;
                    contador_m--;

                    if (contador_m == -1)
                    {
                        jAlert('El tiempo para el examen a terminado.', 'Examen Terminado',
                                function () {
                                    finExamen(ruta, tabla, 5);
                                });
                        FlagExamenTerminado = true;
                        return;
                    } 
                }
                
                if (contador_m <= 9)
                {
                    document.getElementById("minutos").innerHTML = '0' + parseInt(contador_m) ;
                }
                else
                {
                    document.getElementById("minutos").innerHTML = parseInt(contador_m) ;
                }

                if (contador_s <= 9)
                        document.getElementById("segundos").innerHTML = '0' + contador_s;
                    else
                        document.getElementById("segundos").innerHTML = contador_s;
                
                contador_s--;
            }, 1000);
}

function   Ayuda(ruta, tabla, op, parametros, idA, idboton, penalidad)
{

    acumpenalidadayudas = acumpenalidadayudas + parseFloat(penalidad);


    document.getElementById(idboton).disabled = true;
    document.getElementById(idboton).style.backgroundColor = "#D5F7FF"
    document.getElementById(idA).style.backgroundColor = "#D5F7FF"
    document.getElementById(idA).style.backgroundColor = "#D5F7FF";


    var pagina = ruta + "/" + tabla + "Servlet?op=" + op + parametros;

    var xmlhttp;
    if (window.XMLHttpRequest)
    {
        xmlhttp = new XMLHttpRequest();
    }
    else
    {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function ()
    {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
        {
            document.getElementById(idA).innerHTML = xmlhttp.responseText;

        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);


}

//------------------------RECIEN IMPLEMENTADO -----------------------------------------------------------

var contadorpreguntas = 1;
function   siguientepreguntaalumno(ruta, tabla, op, limite,parametros)
{
    
    // var clavealternativaelegida = document.getElementById("rdop").value;
//    var respuestaok = document.getElementById("RESPUESTAOK").value;
//    var errorpregunta =document.getElementById("ERRORPREGUNTA").value;
//
//    var CODDESARROLLOEXAMGENERADO = document.getElementById("CODDESARROLLOEXAMGENERADO").value;
//
//    var NUMEXAMDESARROLLOGENERADO = document.getElementById("NUMEXAMDESARROLLOGENERADO").value;

    linML = 0;
   // var pagina = ruta + "/" + tabla + "Servlet?op=" + op + "&alternativaelegida=" + clavealternativaelegida + "&penalidadtotalayudas=" + acumpenalidadayudas + "&RESPUESTAOK=" + respuestaok + "&errorpregunta=" + errorpregunta + "&CODDESARROLLOEXAMGENERADO=" + CODDESARROLLOEXAMGENERADO + "&NUMEXAMDESARROLLOGENERADO=" + NUMEXAMDESARROLLOGENERADO;
      var pagina = ruta + "/" + tabla + "Servlet?op=" + op+parametros ;
     
    var xmlhttp;
    if (window.XMLHttpRequest)
    {
        xmlhttp = new XMLHttpRequest();
    }
    else
    {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function ()
    {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
        {
            document.getElementById("contenido").innerHTML = xmlhttp.responseText;

        }
    }
    xmlhttp.open("GET", pagina, true);
    xmlhttp.send(null);
    if (contadorpreguntas == limite)
    {
        clearInterval(cronometro3);
    }
    acumpenalidadayudas = 0;
}

// ------------------------------------------------------------------------------------------------------
  // Gestionar  acceso al  Sistema  aqui intervienen las  Tablas Alumno  y ROLXDOCEN   CREAR  USUARIOS----

function  SeleccionarTipoUsuarioDocente(ruta,tabla)
{
  var pagina=ruta+"/"+tabla+"Servlet?op="+op+"&clavenueva="+clavenueva;
    
    var xmlhttp;
    if(window.XMLHttpRequest)
    {   xmlhttp=new XMLHttpRequest();
    }
    else
    {   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
    }
    xmlhttp.onreadystatechange=function()
    {   if(xmlhttp.readyState==4 && xmlhttp.status==200)
        {        var   estado=xmlhttp.responseText;
                 var   num=0;
                 try 
                 {  num =parseInt(estado);
                 }
                 catch(e)
                 { 
                 }                           
               if(num==1)
               {  direccionar();
                  document.getElementById("grande").style.display="block";
                  document.getElementById("contenedor").style.display="none";
               }
               else
               {  document.getElementById("contenido").innerHTML=xmlhttp.responseText;
                    activeDatatable(); 
               }                         
        }
    }                
    xmlhttp.open("GET",pagina,true);
                xmlhttp.send(null);   
}
function SeleccionarTipoUsuarioAlumno(ruta,tabla)
{
    var pagina=ruta+"/"+tabla+"Servlet?op="+op+"&clavenueva="+clavenueva;
    
    var xmlhttp;
    if(window.XMLHttpRequest)
    {   xmlhttp=new XMLHttpRequest();
    }
    else
    {   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
    }
    xmlhttp.onreadystatechange=function()
    {   if(xmlhttp.readyState==4 && xmlhttp.status==200)
        {        var   estado=xmlhttp.responseText;
                 var   num=0;
                 try 
                 {  num =parseInt(estado);
                 }
                 catch(e)
                 { 
                 }                           
               if(num==1)
               {  direccionar();
                  document.getElementById("grande").style.display="block";
                  document.getElementById("contenedor").style.display="none";
               }
               else
               {  document.getElementById("contenido").innerHTML=xmlhttp.responseText;
                   activeDatatable(); 
               }                         
        }
    }                
    xmlhttp.open("GET",pagina,true);
                xmlhttp.send(null); 
}


function SeleccionarTipoUsuario(ruta,tabla,op)
{   document.getElementById('contenidoalternativo').style.display="none";
    document.getElementById('contenido').style.display="block";
    var pagina=ruta+"/"+tabla+"Servlet?op="+op;
    
    var xmlhttp;
    if(window.XMLHttpRequest)
    {   xmlhttp=new XMLHttpRequest();
    }
    else
    {   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
    }
    xmlhttp.onreadystatechange=function()
    {   if(xmlhttp.readyState==4 && xmlhttp.status==200)
        {        var   estado=xmlhttp.responseText;
                 var   num=0;
                 try 
                 {  num =parseInt(estado);
                 }
                 catch(e)
                 { 
                 }                           
               if(num==1)
               {  direccionar();
                  document.getElementById("grande").style.display="block";
                  document.getElementById("contenedor").style.display="none";
               }
               else
               {  document.getElementById("contenido").innerHTML=xmlhttp.responseText;
                   
               }                         
        }
    }                
    xmlhttp.open("GET",pagina,true);
                xmlhttp.send(null); 
  
}
function   CrearUsuario(ruta,tabla,op)
{   document.getElementById('contenidoalternativo').style.display="none";
    document.getElementById('contenido').style.display="block";
    var pagina=ruta+"/"+tabla+"Servlet?op="+op;
    
    var xmlhttp;
    if(window.XMLHttpRequest)
    {   xmlhttp=new XMLHttpRequest();
    }
    else
    {   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
    }
    xmlhttp.onreadystatechange=function()
    {   if(xmlhttp.readyState==4 && xmlhttp.status==200)
        {        var   estado=xmlhttp.responseText;
                 var   num=0;
                 try 
                 {  num =parseInt(estado);
                 }
                 catch(e)
                 { 
                 }                           
               if(num==1)
               {  direccionar();
                  document.getElementById("grande").style.display="block";
                  document.getElementById("contenedor").style.display="none";
               }
               else
               {  document.getElementById("contenido").innerHTML=xmlhttp.responseText;
                  
               }                         
        }
    }                
    xmlhttp.open("GET",pagina,true);
                xmlhttp.send(null); 
  
}

function   FiltrarListaUsuariosDocentes(ruta,tabla,op,codcarrera)
{   
    var pagina=ruta+"/"+tabla+"Servlet?op="+op+"&codcarrera="+codcarrera;

    var xmlhttp;
    if(window.XMLHttpRequest)
    {   xmlhttp=new XMLHttpRequest();
    }
    else
    {   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
    }
    xmlhttp.onreadystatechange=function()
    {   if(xmlhttp.readyState==4 && xmlhttp.status==200)
        {        var   estado=xmlhttp.responseText;
                 var   num=0;
                 try 
                 {  num =parseInt(estado);
                 }
                 catch(e)
                 { 
                 }                           
               if(num==1)
               {  direccionar();
                  document.getElementById("grande").style.display="block";
                  document.getElementById("contenedor").style.display="none";
               }
               else
               {  document.getElementById("divdocente").innerHTML=xmlhttp.responseText;
                  
               }                         
        }
    }                
    xmlhttp.open("GET",pagina,true);
                xmlhttp.send(null); 
  
}

function   ListaUsuariosDocentes(ruta,tabla,op)
{     
    var  codcarrera=document.getElementById("cbocarrera").value;
    var  coddocente=document.getElementById("cbodocente").value;
    var pagina=ruta+"/"+tabla+"Servlet?op="+op+"&codcarrera="+codcarrera+"&coddocente="+coddocente;
    
    var xmlhttp;
    if(window.XMLHttpRequest)
    {   xmlhttp=new XMLHttpRequest();
    }
    else
    {   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
    }
    xmlhttp.onreadystatechange=function()
    {   if(xmlhttp.readyState==4 && xmlhttp.status==200)
        {        var   estado=xmlhttp.responseText;
                 var   num=0;
                 try 
                 {  num =parseInt(estado);
                 }
                 catch(e)
                 { 
                 }                           
               if(num==1)
               {  direccionar();
                  document.getElementById("grande").style.display="block";
                  document.getElementById("contenedor").style.display="none";
               }
               else
               {  document.getElementById("divtabladocentes").innerHTML=xmlhttp.responseText;
                  activeDatatable(); 
               }                         
        }
    }                
    xmlhttp.open("GET",pagina,true);
                xmlhttp.send(null); 
  
}

function   eliminarUsuarioDocente(ruta,tabla,op,codrolxdocente)
{     
    var  codcarrera=document.getElementById("cbocarrera").value;
    var  coddocente=document.getElementById("cbodocente").value;
    var pagina=ruta+"/"+tabla+"Servlet?op="+op+
                                      "&codrolxdocente="+codrolxdocente+
                                      "&codcarrera="+codcarrera+
                                     "&coddocente="+coddocente;    
                             
                             
    var xmlhttp;
    if(window.XMLHttpRequest)
    {   xmlhttp=new XMLHttpRequest();
    }
    else
    {   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
    }
    xmlhttp.onreadystatechange=function()
    {   if(xmlhttp.readyState==4 && xmlhttp.status==200)
        {        var   estado=xmlhttp.responseText;
                 var   num=0;
                 try 
                 {  num =parseInt(estado);
                 }
                 catch(e)
                 { 
                 }                           
               if(num==1)
               {  direccionar();
                  document.getElementById("grande").style.display="block";
                  document.getElementById("contenedor").style.display="none";
               }
               else
               {  document.getElementById("divtabladocentes").innerHTML=xmlhttp.responseText;
                  activeDatatable(); 
               }                         
        }
    }                
    xmlhttp.open("GET",pagina,true);
                xmlhttp.send(null); 
  
}

function   habilitarUsuarioDocente(ruta,tabla,op,codrolxdocente)
{     
    var  codcarrera=document.getElementById("cbocarrera").value;
    var  coddocente=document.getElementById("cbodocente").value;
    var pagina=ruta+"/"+tabla+"Servlet?op="+op+
                                      "&codrolxdocente="+codrolxdocente+
                                      "&codcarrera="+codcarrera+
                                     "&coddocente="+coddocente;    
                             
                            
    var xmlhttp;
    if(window.XMLHttpRequest)
    {   xmlhttp=new XMLHttpRequest();
    }
    else
    {   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
    }
    xmlhttp.onreadystatechange=function()
    {   if(xmlhttp.readyState==4 && xmlhttp.status==200)
        {        var   estado=xmlhttp.responseText;
                 var   num=0;
                 try 
                 {  num =parseInt(estado);
                 }
                 catch(e)
                 { 
                 }                           
               if(num==1)
               {  direccionar();
                  document.getElementById("grande").style.display="block";
                  document.getElementById("contenedor").style.display="none";
               }
               else
               {  document.getElementById("divtabladocentes").innerHTML=xmlhttp.responseText;
                  activeDatatable(); 
               }                         
        }
    }                
    xmlhttp.open("GET",pagina,true);
                xmlhttp.send(null); 
  
}

   
    
  function   RegistrarUsuarioDocente(ruta,tabla,op)
{   var xmlhttp;  
    var  codcarrera=document.getElementById("cbocarrera").value;
    var  coddocente=document.getElementById("cbodocente").value;
    var  codrol=document.getElementById("cborol").value;
    var  usuario=document.getElementById("txtusuario").value;
     var password=document.getElementById("txtpassword").value;
     
    var pagina=ruta+"/"+tabla+"Servlet?op="+op+                     
                                     "&codcarrera="+codcarrera+
                                     "&coddocente="+coddocente+
                                     "&codrol="+codrol+
                                     "&usuario="+usuario+
                                     "&password="+password;
                             
    if(codcarrera==0)
    {
            jAlert("Seleccione la  Carrera Profesional !!!!", 'Validacion');
            document.getElementById("cbocarrera").focus();
            return; 
    }else if(coddocente==0)
    {
            jAlert("Seleccione al Docente !!!!", 'Validacion');
            document.getElementById("cbodocente").focus();
    }else if(codrol==0)
    {        jAlert("Seleccione el Rol  !!!!", 'Validacion');
            document.getElementById("cborol").focus();
        
    }else if(usuario.length==0)
    {       jAlert("Ingrese  el Usuario", 'Validacion');
            document.getElementById("txtusuario").focus();
        
    }else if(password.length==0)
    {       jAlert("Ingrese  el password !!!", 'Validacion');
            document.getElementById("txtpassword").focus();
        
    }else
    {
   
    if(window.XMLHttpRequest)
    {   xmlhttp=new XMLHttpRequest();
    }
    else
    {   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
    }
    xmlhttp.onreadystatechange=function()
    {   if(xmlhttp.readyState==4 && xmlhttp.status==200)
        {       
                document.getElementById("divtabladocentes").innerHTML=xmlhttp.responseText;
                  activeDatatable(); 
                  
                                        
        }
    }                
    xmlhttp.open("GET",pagina,true);
                xmlhttp.send(null); 
    }
}

// SUBIR  IMAGENES -------------------------------------------------------------------------------------------------------

             function  SubirImagen(ruta,tabla,op,parametros)
              {   
                  var pagina=ruta+"/"+tabla;                   
                       $('input[type="file"]').ajaxfileupload({
                        'action' :pagina,
                        'onComplete' : function(response) {
                                $('#upload').hide();
                                $('#message').show();

                                var statusVal = JSON.stringify(response.status);

                                if(statusVal == "false")
                                {
                                        $("#message").html("<font color='red'>"+ JSON.stringify(response.message) +" </font>");

                                }	
                                if(statusVal == "true")
                                {      
                                        $("#message").html("<font color='red' face='Arial Black' size='2'>Imagen Subida</font>");
                                }			
                        },
                        'onStart' : function() {
                                $('#upload').show();
                                $('#message').hide();
                        }
                        });   
              }
                
               function  SubirImagenPregunta()
              {   var url="<%=request.getContextPath()%>/BancoPreguntas/Pregunta/SubirImagenPregunta.jsp";                  
                    var posicion_x; 
                    var posicion_y; 
                    var ancho=400;
                    var alto=100;
                    posicion_x=(screen.width/2)-(ancho/2); 
                    posicion_y=(screen.height/2)-(alto/2);                                
                   window.open(url,'popup',"width="+ancho+",height="+alto+",menubar=0,toolbar=0,directories=0,scrollbars=no,resizable=no,left="+posicion_x+",top="+posicion_y+"");
              }