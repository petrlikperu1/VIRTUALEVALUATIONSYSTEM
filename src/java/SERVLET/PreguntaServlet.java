package SERVLET;

import BEAN.AlternativaBean;
import BEAN.PreguntaBean;
import BEAN.AyudaBean;
import BEAN.CarreraProfesionalBean;
import BEAN.MateriaBean;
import BEAN.TemaBean;
import BEAN.UnidadTematicaBean;
import DAO.CarreraProfesionalDAO;
import DAO.MateriaDAO;
import DAO.NivelDificultadDAO;
import DAO.PreguntaDAO;
import DAO.TemaDAO;
import DAO.UnidadTematicaDAO;
import DAO.AlternativaDAO;
import DAO.AyudaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class PreguntaServlet extends HttpServlet {

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
            switch(op){
                case 1 :{
                    PreguntaDAO  objPreguntaDAO=new PreguntaDAO();
                    ArrayList  listaPregunta=objPreguntaDAO.ListarPregunta();
                    request.setAttribute("listaPregunta",listaPregunta);
                    getServletContext().getRequestDispatcher("/BancoPreguntas/Pregunta/ExamenSupervisado/FrmRegistrarPreguntaxMateria.jsp").forward(request, response);
                    break;
                }  
                case 2 :{
                    break;
                }
                case 3 :{
//                    PreguntaDAO  objPreguntaDAO=new PreguntaDAO();
//                    int  codigo=objPreguntaDAO.generarCodigo();
//                    request.setAttribute("codigogenerado",""+codigo);
//
//                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
//                    ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesionalRegistrarPregunta();
//                    request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);
//
//                    MateriaDAO  objMateriaDAO=new MateriaDAO();
//                    ArrayList  listaMateria=objMateriaDAO.ListarMateriaRegistrarPregunta();
//                    request.setAttribute("listaMateria",listaMateria);
//
//                    UnidadTematicaDAO  objUnidadTematicaDAO=new UnidadTematicaDAO();
//                    ArrayList  listaUnidadTematica=objUnidadTematicaDAO.ListarUnidadTematicaRegistrarPregunta();
//                    request.setAttribute("listaUnidadTematica",listaUnidadTematica);
//
//                    TemaDAO  objTemaDAO=new TemaDAO();
//                    ArrayList  listaTema=objTemaDAO.ListarTemaRegistrarPregunta();
//                    request.setAttribute("listaTema",listaTema);
//
//                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();
//                    ArrayList  listaNivelDificultad=objNivelDificultadDAO. ListarNivelDificultadRegistrarPregunta();
//                    request.setAttribute("listaNivelDificultad",listaNivelDificultad);

                    getServletContext().getRequestDispatcher("/BancoPreguntas/Pregunta/ExamenSupervisado/FrmRegistrarPreguntaxMateriaRegistrar_1.jsp").forward(request, response);
                    break;
                }
                case 4 :{
                    String mensaje="";
                    String CODPREGCAD=new String(request.getParameter("CODPREG").getBytes("ISO-8859-1"), "UTF-8");
                    int CODPREG=Integer.parseInt(CODPREGCAD);
                    String codCarr=new String(request.getParameter("CODCAR").getBytes("ISO-8859-1"), "UTF-8");
                    int codigoCarrera=Integer.parseInt(codCarr);
                    String codMat=new String(request.getParameter("CODMAT").getBytes("ISO-8859-1"), "UTF-8");
                    int codigoMateria=Integer.parseInt(codMat);
                    String codUni=new String(request.getParameter("CODUNID").getBytes("ISO-8859-1"), "UTF-8");
                    int codigoUnidad=Integer.parseInt(codUni);
                    String codTem=new String(request.getParameter("CODTEMA").getBytes("ISO-8859-1"), "UTF-8");
                    int codigoTema=Integer.parseInt(codTem);
                    String codNiv=new String(request.getParameter("CODNIVEL").getBytes("ISO-8859-1"), "UTF-8");
                    int codigoNivel=Integer.parseInt(codNiv);
                    String  pregunta=new String(request.getParameter("TXTPREG").getBytes("ISO-8859-1"), "UTF-8");
                    String  alternativaA=new String(request.getParameter("alternativaA").getBytes("ISO-8859-1"), "UTF-8");
                    String  alternativaB=new String(request.getParameter("alternativaB").getBytes("ISO-8859-1"), "UTF-8");
                    String  alternativaC=new String(request.getParameter("alternativaC").getBytes("ISO-8859-1"), "UTF-8");
                    String  alternativaD=new String(request.getParameter("alternativaD").getBytes("ISO-8859-1"), "UTF-8");
                     String  alternativaE=new String(request.getParameter("alternativaE").getBytes("ISO-8859-1"), "UTF-8");
                     
                    String  cborespuestaok=new String(request.getParameter("cborespuestaok").getBytes("ISO-8859-1"), "UTF-8");
                    
                    String  enunciadoAyudas1,enunciadoAyudas2,enunciadoAyudas3,enunciadoAyudas4,enunciadoAyudas5;
                    int estado=0;
                    int  codigoayuda=0;
                    AyudaDAO    objAyudaDAO=null;
                    ArrayList<AyudaBean>  listaAyudas=null;
                    PreguntaBean  objPreguntaBean=new PreguntaBean();
                     objPreguntaBean.setCODPREG(CODPREG);
                                 objPreguntaBean.setCODCARRERA(codigoCarrera);
                                 objPreguntaBean.setCODMATERIA(codigoMateria);
                                 objPreguntaBean.setCODUNIDTEMA(codigoUnidad); 
                                 objPreguntaBean.setCODTEMA(codigoTema);
                                 objPreguntaBean.setCODNIVEL(codigoNivel);
                                 objPreguntaBean.setENUNCIADOPREG(pregunta);
                                 objPreguntaBean.setRESPUESTAOK(cborespuestaok);
                                 
                      PreguntaDAO  objPreguntaDAO=new PreguntaDAO(); 
                      
                      AlternativaDAO objAlternatvaDAO=new AlternativaDAO();            
                      int  codigoalternativa;
                           codigoalternativa=objAlternatvaDAO.generarCodigo(); 
                      ArrayList<AlternativaBean> listaaternativas=new ArrayList<AlternativaBean>();
                      
                      AlternativaBean            objAlternativaA=new AlternativaBean();                                          
                                                 objAlternativaA.setCODPREG(CODPREG);
                                                 objAlternativaA.setCODALTER(codigoalternativa);
                                                 objAlternativaA.setNUMALTER("1");
                                                 objAlternativaA.setCLAVEALTER("A");
                                                 objAlternativaA.setENUNCIADOALTER(alternativaA);
                                                 objAlternativaA.setIMGALTER("");
                                                 objAlternativaA.setESTADOIMG("");
                                                 objAlternativaA.setESTADOALTER("");                      
                           codigoalternativa++;                      
                      AlternativaBean            objAlternativaB=new AlternativaBean();
                                                 objAlternativaB.setCODPREG(CODPREG);
                                                 objAlternativaB.setCODALTER(codigoalternativa);
                                                 objAlternativaB.setNUMALTER("2");
                                                 objAlternativaB.setCLAVEALTER("B");
                                                 objAlternativaB.setENUNCIADOALTER(alternativaB);
                                                 objAlternativaB.setIMGALTER("");
                                                 objAlternativaB.setESTADOIMG("");
                                                 objAlternativaB.setESTADOALTER(""); 
                        codigoalternativa++;                          
                      AlternativaBean            objAlternativaC=new AlternativaBean();
                                                 objAlternativaC.setCODPREG(CODPREG);
                                                 objAlternativaC.setCODALTER(codigoalternativa);
                                                 objAlternativaC.setNUMALTER("3");
                                                 objAlternativaC.setCLAVEALTER("C");
                                                 objAlternativaC.setENUNCIADOALTER(alternativaC);
                                                 objAlternativaC.setIMGALTER("");
                                                 objAlternativaC.setESTADOIMG("");
                                                 objAlternativaC.setESTADOALTER(""); 
                       codigoalternativa++;                           
                      AlternativaBean            objAlternativaD=new AlternativaBean();
                                                 objAlternativaD.setCODPREG(CODPREG);
                                                 objAlternativaD.setCODALTER(codigoalternativa);
                                                 objAlternativaD.setNUMALTER("4");
                                                 objAlternativaD.setCLAVEALTER("D");
                                                 objAlternativaD.setENUNCIADOALTER(alternativaD);
                                                 objAlternativaD.setIMGALTER("");
                                                 objAlternativaD.setESTADOIMG("");
                                                 objAlternativaD.setESTADOALTER(""); 
                                                 
                                                 
                      codigoalternativa++;                           
                      AlternativaBean            objAlternativaE=new AlternativaBean();
                                                 objAlternativaE.setCODPREG(CODPREG);
                                                 objAlternativaE.setCODALTER(codigoalternativa);
                                                 objAlternativaE.setNUMALTER("5");
                                                 objAlternativaE.setCLAVEALTER("E");
                                                 objAlternativaE.setENUNCIADOALTER(alternativaD);
                                                 objAlternativaE.setIMGALTER("");
                                                 objAlternativaE.setESTADOIMG("");
                                                 objAlternativaE.setESTADOALTER("");                            
                                                 
                                                 listaaternativas.add(objAlternativaA);
                                                 listaaternativas.add(objAlternativaB);
                                                 listaaternativas.add(objAlternativaC);
                                                 listaaternativas.add(objAlternativaD);
                                                 listaaternativas.add(objAlternativaE);
                    if(codigoNivel==1)
                    {   estado=objPreguntaDAO.InsertarPregunta(objPreguntaBean);
                        objAlternatvaDAO.InsertarAlternativas(listaaternativas); 
                    }
                    if(codigoNivel==2)
                    {                 objAyudaDAO=new  AyudaDAO();
                        codigoayuda=  objAyudaDAO.generarCodigo();
                       
                        estado=objPreguntaDAO.InsertarPregunta(objPreguntaBean);
                        objAlternatvaDAO.InsertarAlternativas(listaaternativas); 
                        
                       enunciadoAyudas1=new String(request.getParameter("enunciadoAyudas1").getBytes("ISO-8859-1"), "UTF-8");                      
                       
                        listaAyudas=new ArrayList<AyudaBean>();   
                       codigoayuda++;
                       //System.out.println(codigoayuda);
                       AyudaBean   objAyudaBean1=new  AyudaBean();
                                   objAyudaBean1.setCODPREG(CODPREG);
                                   objAyudaBean1.setCODAYUDA(codigoayuda);
                                   objAyudaBean1.setNUMAYUDA(1);
                                   objAyudaBean1.setENUNCIADOAYUDA(enunciadoAyudas1);                             
                                   objAyudaBean1.setPENALIDADAYUDA(0);
                                   objAyudaBean1.setIMGAYUDA("");                                  
                                   objAyudaBean1.setESTADOINGAYUDA("A");
                                   objAyudaBean1.setESTADOAYUDA("A");
                       codigoayuda++;
                      
                                   listaAyudas.add(objAyudaBean1);
                                 
                                   
                        objAyudaDAO.InsertarAyudas(listaAyudas);
                    }
                    if(codigoNivel==3)
                    {
                       estado=objPreguntaDAO.InsertarPregunta(objPreguntaBean);
                       objAlternatvaDAO.InsertarAlternativas(listaaternativas); 
                       
                       enunciadoAyudas3=new String(request.getParameter("enunciadoAyudas3").getBytes("ISO-8859-1"), "UTF-8");
                       enunciadoAyudas4=new String(request.getParameter("enunciadoAyudas4").getBytes("ISO-8859-1"), "UTF-8");   
                     
                        objAyudaDAO=new  AyudaDAO();
                        codigoayuda=  objAyudaDAO.generarCodigo();
                        
                                   listaAyudas=new ArrayList<AyudaBean>();    
                       codigoayuda++;    
                        System.out.println(codigoayuda);
                       AyudaBean   objAyudaBean3=new  AyudaBean();
                                   objAyudaBean3.setCODPREG(CODPREG);
                                   objAyudaBean3.setCODAYUDA(codigoayuda);
                                   objAyudaBean3.setNUMAYUDA(1);
                                   objAyudaBean3.setENUNCIADOAYUDA(enunciadoAyudas3);
                                   objAyudaBean3.setPENALIDADAYUDA(0);
                                   objAyudaBean3.setIMGAYUDA("");                                  
                                   objAyudaBean3.setESTADOINGAYUDA("A");
                                   objAyudaBean3.setESTADOAYUDA("A");
                       codigoayuda++;  
                        System.out.println(codigoayuda);
                       AyudaBean   objAyudaBean4=new  AyudaBean();
                                   objAyudaBean4.setCODPREG(CODPREG);
                                   objAyudaBean4.setCODAYUDA(codigoayuda);
                                   objAyudaBean4.setNUMAYUDA(2);
                                   objAyudaBean4.setENUNCIADOAYUDA(enunciadoAyudas4);
                                   objAyudaBean4.setPENALIDADAYUDA(0);
                                   objAyudaBean4.setIMGAYUDA("");                                  
                                   objAyudaBean4.setESTADOINGAYUDA("A");
                                   objAyudaBean4.setESTADOAYUDA("A"); 
                                                           
                                   listaAyudas.add(objAyudaBean3);
                                   listaAyudas.add(objAyudaBean4);
                                  
                                   
                       objAyudaDAO.InsertarAyudas(listaAyudas);
                    }     
                    ArrayList  listaPregunta=objPreguntaDAO.ListarPregunta();
                    request.setAttribute("listaPregunta",listaPregunta);
                    getServletContext().getRequestDispatcher("/BancoPreguntas/Pregunta/ExamenSupervisado/FrmRegistrarPreguntaxMateria.jsp").forward(request, response);
                    break;
                }
                case 5 :{
                   
                    
                    String s_codpreg = new String(request.getParameter("CODPREG").getBytes("ISO-8859-1"), "UTF-8");
                    
                    int     codpreg=Integer.parseInt(s_codpreg);
                   
                    PreguntaBean    objPreguntaBean=new PreguntaBean();
                    PreguntaDAO     objPreguntaDAO=new PreguntaDAO();
                    objPreguntaBean = objPreguntaDAO.TraerPregunta(codpreg);
                
                   
                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    ArrayList<CarreraProfesionalBean>  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                    
                    MateriaBean objMateriaBean=new MateriaBean();
                    MateriaDAO  objMateriaDAO=new MateriaDAO();
                    objMateriaBean.setCODCARRERA(objPreguntaBean.getCODCARRERA());
                    ArrayList<MateriaBean>  listaMateria=objMateriaDAO.FiltrarMateria(objMateriaBean);
                    
                    UnidadTematicaBean  objUnidadTematicaBean=new UnidadTematicaBean();
                    UnidadTematicaDAO  objUnidadTematicaDAO=new UnidadTematicaDAO();
                    objUnidadTematicaBean.setCODCARRERA(objPreguntaBean.getCODCARRERA());
                    objUnidadTematicaBean.setCODMATERIA(objPreguntaBean.getCODMATERIA());
                    ArrayList<UnidadTematicaBean>  listaUnidadTematica=objUnidadTematicaDAO.FiltrarUnidadTematica(objUnidadTematicaBean);
                    
                    TemaBean    objTemaBean=new TemaBean();
                    TemaDAO  objTemaDAO=new TemaDAO();
                    objTemaBean.setCODCARRERA(objPreguntaBean.getCODCARRERA());
                    objTemaBean.setCODMATERIA(objPreguntaBean.getCODMATERIA());
                    objTemaBean.setCODUNIDTEMA(objPreguntaBean.getCODUNIDTEMA());
                    ArrayList  listaTema=objTemaDAO.FiltrarTema(objTemaBean);
                    
                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();
                    ArrayList  listaNivelDificultad=objNivelDificultadDAO.ListarNivelDificultad();
                    session.setAttribute("CODPREGUNTA",s_codpreg);
                    request.setAttribute("objPreguntaBean",objPreguntaBean);
                    request.setAttribute("listaMateria",listaMateria);
                    request.setAttribute("listaTema",listaTema);
                    request.setAttribute("listaUnidadTematica",listaUnidadTematica);
                    request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);
                    request.setAttribute("listaNivelDificultad",listaNivelDificultad);
                    getServletContext().getRequestDispatcher("/BancoPreguntas/Pregunta/ExamenSupervisado/FrmRegistrarPreguntaxMateriaModificar.jsp").forward(request, response);
                    break;
                }
                case 6 :{
                    String mensaje="";
                 
                    String s_codpreg = new String(request.getParameter("CODPREG").getBytes("ISO-8859-1"), "UTF-8");
                    int codpreg=Integer.parseInt(s_codpreg);
                    String s_codcar=new String(request.getParameter("CODCAR").getBytes("ISO-8859-1"), "UTF-8");;
                    int codcar=Integer.parseInt(s_codcar);
                    String s_codmat=new String(request.getParameter("CODMAT").getBytes("ISO-8859-1"), "UTF-8");;
                    int codmat=Integer.parseInt(s_codmat);
                    String s_coduni=new String(request.getParameter("CODUNID").getBytes("ISO-8859-1"), "UTF-8");;
                    int coduni=Integer.parseInt(s_coduni);
                    String s_codtem=new String(request.getParameter("CODTEMA").getBytes("ISO-8859-1"), "UTF-8");;
                    int codtem=Integer.parseInt(s_codtem);
                    String s_codniv=new String(request.getParameter("CODNIVEL").getBytes("ISO-8859-1"), "UTF-8");;
                    int codniv=Integer.parseInt(s_codniv);
                    String  pregunta=new String(request.getParameter("TXTPREG").getBytes("ISO-8859-1"), "UTF-8");;
                    String s_codaltera=new String(request.getParameter("CODALTERA").getBytes("ISO-8859-1"), "UTF-8");;
                    int codaltera=Integer.parseInt(s_codaltera);
                    String  alternativaA=new String(request.getParameter("alternativaA").getBytes("ISO-8859-1"), "UTF-8");;
                    String s_codalterb=new String(request.getParameter("CODALTERB").getBytes("ISO-8859-1"), "UTF-8");;
                    int codalterb=Integer.parseInt(s_codalterb);
                    String  alternativaB=new String(request.getParameter("alternativaB").getBytes("ISO-8859-1"), "UTF-8");;
                    String s_codalterc=new String(request.getParameter("CODALTERC").getBytes("ISO-8859-1"), "UTF-8");;
                    int codalterc=Integer.parseInt(s_codalterc);
                    String  alternativaC=new String(request.getParameter("alternativaC").getBytes("ISO-8859-1"), "UTF-8");;
                    String s_codalterd=new String(request.getParameter("CODALTERD").getBytes("ISO-8859-1"), "UTF-8");;
                    int codalterd=Integer.parseInt(s_codalterd);
                    String  alternativaD=new String(request.getParameter("alternativaD").getBytes("ISO-8859-1"), "UTF-8");;
                    String  cborespuestaok=new String(request.getParameter("cborespuestaok").getBytes("ISO-8859-1"), "UTF-8");;
                    String  s_codayuda1,s_codayuda2,s_codayuda3;
                    int     codayuda1,codayuda2,codayuda3;
                    String  enunciadoAyudas1,enunciadoAyudas2,enunciadoAyudas3;
                    int estado=0;
                    AyudaDAO    objAyudaDAO=null;
                    ArrayList<AyudaBean>  listaAyudasInsertar=null;
                    ArrayList<AyudaBean>  listaAyudasActualizar=null;
                                        
                    PreguntaBean  objPreguntaBean=new PreguntaBean();
                    objPreguntaBean.setCODPREG(codpreg);
                    objPreguntaBean.setENUNCIADOPREG(pregunta);
                    objPreguntaBean.setRESPUESTAOK(cborespuestaok);
                    objPreguntaBean.setIMAGENPREG("");
                    objPreguntaBean.setESTADOIMGPREG("");
                    objPreguntaBean.setESTADOPREG("A");
                    objPreguntaBean.setCODNIVEL(codniv);
                    objPreguntaBean.setCODCARRERA(codcar);
                    objPreguntaBean.setCODMATERIA(codmat);
                    objPreguntaBean.setCODUNIDTEMA(coduni);
                    objPreguntaBean.setCODTEMA(codtem);
                    
                    PreguntaDAO  objPreguntaDAO=new PreguntaDAO(); 
                      
                    AlternativaDAO objAlternatvaDAO=new AlternativaDAO();            
                    ArrayList<AlternativaBean> listaalternativas=new ArrayList<AlternativaBean>();
                      
                      AlternativaBean            objAlternativaA=new AlternativaBean();                                          
                                                 objAlternativaA.setCODPREG(codpreg);
                                                 objAlternativaA.setCODALTER(codaltera);
                                                 objAlternativaA.setNUMALTER("1");
                                                 objAlternativaA.setCLAVEALTER("A");
                                                 objAlternativaA.setENUNCIADOALTER(alternativaA);
                                                 objAlternativaA.setIMGALTER("");
                                                 objAlternativaA.setESTADOIMG("");
                                                 objAlternativaA.setESTADOALTER("");
                                                 
                      AlternativaBean            objAlternativaB=new AlternativaBean();
                                                 objAlternativaB.setCODPREG(codpreg);
                                                 objAlternativaB.setCODALTER(codalterb);
                                                 objAlternativaB.setNUMALTER("2");
                                                 objAlternativaB.setCLAVEALTER("B");
                                                 objAlternativaB.setENUNCIADOALTER(alternativaB);
                                                 objAlternativaB.setIMGALTER("");
                                                 objAlternativaB.setESTADOIMG("");
                                                 objAlternativaB.setESTADOALTER("");
                                                 
                      AlternativaBean            objAlternativaC=new AlternativaBean();
                                                 objAlternativaC.setCODPREG(codpreg);
                                                 objAlternativaC.setCODALTER(codalterc);
                                                 objAlternativaC.setNUMALTER("3");
                                                 objAlternativaC.setCLAVEALTER("C");
                                                 objAlternativaC.setENUNCIADOALTER(alternativaC);
                                                 objAlternativaC.setIMGALTER("");
                                                 objAlternativaC.setESTADOIMG("");
                                                 objAlternativaC.setESTADOALTER("");
                                                 
                      AlternativaBean            objAlternativaD=new AlternativaBean();
                                                 objAlternativaD.setCODPREG(codpreg);
                                                 objAlternativaD.setCODALTER(codalterd);
                                                 objAlternativaD.setNUMALTER("4");
                                                 objAlternativaD.setCLAVEALTER("D");
                                                 objAlternativaD.setENUNCIADOALTER(alternativaD);
                                                 objAlternativaD.setIMGALTER("");
                                                 objAlternativaD.setESTADOIMG("");
                                                 objAlternativaD.setESTADOALTER(""); 
                      
                                                 listaalternativas.add(objAlternativaA);
                                                 listaalternativas.add(objAlternativaB);
                                                 listaalternativas.add(objAlternativaC);
                                                 listaalternativas.add(objAlternativaD);
                    if(codniv==1) {
                        estado=objPreguntaDAO.ModificarPregunta(objPreguntaBean);
                        objAlternatvaDAO.ModificarAlternativas(listaalternativas); 
                    }
                    if(codniv==2) {
                    objAyudaDAO = new  AyudaDAO();
                        
                        int codigoayuda=  objAyudaDAO.generarCodigo();
                        
                        estado=objPreguntaDAO.ModificarPregunta(objPreguntaBean);
                        objAlternatvaDAO.ModificarAlternativas(listaalternativas); 
                        
                        s_codayuda1=new String(request.getParameter("CODAYUDA1").getBytes("ISO-8859-1"), "UTF-8");
                        codayuda1=Integer.parseInt(s_codayuda1);
                        enunciadoAyudas1=new String(request.getParameter("ayuda1").getBytes("ISO-8859-1"), "UTF-8");
                        s_codayuda2=request.getParameter("CODAYUDA2");
                        codayuda2=Integer.parseInt(s_codayuda2);
                        enunciadoAyudas2=new String(request.getParameter("ayuda2").getBytes("ISO-8859-1"), "UTF-8");

                        listaAyudasInsertar=new ArrayList<AyudaBean>();   
                        listaAyudasActualizar=new ArrayList<AyudaBean>();   
                        
                       AyudaBean   objAyudaBean1=new  AyudaBean();
                                   objAyudaBean1.setCODPREG(codpreg);
                                   objAyudaBean1.setCODAYUDA(codayuda1);
                                   objAyudaBean1.setNUMAYUDA(1);
                                   objAyudaBean1.setENUNCIADOAYUDA(enunciadoAyudas1);
                                   objAyudaBean1.setPENALIDADAYUDA(0);
                                   objAyudaBean1.setIMGAYUDA("");                                  
                                   objAyudaBean1.setESTADOINGAYUDA("A");
                                   objAyudaBean1.setESTADOAYUDA("A");
                       
                                   if (objAyudaBean1.getCODAYUDA() == 0 ){
                                       codigoayuda++;
                                       objAyudaBean1.setCODAYUDA(codigoayuda);
                                       listaAyudasInsertar.add(objAyudaBean1);
                                   }else{
                                       listaAyudasActualizar.add(objAyudaBean1);
                                   }
                                   
                                   
                       AyudaBean   objAyudaBean2=new  AyudaBean();
                                   objAyudaBean2.setCODPREG(codpreg);
                                   objAyudaBean2.setCODAYUDA(codayuda2);
                                   objAyudaBean2.setNUMAYUDA(2);
                                   objAyudaBean2.setENUNCIADOAYUDA(enunciadoAyudas2);
                                   objAyudaBean2.setPENALIDADAYUDA(0);
                                   objAyudaBean2.setIMGAYUDA("");                                  
                                   objAyudaBean2.setESTADOINGAYUDA("A");
                                   objAyudaBean2.setESTADOAYUDA("A");   
                                   
                                   if (objAyudaBean2.getCODAYUDA() == 0 ){
                                       codigoayuda++;
                                       objAyudaBean2.setCODAYUDA(codigoayuda);
                                       listaAyudasInsertar.add(objAyudaBean2);
                                   }else{
                                       listaAyudasActualizar.add(objAyudaBean2);
                                   }
                        
                        objAyudaDAO.InsertarAyudas(listaAyudasInsertar);
                        objAyudaDAO.ModificarAyudas(listaAyudasActualizar);
                      
                    }
                    if(codniv==3)
                    {
                       estado=objPreguntaDAO.ModificarPregunta(objPreguntaBean);
                       objAlternatvaDAO.ModificarAlternativas(listaalternativas); 
                       
                        s_codayuda1=new String(request.getParameter("CODAYUDA1").getBytes("ISO-8859-1"), "UTF-8");
                        codayuda1=Integer.parseInt(s_codayuda1);
                        enunciadoAyudas1=new String(request.getParameter("ayuda1").getBytes("ISO-8859-1"), "UTF-8");
                        s_codayuda2=new String(request.getParameter("CODAYUDA2").getBytes("ISO-8859-1"), "UTF-8");
                        codayuda2=Integer.parseInt(s_codayuda2);
                        enunciadoAyudas2=new String(request.getParameter("ayuda2").getBytes("ISO-8859-1"), "UTF-8");
                        s_codayuda3=new String(request.getParameter("CODAYUDA3").getBytes("ISO-8859-1"), "UTF-8");
                        codayuda3=Integer.parseInt(s_codayuda3);
                        enunciadoAyudas3=new String(request.getParameter("ayuda3").getBytes("ISO-8859-1"), "UTF-8");
                        
                        objAyudaDAO=new  AyudaDAO();
                        
                        int codigoayuda=  objAyudaDAO.generarCodigo();
                        
                        listaAyudasInsertar=new ArrayList<AyudaBean>();   
                        listaAyudasActualizar=new ArrayList<AyudaBean>();   
                                   
                       AyudaBean   objAyudaBean1=new  AyudaBean();
                                   objAyudaBean1.setCODPREG(codpreg);
                                   objAyudaBean1.setCODAYUDA(codayuda1);
                                   objAyudaBean1.setNUMAYUDA(1);
                                   objAyudaBean1.setENUNCIADOAYUDA(enunciadoAyudas1);
                                   objAyudaBean1.setPENALIDADAYUDA(0);
                                   objAyudaBean1.setIMGAYUDA("");                                  
                                   objAyudaBean1.setESTADOINGAYUDA("A");
                                   objAyudaBean1.setESTADOAYUDA("A");
                                   
                                   if (objAyudaBean1.getCODAYUDA() == 0 ){
                                       codigoayuda++;
                                       objAyudaBean1.setCODAYUDA(codigoayuda);
                                       listaAyudasInsertar.add(objAyudaBean1);
                                   }else{
                                       listaAyudasActualizar.add(objAyudaBean1);
                                   }
                                    
                       AyudaBean   objAyudaBean2=new  AyudaBean();
                                   objAyudaBean2.setCODPREG(codpreg);
                                   objAyudaBean2.setCODAYUDA(codayuda2);
                                   objAyudaBean2.setNUMAYUDA(2);
                                   objAyudaBean2.setENUNCIADOAYUDA(enunciadoAyudas2);
                                   objAyudaBean2.setPENALIDADAYUDA(0);
                                   objAyudaBean2.setIMGAYUDA("");
                                   objAyudaBean2.setESTADOINGAYUDA("A");
                                   objAyudaBean2.setESTADOAYUDA("A");
                                   
                                   if (objAyudaBean2.getCODAYUDA() == 0 ){
                                       codigoayuda++;
                                       objAyudaBean2.setCODAYUDA(codigoayuda);
                                       listaAyudasInsertar.add(objAyudaBean2);
                                   }else{
                                       listaAyudasActualizar.add(objAyudaBean2);
                                   }
                                   
                       AyudaBean   objAyudaBean3=new  AyudaBean();
                                   objAyudaBean3.setCODPREG(codpreg);
                                   objAyudaBean3.setCODAYUDA(codayuda3);
                                   objAyudaBean3.setNUMAYUDA(3);
                                   objAyudaBean3.setENUNCIADOAYUDA(enunciadoAyudas3);
                                   objAyudaBean3.setPENALIDADAYUDA(0);
                                   objAyudaBean3.setIMGAYUDA("");
                                   objAyudaBean3.setESTADOINGAYUDA("A");
                                   objAyudaBean3.setESTADOAYUDA("A");                
                                   
                                   if (objAyudaBean3.getCODAYUDA() == 0 ){
                                       codigoayuda++;
                                       objAyudaBean3.setCODAYUDA(codigoayuda);
                                       listaAyudasInsertar.add(objAyudaBean3);
                                   }else{
                                       listaAyudasActualizar.add(objAyudaBean3);
                                   }
                             
                                   objAyudaDAO.InsertarAyudas(listaAyudasInsertar);
                        
                                   objAyudaDAO.ModificarAyudas(listaAyudasActualizar);
                        
                    }     
                    
                    objPreguntaBean = objPreguntaDAO.TraerPregunta(codpreg);
                    
                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    ArrayList<CarreraProfesionalBean>  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                    
                    MateriaBean objMateriaBean=new MateriaBean();
                    MateriaDAO  objMateriaDAO=new MateriaDAO();
                    objMateriaBean.setCODCARRERA(objPreguntaBean.getCODCARRERA());
                    ArrayList<MateriaBean>  listaMateria=objMateriaDAO.FiltrarMateria(objMateriaBean);
                    
                    UnidadTematicaBean  objUnidadTematicaBean=new UnidadTematicaBean();
                    UnidadTematicaDAO  objUnidadTematicaDAO=new UnidadTematicaDAO();
                    objUnidadTematicaBean.setCODCARRERA(objPreguntaBean.getCODCARRERA());
                    objUnidadTematicaBean.setCODMATERIA(objPreguntaBean.getCODMATERIA());
                    ArrayList<UnidadTematicaBean>  listaUnidadTematica=objUnidadTematicaDAO.FiltrarUnidadTematica(objUnidadTematicaBean);
                    
                    TemaBean    objTemaBean=new TemaBean();
                    TemaDAO  objTemaDAO=new TemaDAO();
                    objTemaBean.setCODCARRERA(objPreguntaBean.getCODCARRERA());
                    objTemaBean.setCODMATERIA(objPreguntaBean.getCODMATERIA());
                    objTemaBean.setCODUNIDTEMA(objPreguntaBean.getCODUNIDTEMA());
                    ArrayList  listaTema=objTemaDAO.FiltrarTema(objTemaBean);
                    
                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();
                    ArrayList  listaNivelDificultad=objNivelDificultadDAO.ListarNivelDificultad();
                    
                   /* request.setAttribute("objPreguntaBean",objPreguntaBean);
                    request.setAttribute("listaMateria",listaMateria);
                    request.setAttribute("listaTema",listaTema);
                    request.setAttribute("listaUnidadTematica",listaUnidadTematica);
                    request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);
                    request.setAttribute("listaNivelDificultad",listaNivelDificultad);
                    getServletContext().getRequestDispatcher("/BancoPreguntas/Pregunta/FrmRegistrarPreguntaxMateria.jsp").forward(request, response);
                    */
                    ArrayList  listaPregunta=objPreguntaDAO.ListarPregunta();
                    request.setAttribute("listaPregunta",listaPregunta);
                    getServletContext().getRequestDispatcher("/BancoPreguntas/Pregunta/ExamenSupervisado/FrmRegistrarPreguntaxMateria.jsp").forward(request, response);
                    break;
                }
                case 7 :{
                    break;
                }   
                case 8 :{                
                    String  codcad=new String(request.getParameter("CODPREG").getBytes("ISO-8859-1"), "UTF-8");
                    int   codigo=Integer.parseInt(codcad);
                    
                    AyudaDAO    objAyudaDAO = new AyudaDAO();
                    objAyudaDAO.EliminarAyuda(codigo);
                    
                    AlternativaDAO  objAlternativaDAO = new AlternativaDAO();
                    objAlternativaDAO.EliminarAlternativa(codigo);
                    
                    PreguntaDAO  objPreguntaDAO=new PreguntaDAO();            
                    objPreguntaDAO.EliminarPregunta(codigo);
                    
                    ArrayList  listaPregunta=objPreguntaDAO.ListarPregunta();
                    request.setAttribute("listaPregunta",listaPregunta);
                    getServletContext().getRequestDispatcher("/BancoPreguntas/Pregunta/ExamenSupervisado/FrmRegistrarPreguntaxMateria.jsp").forward(request, response);
                    break;
                }
                case 9:{
                    HttpSession sesion = request.getSession();
                    ArrayList<AlternativaBean> lista = new ArrayList<AlternativaBean>();
                    
                    lista = (ArrayList<AlternativaBean>)sesion.getAttribute("ALTERNATIVAS");
                    String alter = new String(request.getParameter("ALTER").getBytes("ISO-8859-1"), "UTF-8");
                    String clave = new String(request.getParameter("CLAVE").getBytes("ISO-8859-1"), "UTF-8");
                    AlternativaBean objAlternativa = new AlternativaBean();
                    objAlternativa.setENUNCIADOALTER(alter);
                    lista.add(objAlternativa);
                    int i=1;
                    for(AlternativaBean obj:lista){
                        obj.setNUMALTER(Integer.toString(i));
                        i++;
                    }
                    PrintWriter out9 = response.getWriter();
                    out9.println("<table><tr>");
                    out9.println("<th title=\"Alternativa.\">Alt.</th>");
                    out9.println("<th title=\"Descripción.\">Descripción</th>");
                    out9.println("<th title=\"Opción Correcta.\">Opt. Cor.</th>");
                    out9.println("<th title=\"Operación.\">Oper.</th>");
                    out9.println("</tr>");
                    for(AlternativaBean obj:lista){
                        out9.println("<tr><td>"+obj.getNUMALTER()+"</td>");
                        out9.println("<td>"+obj.getENUNCIADOALTER()+"</td>");
                        String checked = " ";
                        if(obj.getNUMALTER() == clave) checked = " checked ";
                        out9.println("<td style=\"text-align: center;\"><input type=\"radio\""+checked+"name=\"rdAlternativa\" value=\""+ obj.getNUMALTER() +"\" /></td>");
                        out9.println("<td><input type=\"button\" value=\"MOD\" onclick=\"modAlternativa();\" title=\"Modificar.\"/>");
                        out9.println("<input type=\"button\" value=\"ELI\" onclick=\"eliAlternativa();\" title=\"Eliminar.\"/></td></tr>");
                    }
                    out9.println("<tr><td>#</td>");
                    out9.println("<td><input type=\"text\" name=\"txtAdiDescAlte\" id=\"txtAdiDescAlte\"/></td>");
                    out9.println("<td style=\"text-align: center;\"><input type=\"radio\" name=\"rdAlternativa\" value=\"n\" disabled=\"true\"/></td>");
                    out9.println("<td><input type=\"button\" value=\"ADI\" onclick=\"adiAlternativa();\" title=\"Adicionar.\"/></td>");
                    out9.println("</tr></table>");
                    sesion.setAttribute("ALTERNATIVAS", lista);
                }
                case 10:{
                    HttpSession sesion = request.getSession();
                    ArrayList<AlternativaBean> lista = new ArrayList<AlternativaBean>();
                    lista = (ArrayList<AlternativaBean>)sesion.getAttribute("ALTERNATIVAS");

                    String alternativa = new String(request.getParameter("ALTER").getBytes("ISO-8859-1"), "UTF-8");
                    AlternativaBean objAlternativa = new AlternativaBean();
                    objAlternativa.setENUNCIADOALTER(alternativa);

                    lista.add(objAlternativa);
                    sesion.setAttribute("ALTERNATIVAS", lista);
                }
                case 11:
                {
                   
                    getServletContext().getRequestDispatcher("/BancoPreguntas/Pregunta/ExamenSupervisado/FrmAgregarPregunta.jsp").forward(request, response); 
                   
                    break;
                }
                
               case 12 :{
                    PreguntaDAO  objPreguntaDAO=new PreguntaDAO();
                    ArrayList  listaPregunta=objPreguntaDAO.ListarPregunta();
                    request.setAttribute("listaPregunta",listaPregunta);
                    getServletContext().getRequestDispatcher("/BancoPreguntas/Pregunta/ExamenTrainig/FrmRegistrarPreguntaxMateriaExamenTraining.jsp").forward(request, response);
                    break;
                }  
                case 13 :{
                    break;
                }
                case 14 :{
                    PreguntaDAO  objPreguntaDAO=new PreguntaDAO();
                    int  codigo=objPreguntaDAO.generarCodigo();
                    request.setAttribute("codigogenerado",""+codigo);

                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesionalRegistrarPregunta();
                    request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);

                    MateriaDAO  objMateriaDAO=new MateriaDAO();
                    ArrayList  listaMateria=objMateriaDAO.ListarMateriaRegistrarPregunta();
                    request.setAttribute("listaMateria",listaMateria);

                    UnidadTematicaDAO  objUnidadTematicaDAO=new UnidadTematicaDAO();
                    ArrayList  listaUnidadTematica=objUnidadTematicaDAO.ListarUnidadTematicaRegistrarPregunta();
                    request.setAttribute("listaUnidadTematica",listaUnidadTematica);

                    TemaDAO  objTemaDAO=new TemaDAO();
                    ArrayList  listaTema=objTemaDAO.ListarTemaRegistrarPregunta();
                    request.setAttribute("listaTema",listaTema);

                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();
                    ArrayList  listaNivelDificultad=objNivelDificultadDAO. ListarNivelDificultadRegistrarPregunta();
                    request.setAttribute("listaNivelDificultad",listaNivelDificultad);

                    getServletContext().getRequestDispatcher("/BancoPreguntas/Pregunta/ExamenTrainig/FrmRegistrarPreguntaxMateriaRegistrarExamenTraining.jsp").forward(request, response);
                    break;
                }
                case 15 :{
                    String mensaje="";
                    String CODPREGCAD=new String(request.getParameter("CODPREG").getBytes("ISO-8859-1"), "UTF-8");
                    int CODPREG=Integer.parseInt(CODPREGCAD);
                    String codCarr=new String(request.getParameter("CODCAR").getBytes("ISO-8859-1"), "UTF-8");
                    int codigoCarrera=Integer.parseInt(codCarr);
                    String codMat=new String(request.getParameter("CODMAT").getBytes("ISO-8859-1"), "UTF-8");
                    int codigoMateria=Integer.parseInt(codMat);
                    String codUni=new String(request.getParameter("CODUNID").getBytes("ISO-8859-1"), "UTF-8");
                    int codigoUnidad=Integer.parseInt(codUni);
                    String codTem=new String(request.getParameter("CODTEMA").getBytes("ISO-8859-1"), "UTF-8");
                    int codigoTema=Integer.parseInt(codTem);
                    String codNiv=new String(request.getParameter("CODNIVEL").getBytes("ISO-8859-1"), "UTF-8");
                    int codigoNivel=Integer.parseInt(codNiv);
                    String  pregunta=new String(request.getParameter("TXTPREG").getBytes("ISO-8859-1"), "UTF-8");
                    String  alternativaA=new String(request.getParameter("alternativaA").getBytes("ISO-8859-1"), "UTF-8");
                    String  alternativaB=new String(request.getParameter("alternativaB").getBytes("ISO-8859-1"), "UTF-8");
                    String  alternativaC=new String(request.getParameter("alternativaC").getBytes("ISO-8859-1"), "UTF-8");
                    String  alternativaD=new String(request.getParameter("alternativaD").getBytes("ISO-8859-1"), "UTF-8");
                     String  alternativaE=new String(request.getParameter("alternativaE").getBytes("ISO-8859-1"), "UTF-8");
                     
                    String  cborespuestaok=new String(request.getParameter("cborespuestaok").getBytes("ISO-8859-1"), "UTF-8");
                    
                    String  enunciadoAyudas1,enunciadoAyudas2,enunciadoAyudas3,enunciadoAyudas4,enunciadoAyudas5;
                    int estado=0;
                    int  codigoayuda=0;
                    AyudaDAO    objAyudaDAO=null;
                    ArrayList<AyudaBean>  listaAyudas=null;
                    PreguntaBean  objPreguntaBean=new PreguntaBean();
                     objPreguntaBean.setCODPREG(CODPREG);
                                 objPreguntaBean.setCODCARRERA(codigoCarrera);
                                 objPreguntaBean.setCODMATERIA(codigoMateria);
                                 objPreguntaBean.setCODUNIDTEMA(codigoUnidad); 
                                 objPreguntaBean.setCODTEMA(codigoTema);
                                 objPreguntaBean.setCODNIVEL(codigoNivel);
                                 objPreguntaBean.setENUNCIADOPREG(pregunta);
                                 objPreguntaBean.setRESPUESTAOK(cborespuestaok);
                                 
                      PreguntaDAO  objPreguntaDAO=new PreguntaDAO(); 
                      
                      AlternativaDAO objAlternatvaDAO=new AlternativaDAO();            
                      int  codigoalternativa;
                           codigoalternativa=objAlternatvaDAO.generarCodigo(); 
                      ArrayList<AlternativaBean> listaaternativas=new ArrayList<AlternativaBean>();
                      
                      AlternativaBean            objAlternativaA=new AlternativaBean();                                          
                                                 objAlternativaA.setCODPREG(CODPREG);
                                                 objAlternativaA.setCODALTER(codigoalternativa);
                                                 objAlternativaA.setNUMALTER("1");
                                                 objAlternativaA.setCLAVEALTER("A");
                                                 objAlternativaA.setENUNCIADOALTER(alternativaA);
                                                 objAlternativaA.setIMGALTER("");
                                                 objAlternativaA.setESTADOIMG("");
                                                 objAlternativaA.setESTADOALTER("");                      
                           codigoalternativa++;                      
                      AlternativaBean            objAlternativaB=new AlternativaBean();
                                                 objAlternativaB.setCODPREG(CODPREG);
                                                 objAlternativaB.setCODALTER(codigoalternativa);
                                                 objAlternativaB.setNUMALTER("2");
                                                 objAlternativaB.setCLAVEALTER("B");
                                                 objAlternativaB.setENUNCIADOALTER(alternativaB);
                                                 objAlternativaB.setIMGALTER("");
                                                 objAlternativaB.setESTADOIMG("");
                                                 objAlternativaB.setESTADOALTER(""); 
                        codigoalternativa++;                          
                      AlternativaBean            objAlternativaC=new AlternativaBean();
                                                 objAlternativaC.setCODPREG(CODPREG);
                                                 objAlternativaC.setCODALTER(codigoalternativa);
                                                 objAlternativaC.setNUMALTER("3");
                                                 objAlternativaC.setCLAVEALTER("C");
                                                 objAlternativaC.setENUNCIADOALTER(alternativaC);
                                                 objAlternativaC.setIMGALTER("");
                                                 objAlternativaC.setESTADOIMG("");
                                                 objAlternativaC.setESTADOALTER(""); 
                       codigoalternativa++;                           
                      AlternativaBean            objAlternativaD=new AlternativaBean();
                                                 objAlternativaD.setCODPREG(CODPREG);
                                                 objAlternativaD.setCODALTER(codigoalternativa);
                                                 objAlternativaD.setNUMALTER("4");
                                                 objAlternativaD.setCLAVEALTER("D");
                                                 objAlternativaD.setENUNCIADOALTER(alternativaD);
                                                 objAlternativaD.setIMGALTER("");
                                                 objAlternativaD.setESTADOIMG("");
                                                 objAlternativaD.setESTADOALTER(""); 
                                                 
                                                 
                      codigoalternativa++;                           
                      AlternativaBean            objAlternativaE=new AlternativaBean();
                                                 objAlternativaE.setCODPREG(CODPREG);
                                                 objAlternativaE.setCODALTER(codigoalternativa);
                                                 objAlternativaE.setNUMALTER("5");
                                                 objAlternativaE.setCLAVEALTER("E");
                                                 objAlternativaE.setENUNCIADOALTER(alternativaD);
                                                 objAlternativaE.setIMGALTER("");
                                                 objAlternativaE.setESTADOIMG("");
                                                 objAlternativaE.setESTADOALTER("");                            
                                                 
                                                 listaaternativas.add(objAlternativaA);
                                                 listaaternativas.add(objAlternativaB);
                                                 listaaternativas.add(objAlternativaC);
                                                 listaaternativas.add(objAlternativaD);
                                                 listaaternativas.add(objAlternativaE);
                    if(codigoNivel==1)
                    {   estado=objPreguntaDAO.InsertarPregunta(objPreguntaBean);
                        objAlternatvaDAO.InsertarAlternativas(listaaternativas); 
                    }
                    if(codigoNivel==2)
                    {                 objAyudaDAO=new  AyudaDAO();
                        codigoayuda=  objAyudaDAO.generarCodigo();
                       
                        estado=objPreguntaDAO.InsertarPregunta(objPreguntaBean);
                        objAlternatvaDAO.InsertarAlternativas(listaaternativas); 
                        
                       enunciadoAyudas1=new String(request.getParameter("enunciadoAyudas1").getBytes("ISO-8859-1"), "UTF-8");                      
                       
                        listaAyudas=new ArrayList<AyudaBean>();   
                       codigoayuda++;
                       //System.out.println(codigoayuda);
                       AyudaBean   objAyudaBean1=new  AyudaBean();
                                   objAyudaBean1.setCODPREG(CODPREG);
                                   objAyudaBean1.setCODAYUDA(codigoayuda);
                                   objAyudaBean1.setNUMAYUDA(1);
                                   objAyudaBean1.setENUNCIADOAYUDA(enunciadoAyudas1);                             
                                   objAyudaBean1.setPENALIDADAYUDA(0);
                                   objAyudaBean1.setIMGAYUDA("");                                  
                                   objAyudaBean1.setESTADOINGAYUDA("A");
                                   objAyudaBean1.setESTADOAYUDA("A");
                       codigoayuda++;
                      
                                   listaAyudas.add(objAyudaBean1);
                                 
                                   
                        objAyudaDAO.InsertarAyudas(listaAyudas);
                    }
                    if(codigoNivel==3)
                    {
                       estado=objPreguntaDAO.InsertarPregunta(objPreguntaBean);
                       objAlternatvaDAO.InsertarAlternativas(listaaternativas); 
                       
                       enunciadoAyudas3=new String(request.getParameter("enunciadoAyudas3").getBytes("ISO-8859-1"), "UTF-8");
                       enunciadoAyudas4=new String(request.getParameter("enunciadoAyudas4").getBytes("ISO-8859-1"), "UTF-8");   
                     
                        objAyudaDAO=new  AyudaDAO();
                        codigoayuda=  objAyudaDAO.generarCodigo();
                        
                                   listaAyudas=new ArrayList<AyudaBean>();    
                       codigoayuda++;    
                        System.out.println(codigoayuda);
                       AyudaBean   objAyudaBean3=new  AyudaBean();
                                   objAyudaBean3.setCODPREG(CODPREG);
                                   objAyudaBean3.setCODAYUDA(codigoayuda);
                                   objAyudaBean3.setNUMAYUDA(1);
                                   objAyudaBean3.setENUNCIADOAYUDA(enunciadoAyudas3);
                                   objAyudaBean3.setPENALIDADAYUDA(0);
                                   objAyudaBean3.setIMGAYUDA("");                                  
                                   objAyudaBean3.setESTADOINGAYUDA("A");
                                   objAyudaBean3.setESTADOAYUDA("A");
                       codigoayuda++;  
                        System.out.println(codigoayuda);
                       AyudaBean   objAyudaBean4=new  AyudaBean();
                                   objAyudaBean4.setCODPREG(CODPREG);
                                   objAyudaBean4.setCODAYUDA(codigoayuda);
                                   objAyudaBean4.setNUMAYUDA(2);
                                   objAyudaBean4.setENUNCIADOAYUDA(enunciadoAyudas4);
                                   objAyudaBean4.setPENALIDADAYUDA(0);
                                   objAyudaBean4.setIMGAYUDA("");                                  
                                   objAyudaBean4.setESTADOINGAYUDA("A");
                                   objAyudaBean4.setESTADOAYUDA("A"); 
                                                           
                                   listaAyudas.add(objAyudaBean3);
                                   listaAyudas.add(objAyudaBean4);
                                  
                                   
                       objAyudaDAO.InsertarAyudas(listaAyudas);
                    }     
                    ArrayList  listaPregunta=objPreguntaDAO.ListarPregunta();
                    request.setAttribute("listaPregunta",listaPregunta);
                    getServletContext().getRequestDispatcher("/BancoPreguntas/Pregunta/ExamenTrainig/FrmRegistrarPreguntaxMateriaExamenTraining.jsp").forward(request, response);
                    break;
                }
                case 16 :{
                   
                    
                    String s_codpreg = new String(request.getParameter("CODPREG").getBytes("ISO-8859-1"), "UTF-8");
                    
                    int     codpreg=Integer.parseInt(s_codpreg);
                   
                    PreguntaBean    objPreguntaBean=new PreguntaBean();
                    PreguntaDAO     objPreguntaDAO=new PreguntaDAO();
                    objPreguntaBean = objPreguntaDAO.TraerPregunta(codpreg);
                
                   
                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    ArrayList<CarreraProfesionalBean>  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                    
                    MateriaBean objMateriaBean=new MateriaBean();
                    MateriaDAO  objMateriaDAO=new MateriaDAO();
                    objMateriaBean.setCODCARRERA(objPreguntaBean.getCODCARRERA());
                    ArrayList<MateriaBean>  listaMateria=objMateriaDAO.FiltrarMateria(objMateriaBean);
                    
                    UnidadTematicaBean  objUnidadTematicaBean=new UnidadTematicaBean();
                    UnidadTematicaDAO  objUnidadTematicaDAO=new UnidadTematicaDAO();
                    objUnidadTematicaBean.setCODCARRERA(objPreguntaBean.getCODCARRERA());
                    objUnidadTematicaBean.setCODMATERIA(objPreguntaBean.getCODMATERIA());
                    ArrayList<UnidadTematicaBean>  listaUnidadTematica=objUnidadTematicaDAO.FiltrarUnidadTematica(objUnidadTematicaBean);
                    
                    TemaBean    objTemaBean=new TemaBean();
                    TemaDAO  objTemaDAO=new TemaDAO();
                    objTemaBean.setCODCARRERA(objPreguntaBean.getCODCARRERA());
                    objTemaBean.setCODMATERIA(objPreguntaBean.getCODMATERIA());
                    objTemaBean.setCODUNIDTEMA(objPreguntaBean.getCODUNIDTEMA());
                    ArrayList  listaTema=objTemaDAO.FiltrarTema(objTemaBean);
                    
                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();
                    ArrayList  listaNivelDificultad=objNivelDificultadDAO.ListarNivelDificultad();
                    session.setAttribute("CODPREGUNTA",s_codpreg);
                    request.setAttribute("objPreguntaBean",objPreguntaBean);
                    request.setAttribute("listaMateria",listaMateria);
                    request.setAttribute("listaTema",listaTema);
                    request.setAttribute("listaUnidadTematica",listaUnidadTematica);
                    request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);
                    request.setAttribute("listaNivelDificultad",listaNivelDificultad);
                    getServletContext().getRequestDispatcher("/BancoPreguntas/Pregunta/ExamenTrainig/FrmRegistrarPreguntaxMateriaModificarExamenTraining.jsp").forward(request, response);
                    break;
                }
                case 17 :{
                    String mensaje="";
                 
                    String s_codpreg = new String(request.getParameter("CODPREG").getBytes("ISO-8859-1"), "UTF-8");
                    int codpreg=Integer.parseInt(s_codpreg);
                    String s_codcar=new String(request.getParameter("CODCAR").getBytes("ISO-8859-1"), "UTF-8");;
                    int codcar=Integer.parseInt(s_codcar);
                    String s_codmat=new String(request.getParameter("CODMAT").getBytes("ISO-8859-1"), "UTF-8");;
                    int codmat=Integer.parseInt(s_codmat);
                    String s_coduni=new String(request.getParameter("CODUNID").getBytes("ISO-8859-1"), "UTF-8");;
                    int coduni=Integer.parseInt(s_coduni);
                    String s_codtem=new String(request.getParameter("CODTEMA").getBytes("ISO-8859-1"), "UTF-8");;
                    int codtem=Integer.parseInt(s_codtem);
                    String s_codniv=new String(request.getParameter("CODNIVEL").getBytes("ISO-8859-1"), "UTF-8");;
                    int codniv=Integer.parseInt(s_codniv);
                    String  pregunta=new String(request.getParameter("TXTPREG").getBytes("ISO-8859-1"), "UTF-8");;
                    String s_codaltera=new String(request.getParameter("CODALTERA").getBytes("ISO-8859-1"), "UTF-8");;
                    int codaltera=Integer.parseInt(s_codaltera);
                    String  alternativaA=new String(request.getParameter("alternativaA").getBytes("ISO-8859-1"), "UTF-8");;
                    String s_codalterb=new String(request.getParameter("CODALTERB").getBytes("ISO-8859-1"), "UTF-8");;
                    int codalterb=Integer.parseInt(s_codalterb);
                    String  alternativaB=new String(request.getParameter("alternativaB").getBytes("ISO-8859-1"), "UTF-8");;
                    String s_codalterc=new String(request.getParameter("CODALTERC").getBytes("ISO-8859-1"), "UTF-8");;
                    int codalterc=Integer.parseInt(s_codalterc);
                    String  alternativaC=new String(request.getParameter("alternativaC").getBytes("ISO-8859-1"), "UTF-8");;
                    String s_codalterd=new String(request.getParameter("CODALTERD").getBytes("ISO-8859-1"), "UTF-8");;
                    int codalterd=Integer.parseInt(s_codalterd);
                    String  alternativaD=new String(request.getParameter("alternativaD").getBytes("ISO-8859-1"), "UTF-8");;
                    String  cborespuestaok=new String(request.getParameter("cborespuestaok").getBytes("ISO-8859-1"), "UTF-8");;
                    String  s_codayuda1,s_codayuda2,s_codayuda3;
                    int     codayuda1,codayuda2,codayuda3;
                    String  enunciadoAyudas1,enunciadoAyudas2,enunciadoAyudas3;
                    int estado=0;
                    AyudaDAO    objAyudaDAO=null;
                    ArrayList<AyudaBean>  listaAyudasInsertar=null;
                    ArrayList<AyudaBean>  listaAyudasActualizar=null;
                                        
                    PreguntaBean  objPreguntaBean=new PreguntaBean();
                    objPreguntaBean.setCODPREG(codpreg);
                    objPreguntaBean.setENUNCIADOPREG(pregunta);
                    objPreguntaBean.setRESPUESTAOK(cborespuestaok);
                    objPreguntaBean.setIMAGENPREG("");
                    objPreguntaBean.setESTADOIMGPREG("");
                    objPreguntaBean.setESTADOPREG("A");
                    objPreguntaBean.setCODNIVEL(codniv);
                    objPreguntaBean.setCODCARRERA(codcar);
                    objPreguntaBean.setCODMATERIA(codmat);
                    objPreguntaBean.setCODUNIDTEMA(coduni);
                    objPreguntaBean.setCODTEMA(codtem);
                    
                    PreguntaDAO  objPreguntaDAO=new PreguntaDAO(); 
                      
                    AlternativaDAO objAlternatvaDAO=new AlternativaDAO();            
                    ArrayList<AlternativaBean> listaalternativas=new ArrayList<AlternativaBean>();
                      
                      AlternativaBean            objAlternativaA=new AlternativaBean();                                          
                                                 objAlternativaA.setCODPREG(codpreg);
                                                 objAlternativaA.setCODALTER(codaltera);
                                                 objAlternativaA.setNUMALTER("1");
                                                 objAlternativaA.setCLAVEALTER("A");
                                                 objAlternativaA.setENUNCIADOALTER(alternativaA);
                                                 objAlternativaA.setIMGALTER("");
                                                 objAlternativaA.setESTADOIMG("");
                                                 objAlternativaA.setESTADOALTER("");
                                                 
                      AlternativaBean            objAlternativaB=new AlternativaBean();
                                                 objAlternativaB.setCODPREG(codpreg);
                                                 objAlternativaB.setCODALTER(codalterb);
                                                 objAlternativaB.setNUMALTER("2");
                                                 objAlternativaB.setCLAVEALTER("B");
                                                 objAlternativaB.setENUNCIADOALTER(alternativaB);
                                                 objAlternativaB.setIMGALTER("");
                                                 objAlternativaB.setESTADOIMG("");
                                                 objAlternativaB.setESTADOALTER("");
                                                 
                      AlternativaBean            objAlternativaC=new AlternativaBean();
                                                 objAlternativaC.setCODPREG(codpreg);
                                                 objAlternativaC.setCODALTER(codalterc);
                                                 objAlternativaC.setNUMALTER("3");
                                                 objAlternativaC.setCLAVEALTER("C");
                                                 objAlternativaC.setENUNCIADOALTER(alternativaC);
                                                 objAlternativaC.setIMGALTER("");
                                                 objAlternativaC.setESTADOIMG("");
                                                 objAlternativaC.setESTADOALTER("");
                                                 
                      AlternativaBean            objAlternativaD=new AlternativaBean();
                                                 objAlternativaD.setCODPREG(codpreg);
                                                 objAlternativaD.setCODALTER(codalterd);
                                                 objAlternativaD.setNUMALTER("4");
                                                 objAlternativaD.setCLAVEALTER("D");
                                                 objAlternativaD.setENUNCIADOALTER(alternativaD);
                                                 objAlternativaD.setIMGALTER("");
                                                 objAlternativaD.setESTADOIMG("");
                                                 objAlternativaD.setESTADOALTER(""); 
                      
                                                 listaalternativas.add(objAlternativaA);
                                                 listaalternativas.add(objAlternativaB);
                                                 listaalternativas.add(objAlternativaC);
                                                 listaalternativas.add(objAlternativaD);
                    if(codniv==1) {
                        estado=objPreguntaDAO.ModificarPregunta(objPreguntaBean);
                        objAlternatvaDAO.ModificarAlternativas(listaalternativas); 
                    }
                    if(codniv==2) {
                    objAyudaDAO = new  AyudaDAO();
                        
                        int codigoayuda=  objAyudaDAO.generarCodigo();
                        
                        estado=objPreguntaDAO.ModificarPregunta(objPreguntaBean);
                        objAlternatvaDAO.ModificarAlternativas(listaalternativas); 
                        
                        s_codayuda1=new String(request.getParameter("CODAYUDA1").getBytes("ISO-8859-1"), "UTF-8");
                        codayuda1=Integer.parseInt(s_codayuda1);
                        enunciadoAyudas1=new String(request.getParameter("ayuda1").getBytes("ISO-8859-1"), "UTF-8");
                        s_codayuda2=request.getParameter("CODAYUDA2");
                        codayuda2=Integer.parseInt(s_codayuda2);
                        enunciadoAyudas2=new String(request.getParameter("ayuda2").getBytes("ISO-8859-1"), "UTF-8");

                        listaAyudasInsertar=new ArrayList<AyudaBean>();   
                        listaAyudasActualizar=new ArrayList<AyudaBean>();   
                        
                       AyudaBean   objAyudaBean1=new  AyudaBean();
                                   objAyudaBean1.setCODPREG(codpreg);
                                   objAyudaBean1.setCODAYUDA(codayuda1);
                                   objAyudaBean1.setNUMAYUDA(1);
                                   objAyudaBean1.setENUNCIADOAYUDA(enunciadoAyudas1);
                                   objAyudaBean1.setPENALIDADAYUDA(0);
                                   objAyudaBean1.setIMGAYUDA("");                                  
                                   objAyudaBean1.setESTADOINGAYUDA("A");
                                   objAyudaBean1.setESTADOAYUDA("A");
                       
                                   if (objAyudaBean1.getCODAYUDA() == 0 ){
                                       codigoayuda++;
                                       objAyudaBean1.setCODAYUDA(codigoayuda);
                                       listaAyudasInsertar.add(objAyudaBean1);
                                   }else{
                                       listaAyudasActualizar.add(objAyudaBean1);
                                   }
                                   
                                   
                       AyudaBean   objAyudaBean2=new  AyudaBean();
                                   objAyudaBean2.setCODPREG(codpreg);
                                   objAyudaBean2.setCODAYUDA(codayuda2);
                                   objAyudaBean2.setNUMAYUDA(2);
                                   objAyudaBean2.setENUNCIADOAYUDA(enunciadoAyudas2);
                                   objAyudaBean2.setPENALIDADAYUDA(0);
                                   objAyudaBean2.setIMGAYUDA("");                                  
                                   objAyudaBean2.setESTADOINGAYUDA("A");
                                   objAyudaBean2.setESTADOAYUDA("A");   
                                   
                                   if (objAyudaBean2.getCODAYUDA() == 0 ){
                                       codigoayuda++;
                                       objAyudaBean2.setCODAYUDA(codigoayuda);
                                       listaAyudasInsertar.add(objAyudaBean2);
                                   }else{
                                       listaAyudasActualizar.add(objAyudaBean2);
                                   }
                        
                        objAyudaDAO.InsertarAyudas(listaAyudasInsertar);
                        objAyudaDAO.ModificarAyudas(listaAyudasActualizar);
                      
                    }
                    if(codniv==3)
                    {
                       estado=objPreguntaDAO.ModificarPregunta(objPreguntaBean);
                       objAlternatvaDAO.ModificarAlternativas(listaalternativas); 
                       
                        s_codayuda1=new String(request.getParameter("CODAYUDA1").getBytes("ISO-8859-1"), "UTF-8");
                        codayuda1=Integer.parseInt(s_codayuda1);
                        enunciadoAyudas1=new String(request.getParameter("ayuda1").getBytes("ISO-8859-1"), "UTF-8");
                        s_codayuda2=new String(request.getParameter("CODAYUDA2").getBytes("ISO-8859-1"), "UTF-8");
                        codayuda2=Integer.parseInt(s_codayuda2);
                        enunciadoAyudas2=new String(request.getParameter("ayuda2").getBytes("ISO-8859-1"), "UTF-8");
                        s_codayuda3=new String(request.getParameter("CODAYUDA3").getBytes("ISO-8859-1"), "UTF-8");
                        codayuda3=Integer.parseInt(s_codayuda3);
                        enunciadoAyudas3=new String(request.getParameter("ayuda3").getBytes("ISO-8859-1"), "UTF-8");
                        
                        objAyudaDAO=new  AyudaDAO();
                        
                        int codigoayuda=  objAyudaDAO.generarCodigo();
                        
                        listaAyudasInsertar=new ArrayList<AyudaBean>();   
                        listaAyudasActualizar=new ArrayList<AyudaBean>();   
                                   
                       AyudaBean   objAyudaBean1=new  AyudaBean();
                                   objAyudaBean1.setCODPREG(codpreg);
                                   objAyudaBean1.setCODAYUDA(codayuda1);
                                   objAyudaBean1.setNUMAYUDA(1);
                                   objAyudaBean1.setENUNCIADOAYUDA(enunciadoAyudas1);
                                   objAyudaBean1.setPENALIDADAYUDA(0);
                                   objAyudaBean1.setIMGAYUDA("");                                  
                                   objAyudaBean1.setESTADOINGAYUDA("A");
                                   objAyudaBean1.setESTADOAYUDA("A");
                                   
                                   if (objAyudaBean1.getCODAYUDA() == 0 ){
                                       codigoayuda++;
                                       objAyudaBean1.setCODAYUDA(codigoayuda);
                                       listaAyudasInsertar.add(objAyudaBean1);
                                   }else{
                                       listaAyudasActualizar.add(objAyudaBean1);
                                   }
                                    
                       AyudaBean   objAyudaBean2=new  AyudaBean();
                                   objAyudaBean2.setCODPREG(codpreg);
                                   objAyudaBean2.setCODAYUDA(codayuda2);
                                   objAyudaBean2.setNUMAYUDA(2);
                                   objAyudaBean2.setENUNCIADOAYUDA(enunciadoAyudas2);
                                   objAyudaBean2.setPENALIDADAYUDA(0);
                                   objAyudaBean2.setIMGAYUDA("");
                                   objAyudaBean2.setESTADOINGAYUDA("A");
                                   objAyudaBean2.setESTADOAYUDA("A");
                                   
                                   if (objAyudaBean2.getCODAYUDA() == 0 ){
                                       codigoayuda++;
                                       objAyudaBean2.setCODAYUDA(codigoayuda);
                                       listaAyudasInsertar.add(objAyudaBean2);
                                   }else{
                                       listaAyudasActualizar.add(objAyudaBean2);
                                   }
                                   
                       AyudaBean   objAyudaBean3=new  AyudaBean();
                                   objAyudaBean3.setCODPREG(codpreg);
                                   objAyudaBean3.setCODAYUDA(codayuda3);
                                   objAyudaBean3.setNUMAYUDA(3);
                                   objAyudaBean3.setENUNCIADOAYUDA(enunciadoAyudas3);
                                   objAyudaBean3.setPENALIDADAYUDA(0);
                                   objAyudaBean3.setIMGAYUDA("");
                                   objAyudaBean3.setESTADOINGAYUDA("A");
                                   objAyudaBean3.setESTADOAYUDA("A");                
                                   
                                   if (objAyudaBean3.getCODAYUDA() == 0 ){
                                       codigoayuda++;
                                       objAyudaBean3.setCODAYUDA(codigoayuda);
                                       listaAyudasInsertar.add(objAyudaBean3);
                                   }else{
                                       listaAyudasActualizar.add(objAyudaBean3);
                                   }
                             
                                   objAyudaDAO.InsertarAyudas(listaAyudasInsertar);
                        
                                   objAyudaDAO.ModificarAyudas(listaAyudasActualizar);
                        
                    }     
                    
                    objPreguntaBean = objPreguntaDAO.TraerPregunta(codpreg);
                    
                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    ArrayList<CarreraProfesionalBean>  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                    
                    MateriaBean objMateriaBean=new MateriaBean();
                    MateriaDAO  objMateriaDAO=new MateriaDAO();
                    objMateriaBean.setCODCARRERA(objPreguntaBean.getCODCARRERA());
                    ArrayList<MateriaBean>  listaMateria=objMateriaDAO.FiltrarMateria(objMateriaBean);
                    
                    UnidadTematicaBean  objUnidadTematicaBean=new UnidadTematicaBean();
                    UnidadTematicaDAO  objUnidadTematicaDAO=new UnidadTematicaDAO();
                    objUnidadTematicaBean.setCODCARRERA(objPreguntaBean.getCODCARRERA());
                    objUnidadTematicaBean.setCODMATERIA(objPreguntaBean.getCODMATERIA());
                    ArrayList<UnidadTematicaBean>  listaUnidadTematica=objUnidadTematicaDAO.FiltrarUnidadTematica(objUnidadTematicaBean);
                    
                    TemaBean    objTemaBean=new TemaBean();
                    TemaDAO  objTemaDAO=new TemaDAO();
                    objTemaBean.setCODCARRERA(objPreguntaBean.getCODCARRERA());
                    objTemaBean.setCODMATERIA(objPreguntaBean.getCODMATERIA());
                    objTemaBean.setCODUNIDTEMA(objPreguntaBean.getCODUNIDTEMA());
                    ArrayList  listaTema=objTemaDAO.FiltrarTema(objTemaBean);
                    
                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();
                    ArrayList  listaNivelDificultad=objNivelDificultadDAO.ListarNivelDificultad();
                    
                   /* request.setAttribute("objPreguntaBean",objPreguntaBean);
                    request.setAttribute("listaMateria",listaMateria);
                    request.setAttribute("listaTema",listaTema);
                    request.setAttribute("listaUnidadTematica",listaUnidadTematica);
                    request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);
                    request.setAttribute("listaNivelDificultad",listaNivelDificultad);
                    getServletContext().getRequestDispatcher("/BancoPreguntas/Pregunta/FrmRegistrarPreguntaxMateria.jsp").forward(request, response);
                    */
                    ArrayList  listaPregunta=objPreguntaDAO.ListarPregunta();
                    request.setAttribute("listaPregunta",listaPregunta);
                    getServletContext().getRequestDispatcher("/BancoPreguntas/Pregunta/ExamenTrainig/FrmRegistrarPreguntaxMateriaExamenTraining.jsp").forward(request, response);
                    break;
                }
                case 18 :{
                    break;
                }   
                case 19 :{                
                    String  codcad=new String(request.getParameter("CODPREG").getBytes("ISO-8859-1"), "UTF-8");
                    int   codigo=Integer.parseInt(codcad);
                    
                    AyudaDAO    objAyudaDAO = new AyudaDAO();
                    objAyudaDAO.EliminarAyuda(codigo);
                    
                    AlternativaDAO  objAlternativaDAO = new AlternativaDAO();
                    objAlternativaDAO.EliminarAlternativa(codigo);
                    
                    PreguntaDAO  objPreguntaDAO=new PreguntaDAO();            
                    objPreguntaDAO.EliminarPregunta(codigo);
                    
                    ArrayList  listaPregunta=objPreguntaDAO.ListarPregunta();
                    request.setAttribute("listaPregunta",listaPregunta);
                    getServletContext().getRequestDispatcher("/BancoPreguntas/Pregunta/ExamenTrainig/FrmRegistrarPreguntaxMateriaExamenTraining.jsp").forward(request, response);
                    break;
                }
                case 20:{
                    HttpSession sesion = request.getSession();
                    ArrayList<AlternativaBean> lista = new ArrayList<AlternativaBean>();
                    
                    lista = (ArrayList<AlternativaBean>)sesion.getAttribute("ALTERNATIVAS");
                    String alter = new String(request.getParameter("ALTER").getBytes("ISO-8859-1"), "UTF-8");
                    String clave = new String(request.getParameter("CLAVE").getBytes("ISO-8859-1"), "UTF-8");
                    AlternativaBean objAlternativa = new AlternativaBean();
                    objAlternativa.setENUNCIADOALTER(alter);
                    lista.add(objAlternativa);
                    int i=1;
                    for(AlternativaBean obj:lista){
                        obj.setNUMALTER(Integer.toString(i));
                        i++;
                    }
                    PrintWriter out9 = response.getWriter();
                    out9.println("<table><tr>");
                    out9.println("<th title=\"Alternativa.\">Alt.</th>");
                    out9.println("<th title=\"Descripción.\">Descripción</th>");
                    out9.println("<th title=\"Opción Correcta.\">Opt. Cor.</th>");
                    out9.println("<th title=\"Operación.\">Oper.</th>");
                    out9.println("</tr>");
                    for(AlternativaBean obj:lista){
                        out9.println("<tr><td>"+obj.getNUMALTER()+"</td>");
                        out9.println("<td>"+obj.getENUNCIADOALTER()+"</td>");
                        String checked = " ";
                        if(obj.getNUMALTER() == clave) checked = " checked ";
                        out9.println("<td style=\"text-align: center;\"><input type=\"radio\""+checked+"name=\"rdAlternativa\" value=\""+ obj.getNUMALTER() +"\" /></td>");
                        out9.println("<td><input type=\"button\" value=\"MOD\" onclick=\"modAlternativa();\" title=\"Modificar.\"/>");
                        out9.println("<input type=\"button\" value=\"ELI\" onclick=\"eliAlternativa();\" title=\"Eliminar.\"/></td></tr>");
                    }
                    out9.println("<tr><td>#</td>");
                    out9.println("<td><input type=\"text\" name=\"txtAdiDescAlte\" id=\"txtAdiDescAlte\"/></td>");
                    out9.println("<td style=\"text-align: center;\"><input type=\"radio\" name=\"rdAlternativa\" value=\"n\" disabled=\"true\"/></td>");
                    out9.println("<td><input type=\"button\" value=\"ADI\" onclick=\"adiAlternativa();\" title=\"Adicionar.\"/></td>");
                    out9.println("</tr></table>");
                    sesion.setAttribute("ALTERNATIVAS", lista);
                }
                case 21:{
                    HttpSession sesion = request.getSession();
                    ArrayList<AlternativaBean> lista = new ArrayList<AlternativaBean>();
                    lista = (ArrayList<AlternativaBean>)sesion.getAttribute("ALTERNATIVAS");

                    String alternativa = new String(request.getParameter("ALTER").getBytes("ISO-8859-1"), "UTF-8");
                    AlternativaBean objAlternativa = new AlternativaBean();
                    objAlternativa.setENUNCIADOALTER(alternativa);

                    lista.add(objAlternativa);
                    sesion.setAttribute("ALTERNATIVAS", lista);
                }
                case 22:
                {
                   
                    getServletContext().getRequestDispatcher("/BancoPreguntas/Pregunta/ExamenTrainig/FrmAgregarPreguntaExamenTraining.jsp").forward(request, response); 
                   
                    break;
                }  
                
                
                
                
            }
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