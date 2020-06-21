package SERVLET;

import BEAN.DocenteBean;
import BEAN.DocenteSBean;
import DAO.CarreraProfesionalDAO;
import DAO.DocenteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import UTIL.Constantes;

public class DocenteServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
        
        HttpSession      session = request.getSession();
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String opcad = new String(request.getParameter("op").getBytes("ISO-8859-1"), "UTF-8");
        int  tipo;
        int op = Integer.parseInt(opcad);
       
        try {
            switch (op) {
                case 9: {
                    session = request.getSession();  //creando la seseion       
                    String mensaje = "";
                   
                    String usuario = new String(request.getParameter("txtusu").getBytes("ISO-8859-1"), "UTF-8");
                    String clave = new String(request.getParameter("txtcla").getBytes("ISO-8859-1"), "UTF-8");
                    DocenteSBean objDocenteSBean = new DocenteSBean();
                    String tipocad =request.getParameter("tipousu");
                    objDocenteSBean.setTIPO(tipocad);
                    objDocenteSBean.setUSUARIO(usuario);
                    objDocenteSBean.setCLAVE(clave);
                   
                    
                    DocenteDAO objDocenteDAO = new DocenteDAO();
                    int valido = objDocenteDAO.ValidarDocente(objDocenteSBean);
                    System.out.println("Estado :"+valido);
                   
                    DocenteSBean objDocSBean = objDocenteDAO.DatosDocente(objDocenteSBean);
                    if (valido == 0) {
                        session.invalidate();
                        mensaje = "Las credenciales no son correctas.";
                        request.setAttribute("mensaje", mensaje);
                        
                        getServletContext().getRequestDispatcher("/" + Constantes.rutaaccesodocente + "FrmLoginPersonal.jsp").forward(request, response);
                    } else {
                        session.setAttribute("SESION", objDocSBean);
                        tipo=Integer.parseInt(  tipocad);
                        if(tipo==1)
                        {
                        getServletContext().getRequestDispatcher("/" + Constantes.rutaaccesodocente + "FrmPrincipalAdministrador.jsp").forward(request, response);
                        }
                        else
                        {
                           if(tipo==2)
                           {
                            getServletContext().getRequestDispatcher("/" + Constantes.rutaaccesodocente + "FrmPrincipalDocenteCoordinador.jsp").forward(request, response);
                           } 
                           else
                           {
                            getServletContext().getRequestDispatcher("/" + Constantes.rutaaccesodocente + "FrmPrincipalDocente.jsp").forward(request, response);   
                           }
                        }
                    }
                    break;
                }
            }
            if (session.getAttribute("SESION") == null) {
                out.println("1");
            } else {
                opcad = new String(request.getParameter("op").getBytes("ISO-8859-1"), "UTF-8");
                op = Integer.parseInt(opcad);

                switch (op) {
                    case 1: {
                        DocenteDAO objDocenteDAO = new DocenteDAO();
                        ArrayList listaDocente = objDocenteDAO.ListarDocente();
                        request.setAttribute("listaDocente", listaDocente);
                        getServletContext().getRequestDispatcher("/Entidades/Docente/FrmDocenteMant.jsp").forward(request, response);
                        break;
                    }
                    case 2: {
                        session = request.getSession();  //creando la session       
                        if (session.getAttribute("SESION") == null) {
                            getServletContext().getRequestDispatcher("/" + Constantes.rutaaccesodocente + "FrmSesionExpiro.jsp").forward(request, response);
                        } else {
                            getServletContext().getRequestDispatcher("/Entidades/FrmMenuMant.jsp").forward(request, response);
                            break;
                        }
                    }
                    case 3: {
                       
                            DocenteDAO objDocenteDAO = new DocenteDAO();
                            int codigo = objDocenteDAO.GenerarCodigoDocente();
                             CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                             ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                             request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);
                            request.setAttribute("codigogenerado", "" + codigo);
                            getServletContext().getRequestDispatcher("/Entidades/Docente/FrmDocenteRegistrarMant.jsp").forward(request, response);
                            break;
                       
                    }
                    case 4: {
                      
                            String mensaje = "";
                            String codcad = new String(request.getParameter("hddcodigo").getBytes("ISO-8859-1"), "UTF-8");
                            int codigo = Integer.parseInt(codcad);
                            String nombre = new String(request.getParameter("txtnombre").getBytes("ISO-8859-1"), "UTF-8");
                            String apepate = new String(request.getParameter("txtapelpate").getBytes("ISO-8859-1"), "UTF-8");
                            String apemate = new String(request.getParameter("txtapelmate").getBytes("ISO-8859-1"), "UTF-8");
                            String usuario = new String(request.getParameter("txtusuario").getBytes("ISO-8859-1"), "UTF-8");
                            String clave = new String(request.getParameter("txtclave").getBytes("ISO-8859-1"), "UTF-8");
                            String cbocarreracad = new String(request.getParameter("cbocarrera").getBytes("ISO-8859-1"), "UTF-8");
                            int  cbocarrera=Integer.parseInt(cbocarreracad);
                            DocenteBean objDocenteBean = new DocenteBean();
                            objDocenteBean.setCODDOCENTE(codigo);
                            objDocenteBean.setNOMBDOCENTE(nombre);
                            objDocenteBean.setAPEPATERDOCENTE(apepate);
                            objDocenteBean.setAPEMATERDOCENTE(apemate);                           
                            
                            objDocenteBean.setEMAIL("Coloca por favor un  Correo Electronico !!");
                            objDocenteBean.setNROTELEFONO("00000000");
                            objDocenteBean.setDIRECCION("Coloque la direccion por favor!!!");
                            
                            
                            objDocenteBean.setUSUARIO(usuario);
                            objDocenteBean.setCLAVE(clave);
                            objDocenteBean.setFOTO("foto.jpg");
                            objDocenteBean.setESTADO("A");
                            objDocenteBean.setCODCARRERA(cbocarrera);
                            DocenteDAO objDocenteDAO = new DocenteDAO();
                            int valido = objDocenteDAO.InsertarDocente(objDocenteBean);
                            CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                            ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                            if (valido == 1) {
                                mensaje = "Registro Insertado !!!";
                                codigo = objDocenteDAO.GenerarCodigoDocente();
                            } else {
                                mensaje = "Registro no Insertado !!!";
                            }

                            
                            request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);
                            request.setAttribute("mensaje", mensaje);
                            request.setAttribute("codigogenerado", "" + codigo);
                            getServletContext().getRequestDispatcher("/Entidades/Docente/FrmDocenteRegistrarMant.jsp").forward(request, response);
                            break;
                        }                    
                    case 5: {
                        session = request.getSession();  //creando la session       
                        if (session.getAttribute("SESION") == null) {
                            getServletContext().getRequestDispatcher("/" + Constantes.rutaaccesodocente + "FrmSesionExpiro.jsp").forward(request, response);
                        } else {
                            DocenteDAO objDocenteDAO = new DocenteDAO();
                            ArrayList listaDocente = objDocenteDAO.ListarDocente();
                            request.setAttribute("listaDocente", listaDocente);
                            getServletContext().getRequestDispatcher("/Entidades/Docente/FrmDocenteMant.jsp").forward(request, response);
                            break;
                        }
                    }
                    case 6: {

                        String codcad = new String(request.getParameter("COD").getBytes("ISO-8859-1"), "UTF-8");
                        int codigo = Integer.parseInt(codcad);
                        DocenteDAO objDocenteDAO = new DocenteDAO();
                        DocenteBean objDocenteBean = objDocenteDAO.TraerDocente(codigo);
                        request.setAttribute("datos", objDocenteBean);
                        CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                        ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                        request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);
                        getServletContext().getRequestDispatcher("/Entidades/Docente/FrmDocenteModificarMant.jsp").forward(request, response);
                        break;

                    }
                    case 7: {
                     
                            String mensaje = "";
                            String codcad = new String(request.getParameter("hddcodigo").getBytes("ISO-8859-1"), "UTF-8");
                            int codigo = Integer.parseInt(codcad);
                            String nombre = new String(request.getParameter("txtnombre").getBytes("ISO-8859-1"), "UTF-8");
                            String apepate = new String(request.getParameter("txtapelpate").getBytes("ISO-8859-1"), "UTF-8");
                            String apemate = new String(request.getParameter("txtapelmate").getBytes("ISO-8859-1"), "UTF-8");
                            String usuario = new String(request.getParameter("txtusuario").getBytes("ISO-8859-1"), "UTF-8");
                            String clave = new String(request.getParameter("txtclave").getBytes("ISO-8859-1"), "UTF-8");
                            String estado = new String(request.getParameter("cboestado").getBytes("ISO-8859-1"), "UTF-8");
                             String cbocarreracad = new String(request.getParameter("cbocarrera").getBytes("ISO-8859-1"), "UTF-8");
                            int  cbocarrera=Integer.parseInt(cbocarreracad);
                            DocenteBean objDocenteBean = new DocenteBean();
                            objDocenteBean.setCODDOCENTE(codigo);
                            objDocenteBean.setNOMBDOCENTE(nombre);
                            objDocenteBean.setAPEPATERDOCENTE(apepate);
                            objDocenteBean.setAPEMATERDOCENTE(apemate);
                            objDocenteBean.setUSUARIO(usuario);
                            objDocenteBean.setCLAVE(clave);
                            objDocenteBean.setESTADO(estado);
                            objDocenteBean.setCODCARRERA(cbocarrera);
                            DocenteDAO objDocenteDAO = new DocenteDAO();
                            int valido = objDocenteDAO.ModificarDocente(objDocenteBean);
                            CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                            ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                            if (valido == 1) {
                                mensaje = "Registro Modificado !!!";
                            } else {
                                mensaje = "Registro no Modificado !!!";
                            }
                            request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);
                            request.setAttribute("mensaje", mensaje);
                            request.setAttribute("datos", objDocenteBean);
                            getServletContext().getRequestDispatcher("/Entidades/Docente/FrmDocenteModificarMant.jsp").forward(request, response);
                            break;
                        
                    }
                    case 8: {
                        session = request.getSession();  //creando la session       
                        if (session.getAttribute("SESION") == null) {
                            getServletContext().getRequestDispatcher("/" + Constantes.rutaaccesodocente + "FrmSesionExpiro.jsp").forward(request, response);
                        } else {
                            String codcad = new String(request.getParameter("COD").getBytes("ISO-8859-1"), "UTF-8");
                            int codigo = Integer.parseInt(codcad);
                            DocenteBean objDocenteBean = new DocenteBean();
                            objDocenteBean.setCODDOCENTE(codigo);
                            DocenteDAO objDocenteDAO = new DocenteDAO();
                            objDocenteDAO.EliminarDocente(objDocenteBean);

                            ArrayList listaDocente = objDocenteDAO.ListarDocente();
                            request.setAttribute("listaDocente", listaDocente);
                            getServletContext().getRequestDispatcher("/Entidades/Docente/FrmDocenteMant.jsp").forward(request, response);
                            break;
                        }
                    }

                    case 10: {
                        session = request.getSession();  //creando la seseion       
                        if (session.getAttribute("SESION") == null) {
                            getServletContext().getRequestDispatcher("/" + Constantes.rutaaccesodocente + "FrmSesionExpiro.jsp").forward(request, response);
                        } else {
                            getServletContext().getRequestDispatcher("/Entidades/FrmMenuMant.jsp").forward(request, response);
                            break;
                        }
                    }
                    case 11: {
                        session = request.getSession();  //creando la seseion       
                        if (session.getAttribute("SESION") == null) {
                            getServletContext().getRequestDispatcher("/" + Constantes.rutaaccesodocente + "FrmSesionExpiro.jsp").forward(request, response);
                        } else {
                            getServletContext().getRequestDispatcher("/Seguridad/FrmMenuSegu.jsp").forward(request, response);
                            break;
                        }
                    }
                    case 12: {

                        break;
                    }
                    case 13: {
                        session = request.getSession();  //creando la seseion       
                        if (session.getAttribute("SESION") == null) {
                            getServletContext().getRequestDispatcher("/" + Constantes.rutaaccesodocente + "FrmSesionExpiro.jsp").forward(request, response);
                        } else {
                            getServletContext().getRequestDispatcher("/AplicacionExamen/FrmMenuExamen.jsp").forward(request, response);
                            break;
                        }
                    }
                    case 14: {
                        session = request.getSession();  //creando la seseion       
                        if (session.getAttribute("SESION") == null) {
                            getServletContext().getRequestDispatcher("/" + Constantes.rutaaccesodocente + "FrmSesionExpiro.jsp").forward(request, response);
                        } else {
                            getServletContext().getRequestDispatcher("/BancoPreguntas/FrmMenuProceso.jsp").forward(request, response);
                            break;
                        }
                    }
                    case 15: {
                        session = request.getSession();  //creando la seseion       
                        if (session.getAttribute("SESION") == null) {
                            getServletContext().getRequestDispatcher("/" + Constantes.rutaaccesodocente + "FrmSesionExpiro.jsp").forward(request, response);
                        } else {
                            getServletContext().getRequestDispatcher("/InscripcionExamen/FrmMenuRegistrar.jsp").forward(request, response);
                            break;
                        }
                    }
                    case 16: {
                        session = request.getSession();  //creando la seseion       
                        if (session.getAttribute("SESION") == null) {
                            getServletContext().getRequestDispatcher("/" + Constantes.rutaaccesodocente + "FrmSesionExpiro.jsp").forward(request, response);
                        } else {
                            getServletContext().getRequestDispatcher("/OrganizacionExamen/FrmMenuOrganizacionExamen.jsp").forward(request, response);
                            break;
                        }
                    }
                    case 17: {
                        response.setContentType("text/html;charset=UTF-8");
                        PrintWriter out10 = response.getWriter();

                        String CODDOCE = new String(request.getParameter("CODDOCE").getBytes("ISO-8859-1"), "UTF-8");
                        int Docente = Integer.parseInt(CODDOCE);

                        DocenteBean objDocenteBean = new DocenteBean();
                        DocenteDAO objDocenteDAO = new DocenteDAO();
                        ArrayList<DocenteBean> listaDocenteBean = objDocenteDAO.ListarDocente();
                        out10.println("<select id='cbodocente' name='cbodocente' >");
                        out10.println("<option value='0'>-Seleccionar Docente-</option>");
                        for (DocenteBean obj : listaDocenteBean) {
                            if (obj.getCODDOCENTE() == Docente) {
                                out10.println("<option value='" + obj.getCODDOCENTE() + "' selected>" + obj.getNOMBDOCENTE() + " " + obj.getAPEPATERDOCENTE() + "</option>");
                            } else {
                                out10.println("<option value='" + obj.getCODDOCENTE() + "' >" + obj.getNOMBDOCENTE() + " " + obj.getAPEPATERDOCENTE() + "</option>");
                            }
                        }
                        out10.println("</select>");
                        break;
                    }
                    case 18 :
                    {
                       
                        String mensaje = "";

                        String usuario = new String(request.getParameter("usuario").getBytes("ISO-8859-1"), "UTF-8");
                        String clave = new String(request.getParameter("clave").getBytes("ISO-8859-1"), "UTF-8");
                        DocenteSBean objDocenteSBean = new DocenteSBean();
                        String tipocad =request.getParameter("tipo2");
                        String coddocentecad =request.getParameter("coddocente");
                        int   coddocente=Integer.parseInt(coddocentecad);
                        
                        objDocenteSBean.setTIPO(tipocad);
                        objDocenteSBean.setUSUARIO(usuario);
                        objDocenteSBean.setCLAVE(clave);
                        objDocenteSBean.setCODDOCENTE(coddocente);
                       
                        request.setAttribute("datosdocente",objDocenteSBean);
                        getServletContext().getRequestDispatcher("/Seguridad/cambiarClave/FrmActualizarClave.jsp").forward(request, response);
                       
                        break;
                    }
                    case 19:
                    {    String usuario = new String(request.getParameter("usuario").getBytes("ISO-8859-1"), "UTF-8");
                         String clave = new String(request.getParameter("clave").getBytes("ISO-8859-1"), "UTF-8");
                         String coddocentecad = new String(request.getParameter("coddocente").getBytes("ISO-8859-1"), "UTF-8");
                         int  coddocente=Integer.parseInt(coddocentecad);
                         String tipocad = new String(request.getParameter("codrol").getBytes("ISO-8859-1"), "UTF-8");
                         int  rol=Integer.parseInt(tipocad);
                         DocenteSBean objDocenteBean = new DocenteSBean();
                                     objDocenteBean.setCODDOCENTE(coddocente);
                                     objDocenteBean.setUSUARIO(usuario);
                                     objDocenteBean.setCLAVE(clave);
                                     objDocenteBean.setTIPO(String.valueOf(rol));
                          DocenteDAO objDocenteDAO = new DocenteDAO();
                          boolean estado=objDocenteDAO.BuscarClaveActualDocente(objDocenteBean);
                          if(estado )
                          {
                             if(  clave.length()>0)
                              {                                
                                 out.print("<font color=red><b>Contraseña Correcta !!!!!!!</b></font>  ");
                              }
                               else
                              {
                                out.print("<font color=green><b>Ingrese Contraseña por favor</b></font>  ");     
                              }
                              
                          }
                          else
                          {
                            
                                 out.print("<font color=red><b>Contraseña Incorrecta !!!!!!!</b></font>");   
                              
                            
                          }
                                     
                        break;
                    }
                    case 20:
                    { 
                        String clavenueva = new String(request.getParameter("clavenueva").getBytes("ISO-8859-1"), "UTF-8");
                        String repetirclavenueva= new String(request.getParameter("repetirclavenueva").getBytes("ISO-8859-1"), "UTF-8");
                        
                       if(clavenueva.equals(repetirclavenueva))
                       {
                         
                            out.print("<font color=red><b>Contraseña Correcta !!</b></font>");
                       }
                       else
                       {
                          if(repetirclavenueva.length()>0)
                           out.print("<font color=red><b>Contraseña Incorrecta!!!!!!!</b></font>  ");  
                          else
                          out.print("<font color=green><b>Ingrese Contraseña !!!!!!</b></font>  ");       
                          
                       }
                        
                        
                        break;
                    }
                    case 21:
                    {   String claveactual = new String(request.getParameter("claveactual").getBytes("ISO-8859-1"), "UTF-8");
                        String clavenueva = new String(request.getParameter("clavenueva").getBytes("ISO-8859-1"), "UTF-8");
                        String repetirclavenueva= new String(request.getParameter("repetirclavenueva").getBytes("ISO-8859-1"), "UTF-8");
                        
                       String coddocentecad= new String(request.getParameter("coddocente").getBytes("ISO-8859-1"), "UTF-8"); 
                       int  coddocente=Integer.parseInt(coddocentecad);
                       String usuario= new String(request.getParameter("usuario").getBytes("ISO-8859-1"), "UTF-8"); 
                       
                       String codrolcad= new String(request.getParameter("codrol").getBytes("ISO-8859-1"), "UTF-8"); 
                       
                         DocenteSBean objDocenteBean = new DocenteSBean();
                                    objDocenteBean.setCODDOCENTE(coddocente);
                                    objDocenteBean.setUSUARIO(usuario);
                                    objDocenteBean.setTIPO(codrolcad);
                                    objDocenteBean.setCLAVE(claveactual);
                                    objDocenteBean.setCLAVENUEVA(repetirclavenueva);
                         DocenteDAO objDocenteDAO = new DocenteDAO();
                         int  estado=objDocenteDAO.ActualizarClaveDocente(objDocenteBean);
                        if(estado==1)
                            out.print("<div class=\"alert alert-success\"><font color=red><b>Contraseña Modificada !!!!!!!!!</b>"+estado+"</font></div>");
                        else
                            out.print("<div class=\"alert alert-success\"><font color=red><b>Contraseña  Modificada !!!!!!!!!</b>"+estado+"</font></div>");
                        
                        break;
                    }
                     case 22:
                    {   
                        String clavenueva = new String(request.getParameter("clavenueva").getBytes("ISO-8859-1"), "UTF-8");
                                               
                       if(clavenueva.length()==0)                      
                       {
                            out.print("<font color=green><b>Ingrese Clave Nueva!!</b></font>");
                       }
                        
                        break;
                    }
                     case 23 :
                     {
                         
                         out.print("<img src=\"../imagenes/evaluacionlinea.jpg\">");
                         
                      
                         break;
                     }
                     case 24 :
                     {
                         
                        String mensaje = "";

                        String coddocentecad = new String(request.getParameter("coddocente").getBytes("ISO-8859-1"), "UTF-8");
                        int   coddocente=Integer.parseInt(coddocentecad);
                       
                          DocenteDAO    objDocenteDAO=new DocenteDAO(); 
                          DocenteBean  objDocenteSBean=objDocenteDAO.TraerDocente(coddocente);
                          
                          
                        request.setAttribute("datosdocenteactualizar",objDocenteSBean);
                        getServletContext().getRequestDispatcher("/Seguridad/ConfiguracionCuenta/FrmActualizarDatosPersonales.jsp").forward(request, response);
                         break;
                     }
                     case 25 :
                     {
                        String coddocentecad = new String(request.getParameter("coddocente").getBytes("ISO-8859-1"), "UTF-8");
                        int   coddocente=Integer.parseInt(coddocentecad);                        
                        String nombdocentecad = new String(request.getParameter("txtnombre").getBytes("ISO-8859-1"), "UTF-8");
                        String apepaterdocentecad = new String(request.getParameter("txtapepater").getBytes("ISO-8859-1"), "UTF-8");
                        String apematerdocentecad = new String(request.getParameter("txtapemater").getBytes("ISO-8859-1"), "UTF-8");                         
                        String emailcad = new String(request.getParameter("txtemail").getBytes("ISO-8859-1"), "UTF-8"); 
                        
                        String txtnrotelefonocad = new String(request.getParameter("txtnrotelefono").getBytes("ISO-8859-1"), "UTF-8");                         
                        String txtareacad = new String(request.getParameter("txtarea").getBytes("ISO-8859-1"), "UTF-8");  
                        
                
                        
                        DocenteBean objDocenteSBean = new DocenteBean();
                                objDocenteSBean.setCODDOCENTE(coddocente);
                                objDocenteSBean.setNOMBDOCENTE(nombdocentecad);
                                objDocenteSBean.setAPEPATERDOCENTE(apepaterdocentecad);
                                objDocenteSBean.setAPEMATERDOCENTE(apematerdocentecad);
                                objDocenteSBean.setEMAIL(emailcad); 
                                objDocenteSBean.setNROTELEFONO(txtnrotelefonocad); 
                                objDocenteSBean.setDIRECCION(txtareacad); 
                                
                                
                        DocenteDAO    objDocenteDAO=new DocenteDAO();
                         int  estado=objDocenteDAO.ActualizarDatosPersonalesDocente(objDocenteSBean);
                         if(estado==1)
                             out.println("<font  color=red ><b>Registro Actualizado !!!!</b></font>");
                         else
                             out.println("<font  color=red ><b>Registro no Actualizado !!! </b></font>");
                       
                        
                         break;
                     }
                       case  26: {
                       
                        out.print("hola 1");
                        
                        break;
                    }
                }
            }
        } catch (Exception e) {
              out.println(e.getMessage());
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
