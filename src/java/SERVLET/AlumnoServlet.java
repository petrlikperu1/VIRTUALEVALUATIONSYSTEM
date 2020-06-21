/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SERVLET;

import BEAN.AlumnoBean;
import BEAN.SemestreBean;
import DAO.AlumnoDAO;
import DAO.CarreraProfesionalDAO;
import DAO.SemestreDAO;
import UTIL.CapturandoFechaDelSistema;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import UTIL.Constantes;
import UTIL.EvaluarFechas;

public class AlumnoServlet extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session;
        session = request.getSession();
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String opcad = new String(request.getParameter("op").getBytes("ISO-8859-1"), "UTF-8");
        int  tipo;
        int op = Integer.parseInt(opcad);
       
        try {
            switch (op) {
                case 9: {
                    session = request.getSession();  //creando la seseion       
                    String mensaje = "", fechasistema = "";
                   
                    String usuario = new String(request.getParameter("txtusu").getBytes("ISO-8859-1"), "UTF-8");
                    String clave = new String(request.getParameter("txtcla").getBytes("ISO-8859-1"), "UTF-8");
                
                    AlumnoBean objAlumnoBean = new AlumnoBean();
                    objAlumnoBean.setUSUARIO(usuario);
                    objAlumnoBean.setCLAVE(clave);
                    AlumnoDAO objAlumnoDAO = new AlumnoDAO();
                    int valido = objAlumnoDAO.ValidarAlumno(objAlumnoBean);

                  // ----------------------------------------------------------------------------------------------------
                    
                    AlumnoBean objAluBean = objAlumnoDAO.DatosAlumno(objAlumnoBean);

                    SemestreBean objSemestreBean = new SemestreBean();

                    fechasistema = CapturandoFechaDelSistema.CalcularFechaSistema();

                    objSemestreBean.setFECHAACTUAL(fechasistema);
                    
                 
                    SemestreDAO objSemestreDAO = new SemestreDAO();
                    
                    ArrayList<SemestreBean> listasemestre1 = objSemestreDAO.ValidarSemestre();                    
                 
                    
                   objSemestreBean = EvaluarFechas.EvaluarRangoFechas(objSemestreBean.getFECHAACTUAL(), listasemestre1);
                  
                   objAlumnoBean.setCODSEMESTRE(objSemestreBean.getCODSEMESTRE());
                   
                   SemestreBean   objSemestre=new SemestreBean();
                                 objSemestre.setCODSEMESTRE(objAlumnoBean.getCODSEMESTRE());
                    
                    if (valido == 0) {
                        session.invalidate();
                        mensaje = "Las credenciales no son correctas.";
                        request.setAttribute("mensaje", mensaje);
                        getServletContext().getRequestDispatcher("/" + Constantes.rutaaccesoalumno + "FrmLoginAlumno.jsp").forward(request, response);
                    } else {
                        
                        session.setAttribute("SESION", objAluBean);
                        session.setAttribute("SESIONSEMESTRE", objSemestre);
                        getServletContext().getRequestDispatcher("/" + Constantes.rutaaccesoalumno + "FrmPrincipalEstudiante.jsp").forward(request, response);
                    }
                    break;
                }
            }

            if (session.getAttribute("SESION") == null ) {
                out.println("1");
            } else {
                switch (op) {
                    case 1: {
                       
                            AlumnoDAO objAlumnoDAO = new AlumnoDAO();
                            ArrayList listaAlumno = objAlumnoDAO.MostrarAlumno();
                            request.setAttribute("listaAlumno", listaAlumno);
                            getServletContext().getRequestDispatcher("/Entidades/Alumno/FrmAlumnoMant.jsp").forward(request, response);
                            break;
                        
                    }
                    case 2: {
                      
                            getServletContext().getRequestDispatcher("/Entidades/FrmMenuMant.jsp").forward(request, response);
                            break;
                       
                    }
                    case 3: {
                        
                            AlumnoDAO objAlumnoDAO = new AlumnoDAO();
                            int codigo = objAlumnoDAO.GenerarCodigoAlumno();
                            request.setAttribute("codigogenerado", "" + codigo);
                            CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                             ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                             request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);
                            getServletContext().getRequestDispatcher("/Entidades/Alumno/FrmAlumnoRegistrarMant.jsp").forward(request, response);
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
                            AlumnoBean objAlumnoBean = new AlumnoBean();
                            objAlumnoBean.setCODALU(codigo);
                            objAlumnoBean.setNOMBALU(nombre);
                            objAlumnoBean.setAPEPATERALU(apepate);
                            objAlumnoBean.setAPEMATERALU(apemate);
                            objAlumnoBean.setEMAIL("Coloca por favor un  Correo Electronico !!");
                            objAlumnoBean.setNROTELEFONO("00000000");
                            objAlumnoBean.setDIRECCION("Coloque la direccion por favor!!!");
                            objAlumnoBean.setUSUARIO(usuario);
                            objAlumnoBean.setCLAVE(clave);
                            objAlumnoBean.setFOTO("LLANOS.jpg");
                            objAlumnoBean.setESTADO("A");
                            objAlumnoBean.setCODCARRERA(cbocarrera);
                            AlumnoDAO objAlumnoDAO = new AlumnoDAO();
                            int valido = objAlumnoDAO.InsertarAlumno(objAlumnoBean);
                            CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                            ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();

                            if (valido == 1) {
                                mensaje = "Registro Insertado !!!";
                                codigo = objAlumnoDAO.GenerarCodigoAlumno();
                            } else {
                                mensaje = "Registro no Insertado !!!";
                            }
                            request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);
                            request.setAttribute("mensaje", mensaje);
                            request.setAttribute("codigogenerado", "" + codigo);
                            getServletContext().getRequestDispatcher("/Entidades/Alumno/FrmAlumnoRegistrarMant.jsp").forward(request, response);
                            break;
                        
                    }
                    case 5: {
                       
                            AlumnoDAO objAlumnoDAO = new AlumnoDAO();
                            ArrayList listaAlumno = objAlumnoDAO.ListarAlumno();
                            request.setAttribute("listaAlumno", listaAlumno);
                            getServletContext().getRequestDispatcher("/Entidades/Alumno/FrmAlumnoMant.jsp").forward(request, response);
                            break;
                      
                    }
                    case 6: {
                      
                            String codcad = new String(request.getParameter("COD").getBytes("ISO-8859-1"), "UTF-8");
                            int codigo = Integer.parseInt(codcad);
                            AlumnoBean objAlumnoBean = new AlumnoBean();
                            AlumnoDAO objAlumnoDAO = new AlumnoDAO();
                            objAlumnoBean = objAlumnoDAO.TraerAlumno(codigo);
                            request.setAttribute("datos", objAlumnoBean);
                            CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                            ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                            request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);
                            getServletContext().getRequestDispatcher("/Entidades/Alumno/FrmAlumnoModificarMant.jsp").forward(request, response);
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
                            AlumnoBean objAlumnoBean = new AlumnoBean();
                            objAlumnoBean.setCODALU(codigo);
                            objAlumnoBean.setNOMBALU(nombre);
                            objAlumnoBean.setAPEPATERALU(apepate);
                            objAlumnoBean.setAPEMATERALU(apemate);
                            objAlumnoBean.setUSUARIO(usuario);
                            objAlumnoBean.setCLAVE(clave);
                            objAlumnoBean.setESTADO(estado);
                            objAlumnoBean.setCODCARRERA(cbocarrera);
                            AlumnoDAO objAlumnoDAO = new AlumnoDAO();
                            int valido = objAlumnoDAO.ModificarAlumno(objAlumnoBean);
                             CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                            ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                            if (valido == 1) {
                                mensaje = "Registro Modificado !!!";
                            } else {
                                mensaje = "Registro no Modificado !!!";
                            }
                            request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);
                            request.setAttribute("mensaje", mensaje);
                            request.setAttribute("datos", objAlumnoBean);
                            getServletContext().getRequestDispatcher("/Entidades/Alumno/FrmAlumnoModificarMant.jsp").forward(request, response);
                            break;
                        
                    }
                    case 8: {
                      
                            String codcad = new String(request.getParameter("COD").getBytes("ISO-8859-1"), "UTF-8");
                            int codigo = Integer.parseInt(codcad);
                            AlumnoBean objAlumnoBean = new AlumnoBean();
                            objAlumnoBean.setCODALU(codigo);
                            AlumnoDAO objAlumnoDAO = new AlumnoDAO();
                            objAlumnoDAO.EliminarAlumno(objAlumnoBean);

                            ArrayList listaAlumno = objAlumnoDAO.ListarAlumno();
                            request.setAttribute("listaAlumno", listaAlumno);
                            getServletContext().getRequestDispatcher("/Entidades/Alumno/FrmAlumnoMant.jsp").forward(request, response);
                            break;
                        
                    }
                    case 10: {
                        session.invalidate();// sesion cerrada
                        getServletContext().getRequestDispatcher("/" + Constantes.rutaaccesoalumno + "FrmSesionTerminada.jsp").forward(request, response);
                        break;
                    }
                    case  18: {
                       
                        String mensaje = "";

                        String usuario = new String(request.getParameter("usuario").getBytes("ISO-8859-1"), "UTF-8");
                        String clave = new String(request.getParameter("clave").getBytes("ISO-8859-1"), "UTF-8");
                        AlumnoBean objAlumnoBean = new AlumnoBean();
                        
                        String codalucad =request.getParameter("codAlu");
                        int   codalu=Integer.parseInt(codalucad);
                        
                       
                        objAlumnoBean.setUSUARIO(usuario);
                        objAlumnoBean.setCLAVE(clave);
                        objAlumnoBean.setCODALU(codalu);
                       
                        request.setAttribute("datosAlumno",objAlumnoBean);
                        getServletContext().getRequestDispatcher("/Seguridad/cambiarClave/Estudiante/FrmActualizarClave.jsp").forward(request, response);
                        
                        break;
                    }
                    case 19:
                    {    String usuario = new String(request.getParameter("usuario").getBytes("ISO-8859-1"), "UTF-8");
                         String clave = new String(request.getParameter("clave").getBytes("ISO-8859-1"), "UTF-8");
                         String codalucad = new String(request.getParameter("codalu").getBytes("ISO-8859-1"), "UTF-8");
                         int  codalu=Integer.parseInt(codalucad);
               
                         AlumnoBean objAlumnoBean = new AlumnoBean();
                                     objAlumnoBean.setUSUARIO(usuario);
                                     objAlumnoBean.setCLAVE(clave);
                                     objAlumnoBean.setCODALU(codalu);
                                   
                          AlumnoDAO objAluDAO = new AlumnoDAO();
                          boolean estado=objAluDAO.BuscarClaveActualDocente(objAlumnoBean);
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
                        
                       String coddocentecad= new String(request.getParameter("codalu").getBytes("ISO-8859-1"), "UTF-8"); 
                       int  coddocente=Integer.parseInt(coddocentecad);
                       String usuario= new String(request.getParameter("usuario").getBytes("ISO-8859-1"), "UTF-8"); 
                       
                      
                       
                         AlumnoBean objAlumnoBean = new AlumnoBean();
                                    objAlumnoBean.setCODALU(coddocente);
                                    objAlumnoBean.setUSUARIO(usuario);                                   
                                    objAlumnoBean.setCLAVE(claveactual);
                                    objAlumnoBean.setCLAVENUEVA(repetirclavenueva);
                         AlumnoDAO objAlumnoDAO = new AlumnoDAO();
                         int  estado=objAlumnoDAO.ActualizarClaveAlumno(objAlumnoBean);
                        if(estado==1)
                            out.print("<font color=red><b>Contraseña Modificada !!!!!!!!!</b></font>");
                        else
                            out.print("<font color=red><b>Contraseña No Modificada !!!!!!!!!</b></font>");
                        
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
                     case 24 :
                     {
                         
                        String mensaje = "";

                        String codalumnocad = new String(request.getParameter("CODALU").getBytes("ISO-8859-1"), "UTF-8");
                        int   codalu=Integer.parseInt(codalumnocad);
                       
                          AlumnoDAO    objAlumnoDAO=new AlumnoDAO(); 
                         AlumnoBean  objAlumnoBean=objAlumnoDAO.TraerDatosAlumno(codalu);
                          out.println(objAlumnoBean.getAPEMATERALU()+"    "+objAlumnoBean.getAPEPATERALU());
                          
                        request.setAttribute("datosalumnoactualizar",objAlumnoBean);
                        getServletContext().getRequestDispatcher("/Seguridad/ConfiguracionCuenta/Estudiante/FrmActualizarDatosPersonales.jsp").forward(request, response);
                         break;
                     }
                     case 25 :
                     {
                        String codalumnocad = new String(request.getParameter("codalu").getBytes("ISO-8859-1"), "UTF-8");
                        int   codalumno=Integer.parseInt(codalumnocad);                        
                        String nombalumnocad = new String(request.getParameter("txtnombre").getBytes("ISO-8859-1"), "UTF-8");
                        String apepateralumnocad = new String(request.getParameter("txtapepater").getBytes("ISO-8859-1"), "UTF-8");
                        String apemateralumnocad = new String(request.getParameter("txtapemater").getBytes("ISO-8859-1"), "UTF-8");                         
                        String emailcad = new String(request.getParameter("txtemail").getBytes("ISO-8859-1"), "UTF-8"); 
                        
                        String txtnrotelefonocad = new String(request.getParameter("txtnrotelefono").getBytes("ISO-8859-1"), "UTF-8");                         
                        String txtareacad = new String(request.getParameter("txtarea").getBytes("ISO-8859-1"), "UTF-8");  
                        
                
                        
                        AlumnoBean objAlumnoBean = new AlumnoBean();
                                 objAlumnoBean.setCODALU(codalumno);
                                 objAlumnoBean.setNOMBALU(nombalumnocad);
                                 objAlumnoBean.setAPEPATERALU(apepateralumnocad);
                                 objAlumnoBean.setAPEMATERALU(apemateralumnocad);
                                 objAlumnoBean.setEMAIL(emailcad); 
                                 objAlumnoBean.setNROTELEFONO(txtnrotelefonocad); 
                                 objAlumnoBean.setDIRECCION(txtareacad); 
                                
                                
                        AlumnoDAO    objAlumnoDAO=new AlumnoDAO();
                         int  estado=objAlumnoDAO.ActualizarDatosPersonalesAlumno(objAlumnoBean);
                         if(estado==1)
                             out.println("Registro Actualizado !!!!");
                         else
                             out.println("Registro no Actualizado !!!");
                       
                        
                         break;
                     }
                }
            }

        } catch (Exception e) {
         
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
