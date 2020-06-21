
package SERVLET;

import BEAN.*;
import DAO.*;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class CrearUsuarioServlet extends HttpServlet {

      protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       HttpSession session;
             session = request.getSession();
             response.setContentType("text/html;charset=UTF-8");
                    PrintWriter out = response.getWriter();                   
                     if(session.getAttribute("SESION")==null){
                                     out.println("1"); 
                     }else{
                             String  opcad=request.getParameter("op");
                             int     op=Integer.parseInt(opcad); 
                             
            switch (op) {
                case 0: {
                        getServletContext().getRequestDispatcher("/Seguridad/crearUsuario/FrmCrearUsuario.jsp").forward(request, response);
                           
                            break;                      
                    }
                case 1: {
                    ArrayList<CarreraProfesionalBean> listaCarreraProfesional;
                    CarreraProfesionalDAO objCarreraProfesionalDAO = new CarreraProfesionalDAO();                   
                    listaCarreraProfesional = objCarreraProfesionalDAO.ListarCarreraProfesional();
                    
                     RolDAO      objRol=new RolDAO();
                     ArrayList<RolBean>       listaRol=objRol.ListarRol();
                     request.setAttribute("listaRol", listaRol);
                    
                   
                     
                     
                    request.setAttribute("listaCarreraProfesional", listaCarreraProfesional);
                    getServletContext().getRequestDispatcher("/Seguridad/crearUsuario/FrmCrearUsuarioDocente.jsp").forward(request, response);
                    break;
                }
                case 2: {
                      String codcarreracad = new String(request.getParameter("codcarrera").getBytes("ISO-8859-1"), "UTF-8");
                     int   codcarrera=Integer.parseInt(codcarreracad);
                     UsuarioBean  objUsuarioBean=new UsuarioBean();
                                  objUsuarioBean.setCODCARRERA(codcarrera);
                     UsuarioDAO   objUsuarioDAO=new UsuarioDAO();
                     ArrayList<UsuarioBean>  listaUsuarios=objUsuarioDAO.FiltrarListaUsuariosDocentes(objUsuarioBean);
                     
                    out.println("<select name=\"cbodocente\" id=\"cbodocente\"   class=\"form-control\"   onchange=\"ListaUsuariosDocentes('"+request.getContextPath()+"','CrearUsuario',3);\"     >" );
                    out.println("   <option value=\"0\" selected>---------------------</option>");
                    for(UsuarioBean obj1:listaUsuarios)
                    {                       
                        out.println("   <option value=\""+obj1.getCODIGO()+"\" >"+obj1.getNOMBRE()+"</option>");
                    }
                    out.println("</select>");
                     
                    break;
                }
                case 3: {
                     String codcarreracad = new String(request.getParameter("codcarrera").getBytes("ISO-8859-1"), "UTF-8");
                     int    codcarrera=Integer.parseInt(codcarreracad);
                     String coddocentecad = new String(request.getParameter("coddocente").getBytes("ISO-8859-1"), "UTF-8");
                     int    coddocente=Integer.parseInt(coddocentecad);
                     
                     UsuarioBean    objUsuarioBean=new UsuarioBean();
                                    objUsuarioBean.setCODCARRERA(codcarrera);
                                    objUsuarioBean.setCODIGO(coddocente);
                                    
                     UsuarioDAO     objUsuarioDAO=new UsuarioDAO();
                     
                     ArrayList<UsuarioBean>  listausuarios=objUsuarioDAO.ListarUsuariosDocentes(objUsuarioBean);
                                       
                    out.println(" <table id=\"example\" class=\"table table-striped table-bordered dt-responsive nowrap\" cellspacing=\"0\" width=\"100%\"> ");

                    out.println("    <thead>");
                    out.println("        <tr   class=\"panel-info \"> ");       
                   
                    out.println("            <th>Nombres y Apellidos</th>");                   
                    out.println("            <th>Rol</th>");                   
                    out.println("            <th>Estado</th>");
                    out.println("            <th>Modificar</th>");
                    out.println("            <th>Habilitar/Dar Baja</th>");
                   
                    out.println("        </tr>");
                    out.println("    </thead>");                   
                    out.println("    <tbody>");
                    for (UsuarioBean obj : listausuarios) {
                        
                        out.println("        <tr>");                  
                        
                        out.println("            <td>"+obj.getNOMBRE()+"<br>"+ obj.getAPELLIDOPATERNO() +" "+ obj.getAPELLIDOMATERNO() + "</td>");
                      
                        out.println("            <td>" + obj.getNOMBTIPO() + "</td>");
                     
                         
                        out.println("            <td>  ");
                                                          if(obj.getESTADO().equals("A")){ 
                        out.println("            HABILITADO  ");                                         
                                                          } else {  
                        out.println("           <font color='red'>  ");                                      
                        out.println("            DESABILITADO ");                                         
                        out.println("            </font> ");                                         
                                                          } 
                                                  
                        out.println("           </td> "); 
                         
                        out.println("            <td>");
                        out.println("    <center>");
                        out.println("        <input  type=\"button\" value=\"Modificar\" class=\"btn btn-primary\" onclick=\"nuevaProgramacionMateria('"+request.getContextPath()+"','')\"   >");
                        out.println("    </center>");
                        out.println("    </td>");
                        out.println("    <td>");
                        out.println("    <center>");
                        out.println("       <input  type=\"button\" value=\"Habilitar\" class=\"btn btn-primary\" onclick=\"habilitarUsuarioDocente('" + request.getContextPath() + "', 'CrearUsuario', 5, '" + obj.getCODROLXDOCENTE() + "')\"   >");
                        out.println("       <input  type=\"button\" value=\"Dar Baja\" class=\"btn btn-primary\" onclick=\"eliminarUsuarioDocente('" + request.getContextPath() + "', 'CrearUsuario', 4, '" + obj.getCODROLXDOCENTE() + "')\"   >");
                
                        out.println("    </center>");
                        out.println("    </td>");                       
                        out.println("    </tr>");
                    }

                    out.println("    </tbody>");
                    out.println("</table>");
                    out.println(" </div>"); 
                    break;
                }
                case 4:{
                     String codcarreracad = new String(request.getParameter("codcarrera").getBytes("ISO-8859-1"), "UTF-8");
                     int    codcarrera=Integer.parseInt(codcarreracad);
                     String coddocentecad = new String(request.getParameter("coddocente").getBytes("ISO-8859-1"), "UTF-8");
                     int    coddocente=Integer.parseInt(coddocentecad);
                    
                     String codrolxdocentecad = new String(request.getParameter("codrolxdocente").getBytes("ISO-8859-1"), "UTF-8");
                     int    codrolxdocente=Integer.parseInt(codrolxdocentecad);
                     
                     
                     
                     
                     UsuarioBean    objUsuarioBean=new UsuarioBean();
                                    objUsuarioBean.setCODCARRERA(codcarrera);
                                    objUsuarioBean.setCODIGO(coddocente);
                                    objUsuarioBean.setCODROLXDOCENTE(codrolxdocente);
                     UsuarioDAO     objUsuarioDAO=new UsuarioDAO();
                                   objUsuarioDAO.DarBajaUsuariosDocentes(objUsuarioBean);
                     
                     
                     ArrayList<UsuarioBean>  listausuarios=objUsuarioDAO.ListarUsuariosDocentes(objUsuarioBean);
                    out.println(" <div style=\"padding: 5px auto 5px auto; width: 95%; background: #E7E4E6;\"> ");
                    out.println(" <table id=\"listado\" class=\"display\" cellspacing=\"0\" cellpadding=\"0\" width=\"95%\">");
                    out.println("    <thead>");
                    out.println("        <tr>");                  
                    out.println("            <th>Codigo</th>");
                    out.println("            <th>Nombres</th>");
                    out.println("            <th>Apellidos </th>");
                    out.println("            <th>Rol</th>");
                    out.println("            <th>Carrera</th>");
                    out.println("            <th>Estado</th>");
                    out.println("            <th>Modificar</th>");
                    out.println("            <th>Dar Baja</th>");
                    out.println("            <th>Habilitar</th>");
                    out.println("        </tr>");
                    out.println("    </thead>");
                    out.println("    <tfoot>");
                    out.println("        <tr>");
                    out.println("            <th>Codigo</th>");
                    out.println("             <th>Nombres </th>");   
                    out.println("              <th>Apellidos </th>");
                    out.println("            <th>Rol</th>");
                    out.println("            <th>Carrera</th>");
                    out.println("            <th>Estado</th>");
                    out.println("            <th>Modificar</th>");
                    out.println("            <th>Dar Baja</th>");
                    out.println("            <th>Habilitar</th>");
                    out.println("        </tr>");
                    out.println("    </tfoot>");
                    out.println("    <tbody>");

                    for (UsuarioBean obj : listausuarios) {
                        
                        out.println("        <tr>");
                        out.println("            <td>" + obj.getCODROLXDOCENTE() + "</td>");
                        out.println("            <td>" + obj.getNOMBRE() + "</td>");
                        out.println("            <td>" + obj.getAPELLIDOPATERNO() +"      "+ obj.getAPELLIDOMATERNO() + "</td>");
                      
                        out.println("            <td>" + obj.getNOMBTIPO() + "</td>");
                        out.println("            <td>" + obj.getNOMBCARRERA() + "</td>");
                         
                        out.println("            <td>  ");
                                                          if(obj.getESTADO().equals("A")){ 
                        out.println("            HABILITADO  ");                                         
                                                          } else {  
                        out.println("           <font color='red'>  ");                                      
                        out.println("            DESABILITADO ");                                         
                        out.println("            </font> ");                                         
                                                          } 
                                                  
                        out.println("           </td> "); 
                         
                        out.println("            <td>");
                        out.println("    <center>");
                        out.println("        <input  type=\"button\" value=\"Modificar\"  onclick=\"nuevaProgramacionMateria('"+request.getContextPath()+"','')\"   style=\"height:20px;width:80px;\">");
                        out.println("    </center>");
                        out.println("    </td>");
                        out.println("    <td>");
                        out.println("    <center>");
                        out.println("        <input  type=\"button\" value=\"Dar Baja\"  onclick=\"eliminarUsuarioDocente('" + request.getContextPath() + "', 'CrearUsuario', 4, '" + obj.getCODROLXDOCENTE() + "')\"   style=\"height:20px;width:80px;\">");
                        out.println("    </center>");
                        out.println("    </td>");
                        out.println("    <td>");
                        out.println("    <center>");
                        out.println("        <input  type=\"button\" value=\"Habilitar\"  onclick=\"habilitarUsuarioDocente('" + request.getContextPath() + "', 'CrearUsuario', 5, '" + obj.getCODROLXDOCENTE() + "')\"   style=\"height:20px;width:80px;\">");
                        out.println("    </center>");
                        out.println("    </td>");
                        out.println("    </tr>");
                    }

                    out.println("    </tbody>");
                    out.println("</table>");
                    out.println(" </div>"); 
                    break;
                }
                case 5: {
                   String codcarreracad = new String(request.getParameter("codcarrera").getBytes("ISO-8859-1"), "UTF-8");
                     int    codcarrera=Integer.parseInt(codcarreracad);
                     String coddocentecad = new String(request.getParameter("coddocente").getBytes("ISO-8859-1"), "UTF-8");
                     int    coddocente=Integer.parseInt(coddocentecad);
                    
                     String codrolxdocentecad = new String(request.getParameter("codrolxdocente").getBytes("ISO-8859-1"), "UTF-8");
                     int    codrolxdocente=Integer.parseInt(codrolxdocentecad);
                     
                     
                     
                     
                     UsuarioBean    objUsuarioBean=new UsuarioBean();
                                    objUsuarioBean.setCODCARRERA(codcarrera);
                                    objUsuarioBean.setCODIGO(coddocente);
                                    objUsuarioBean.setCODROLXDOCENTE(codrolxdocente);
                     UsuarioDAO     objUsuarioDAO=new UsuarioDAO();
                                   objUsuarioDAO.HabilitarUsuariosDocentes(objUsuarioBean);
                     
                     
                     ArrayList<UsuarioBean>  listausuarios=objUsuarioDAO.ListarUsuariosDocentes(objUsuarioBean);
                    out.println(" <div style=\"padding: 5px auto 5px auto; width: 95%; background: #E7E4E6;\"> ");
                    out.println(" <table id=\"listado\" class=\"display\" cellspacing=\"0\" cellpadding=\"0\" width=\"95%\">");
                    out.println("    <thead>");
                    out.println("        <tr>");                  
                    out.println("            <th>Codigo</th>");
                    out.println("            <th>Nombres</th>");
                    out.println("            <th>Apellidos </th>");
                    out.println("            <th>Rol</th>");
                    out.println("            <th>Carrera</th>");
                    out.println("            <th>Estado</th>");
                    out.println("            <th>Modificar</th>");
                    out.println("            <th>Dar Baja</th>");
                    out.println("            <th>Habilitar</th>");
                    out.println("        </tr>");
                    out.println("    </thead>");
                    out.println("    <tfoot>");
                    out.println("        <tr>");
                    out.println("            <th>Codigo</th>");
                    out.println("             <th>Nombres </th>");   
                    out.println("              <th>Apellidos </th>");
                    out.println("            <th>Rol</th>");
                    out.println("            <th>Carrera</th>");
                    out.println("            <th>Estado</th>");
                    out.println("            <th>Modificar</th>");
                    out.println("            <th>Dar Baja</th>");
                    out.println("            <th>Habilitar</th>");
                    out.println("        </tr>");
                    out.println("    </tfoot>");
                    out.println("    <tbody>");

                    for (UsuarioBean obj : listausuarios) {
                        
                        out.println("        <tr>");
                        out.println("            <td>" + obj.getCODROLXDOCENTE() + "</td>");
                        out.println("            <td>" + obj.getNOMBRE() + "</td>");
                        out.println("            <td>" + obj.getAPELLIDOPATERNO() +"      "+ obj.getAPELLIDOMATERNO() + "</td>");
                      
                        out.println("            <td>" + obj.getNOMBTIPO() + "</td>");
                        out.println("            <td>" + obj.getNOMBCARRERA() + "</td>");
                         
                        out.println("            <td>  ");
                                                          if(obj.getESTADO().equals("A")){ 
                        out.println("            HABILITADO  ");                                         
                                                          } else {  
                        out.println("           <font color='red'>  ");                                      
                        out.println("            DESABILITADO ");                                         
                        out.println("            </font> ");                                         
                                                          } 
                                                  
                        out.println("           </td> "); 
                         
                        out.println("            <td>");
                        out.println("    <center>");
                        out.println("        <input  type=\"button\" value=\"Modificar\"  onclick=\"nuevaProgramacionMateria('"+request.getContextPath()+"','')\"   style=\"height:20px;width:80px;\">");
                        out.println("    </center>");
                        out.println("    </td>");
                        out.println("    <td>");
                        out.println("    <center>");
                        out.println("        <input  type=\"button\" value=\"Dar Baja\"  onclick=\"eliminarUsuarioDocente('" + request.getContextPath() + "', 'CrearUsuario', 4, '" + obj.getCODROLXDOCENTE() + "')\"   style=\"height:20px;width:80px;\">");
                        out.println("    </center>");
                        out.println("    </td>");
                        out.println("    <td>");
                        out.println("    <center>");
                        out.println("        <input  type=\"button\" value=\"Habilitar\"  onclick=\"habilitarUsuarioDocente('" + request.getContextPath() + "', 'CrearUsuario', 5, '" + obj.getCODROLXDOCENTE() + "')\"   style=\"height:20px;width:80px;\">");
                        out.println("    </center>");
                        out.println("    </td>");
                        out.println("    </tr>");
                    }

                    out.println("    </tbody>");
                    out.println("</table>");
                    out.println(" </div>"); 
                   break;
                }
                case 6: {
                     String codcarreracad = new String(request.getParameter("codcarrera").getBytes("ISO-8859-1"), "UTF-8");
                     int    codcarrera=Integer.parseInt(codcarreracad);
                     String coddocentecad = new String(request.getParameter("coddocente").getBytes("ISO-8859-1"), "UTF-8");
                     int    coddocente=Integer.parseInt(coddocentecad);
                    
                     String codrolcad = new String(request.getParameter("codrol").getBytes("ISO-8859-1"), "UTF-8");
                     int    codrol=Integer.parseInt(codrolcad);
                    
                     String usuariocad = new String(request.getParameter("usuario").getBytes("ISO-8859-1"), "UTF-8");
                     String passwordcad = new String(request.getParameter("password").getBytes("ISO-8859-1"), "UTF-8");
                     UsuarioDAO       objUsuarioDAO=new UsuarioDAO();
                     int   codrolxdocente =objUsuarioDAO.GenerarCodigoRolxDocente(); 
                     UsuarioBean    objUsuarioBean=new UsuarioBean();
                                     objUsuarioBean.setCODIGO(coddocente);
                                     objUsuarioBean.setCODCARRERA(codcarrera);                                    
                                     objUsuarioBean.setCODROLXDOCENTE(codrolxdocente);
                                     objUsuarioBean.setUSUARIO(usuariocad);
                                     objUsuarioBean.setPASSWORD(passwordcad);
                                     objUsuarioBean.setCODROL(codrol);
                                     objUsuarioBean.setESTADO("A");
                     objUsuarioDAO.RegistrarNuevoUsuario(objUsuarioBean);
                
                  
                     
                     ArrayList<UsuarioBean>  listausuarios=objUsuarioDAO.ListarUsuariosDocentes(objUsuarioBean);
                    
                     
                               out.println(" <table id=\"example\" class=\"table table-striped table-bordered dt-responsive nowrap\" cellspacing=\"0\" width=\"100%\"> ");

                    out.println("    <thead>");
                    out.println("        <tr   class=\"panel-info \"> ");       
                   
                    out.println("            <th>Nombres y Apellidos</th>");                   
                    out.println("            <th>Rol</th>");                   
                    out.println("            <th>Estado</th>");
                    out.println("            <th>Modificar</th>");
                    out.println("            <th>Habilitar/Dar Baja</th>");
                   
                    out.println("        </tr>");
                    out.println("    </thead>");                   
                    out.println("    <tbody>");
                    for (UsuarioBean obj : listausuarios) {
                        
                        out.println("        <tr>");                  
                        
                        out.println("            <td>"+obj.getNOMBRE()+"<br>"+ obj.getAPELLIDOPATERNO() +" "+ obj.getAPELLIDOMATERNO() + "</td>");
                      
                        out.println("            <td>" + obj.getNOMBTIPO() + "</td>");
                     
                         
                        out.println("            <td>  ");
                                                          if(obj.getESTADO().equals("A")){ 
                        out.println("            HABILITADO  ");                                         
                                                          } else {  
                        out.println("           <font color='red'>  ");                                      
                        out.println("            DESABILITADO ");                                         
                        out.println("            </font> ");                                         
                                                          } 
                                                  
                        out.println("           </td> "); 
                         
                        out.println("            <td>");
                        out.println("    <center>");
                        out.println("        <input  type=\"button\" value=\"Modificar\" class=\"btn btn-primary\" onclick=\"nuevaProgramacionMateria('"+request.getContextPath()+"','')\"   >");
                        out.println("    </center>");
                        out.println("    </td>");
                        out.println("    <td>");
                        out.println("    <center>");
                        out.println("       <input  type=\"button\" value=\"Habilitar\" class=\"btn btn-primary\" onclick=\"habilitarUsuarioDocente('" + request.getContextPath() + "', 'CrearUsuario', 5, '" + obj.getCODROLXDOCENTE() + "')\"   >");
                        out.println("       <input  type=\"button\" value=\"Dar Baja\" class=\"btn btn-primary\" onclick=\"eliminarUsuarioDocente('" + request.getContextPath() + "', 'CrearUsuario', 4, '" + obj.getCODROLXDOCENTE() + "')\"   >");
                
                        out.println("    </center>");
                        out.println("    </td>");                       
                        out.println("    </tr>");
                    }

                    out.println("    </tbody>");
                    out.println("</table>");
                    out.println(" </div>"); 
                  
                   break;
                }
                case 7: {
                    
                    ArrayList<CarreraProfesionalBean> listaCarreraProfesional;
                    CarreraProfesionalDAO objCarreraProfesionalDAO = new CarreraProfesionalDAO();                   
                    listaCarreraProfesional = objCarreraProfesionalDAO.ListarCarreraProfesional();            
                    request.setAttribute("listaCarreraProfesional", listaCarreraProfesional);
                    getServletContext().getRequestDispatcher("/Seguridad/crearUsuario/FrmCrearUsuarioAlumno.jsp").forward(request, response);
                    
                    break;
                }
                  case 8: {
                     String codcarreracad = new String(request.getParameter("codcarrera").getBytes("ISO-8859-1"), "UTF-8");
                     int   codcarrera=Integer.parseInt(codcarreracad);
                     UsuarioBean  objUsuarioBean=new UsuarioBean();
                                  objUsuarioBean.setCODCARRERA(codcarrera);
                     UsuarioDAO   objUsuarioDAO=new UsuarioDAO();
                     ArrayList<UsuarioBean>  listaUsuarios=objUsuarioDAO.FiltrarListaUsuariosDocentes(objUsuarioBean);
                     
                    out.println("<select name=\"cbodocente\" id=\"cbodocente\"   class=\"form-control\"   onchange=\"ListaUsuariosDocentes('"+request.getContextPath()+"','CrearUsuario',3);\"     >" );
                    out.println("   <option value=\"0\" selected>---------------------</option>");
                    for(UsuarioBean obj1:listaUsuarios)
                    {                       
                        out.println("   <option value=\""+obj1.getCODIGO()+"\" >"+obj1.getNOMBRE()+"</option>");
                    }
                    out.println("</select>");
                   
                    
                    break;
                }
                   case 9: {
                       
                     String codcarreracad = new String(request.getParameter("codcarrera").getBytes("ISO-8859-1"), "UTF-8");
                     int    codcarrera=Integer.parseInt(codcarreracad);
                     String codalumnocad = new String(request.getParameter("codalumno").getBytes("ISO-8859-1"), "UTF-8");
                     int    codalumno=Integer.parseInt(codalumnocad);
                     
                     UsuarioBean    objUsuarioBean=new UsuarioBean();
                                    objUsuarioBean.setCODCARRERA(codcarrera);
                                    objUsuarioBean.setCODIGO(codalumno);
                                    
                     UsuarioDAO     objUsuarioDAO=new UsuarioDAO();
                     
                     ArrayList<UsuarioBean>  listausuarios=objUsuarioDAO.ListarUsuariosEstudiantes(objUsuarioBean);
                                       
                    out.println(" <table id=\"example\" class=\"table table-striped table-bordered dt-responsive nowrap\" cellspacing=\"0\" width=\"100%\"> ");

                    out.println("    <thead>");
                    out.println("        <tr   class=\"panel-info \"> ");       
                   
                    out.println("            <th>Nombres y Apellidos</th>");                 
                       
                    out.println("            <th>Estado</th>");
                    out.println("            <th>Modificar</th>");
                    out.println("            <th>Habilitar/Dar Baja</th>");
                   
                    out.println("        </tr>");
                    out.println("    </thead>");                   
                    out.println("    <tbody>");
                    for (UsuarioBean obj : listausuarios) {
                        
                        out.println("        <tr>");                  
                        
                        out.println("            <td>"+obj.getNOMBRE() + "</td>");
                         
                        out.println("            <td>  ");
                                                          if(obj.getESTADO().equals("A")){ 
                        out.println("            HABILITADO  ");                                         
                                                          } else {  
                        out.println("           <font color='red'>  ");                                      
                        out.println("            DESABILITADO ");                                         
                        out.println("            </font> ");                                         
                                                          } 
                                                  
                        out.println("           </td> "); 
                         
                        out.println("            <td>");
                        out.println("    <center>");
                        out.println("        <input  type=\"button\" value=\"Modificar\" class=\"btn btn-primary\" onclick=\"nuevaProgramacionMateria('"+request.getContextPath()+"','')\"   >");
                        out.println("    </center>");
                        out.println("    </td>");
                        out.println("    <td>");
                        out.println("    <center>");
                        out.println("       <input  type=\"button\" value=\"Habilitar\" class=\"btn btn-primary\" onclick=\"habilitarUsuarioDocente('" + request.getContextPath() + "', 'CrearUsuario', 5, '" + obj.getCODROLXDOCENTE() + "')\"   >");
                        out.println("       <input  type=\"button\" value=\"Dar Baja\" class=\"btn btn-primary\" onclick=\"eliminarUsuarioDocente('" + request.getContextPath() + "', 'CrearUsuario', 4, '" + obj.getCODROLXDOCENTE() + "')\"   >");
                
                        out.println("    </center>");
                        out.println("    </td>");                       
                        out.println("    </tr>");
                    }

                    out.println("    </tbody>");
                    out.println("</table>");
                    out.println(" </div>"); 
                       
                       
                       break;
                   }
                   case  10:
                   {
                     String codcarreracad = new String(request.getParameter("codcarrera").getBytes("ISO-8859-1"), "UTF-8");
                     int    codcarrera=Integer.parseInt(codcarreracad);
                     String coddocentecad = new String(request.getParameter("codalumno").getBytes("ISO-8859-1"), "UTF-8");
                     int    coddocente=Integer.parseInt(coddocentecad);
                    
                   
                     String usuariocad = new String(request.getParameter("usuario").getBytes("ISO-8859-1"), "UTF-8");
                     String passwordcad = new String(request.getParameter("password").getBytes("ISO-8859-1"), "UTF-8");
                     UsuarioDAO       objUsuarioDAO=new UsuarioDAO();
                     int   codrolxdocente =objUsuarioDAO.GenerarCodigoRolxDocente(); 
                     UsuarioBean    objUsuarioBean=new UsuarioBean();
                                     objUsuarioBean.setCODIGO(coddocente);
                                     objUsuarioBean.setCODCARRERA(codcarrera);                                    
                                     objUsuarioBean.setCODROLXDOCENTE(codrolxdocente);
                                     objUsuarioBean.setUSUARIO(usuariocad);
                                     objUsuarioBean.setPASSWORD(passwordcad);                                   
                                     objUsuarioBean.setESTADO("A");
                     objUsuarioDAO.RegistrarNuevoUsuario(objUsuarioBean);
                
                                     
                    ArrayList<UsuarioBean>  listausuarios=objUsuarioDAO.ListarUsuariosEstudiantes(objUsuarioBean);
                                       
                    out.println(" <table id=\"example\" class=\"table table-striped table-bordered dt-responsive nowrap\" cellspacing=\"0\" width=\"100%\"> ");

                    out.println("    <thead>");
                    out.println("        <tr   class=\"panel-info \"> ");       
                   
                    out.println("            <th>Nombres y Apellidos</th>");                 
                       
                    out.println("            <th>Estado</th>");
                    out.println("            <th>Modificar</th>");
                    out.println("            <th>Habilitar/Dar Baja</th>");
                   
                    out.println("        </tr>");
                    out.println("    </thead>");                   
                    out.println("    <tbody>");
                    for (UsuarioBean obj : listausuarios) {
                        
                        out.println("        <tr>");                  
                        
                        out.println("            <td>"+obj.getNOMBRE() + "</td>");
                         
                        out.println("            <td>  ");
                                                          if(obj.getESTADO().equals("A")){ 
                        out.println("            HABILITADO  ");                                         
                                                          } else {  
                        out.println("           <font color='red'>  ");                                      
                        out.println("            DESABILITADO ");                                         
                        out.println("            </font> ");                                         
                                                          } 
                                                  
                        out.println("           </td> "); 
                         
                        out.println("            <td>");
                        out.println("    <center>");
                        out.println("        <input  type=\"button\" value=\"Modificar\" class=\"btn btn-primary\" onclick=\"nuevaProgramacionMateria('"+request.getContextPath()+"','')\"   >");
                        out.println("    </center>");
                        out.println("    </td>");
                        out.println("    <td>");
                        out.println("    <center>");
                        out.println("       <input  type=\"button\" value=\"Habilitar\" class=\"btn btn-primary\" onclick=\"habilitarUsuarioDocente('" + request.getContextPath() + "', 'CrearUsuario', 5, '" + obj.getCODROLXDOCENTE() + "')\"   >");
                        out.println("       <input  type=\"button\" value=\"Dar Baja\" class=\"btn btn-primary\" onclick=\"eliminarUsuarioDocente('" + request.getContextPath() + "', 'CrearUsuario', 4, '" + obj.getCODROLXDOCENTE() + "')\"   >");
                
                        out.println("    </center>");
                        out.println("    </td>");                       
                        out.println("    </tr>");
                    }

                    out.println("    </tbody>");
                    out.println("</table>");
                    out.println(" </div>"); 
                  
                   break;
                   }
                
            }
        }
      }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
