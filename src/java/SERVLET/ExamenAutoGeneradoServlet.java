package SERVLET;

import BEAN.*;
import DAO.EstructuraExamenDAO;
import DAO.ExamenAutoGeneradoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ExamenAutoGeneradoServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session;
        session = request.getSession();
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        if (session.getAttribute("SESION") == null) {
            out.println("1");
        } else {
            String opcad = request.getParameter("op");
            int op = Integer.parseInt(opcad);
            switch (op) {
                case 1: {
                    String codmateriacad = request.getParameter("CODMATERIA");
                    int codmateria = Integer.parseInt(codmateriacad);
                    String codmatriculacad = request.getParameter("CODMATRICULA");
                    int codmatricula = Integer.parseInt(codmatriculacad);
                    String coddetamatricad = request.getParameter("CODDETAMATRI");
                    int coddetamatri = Integer.parseInt(coddetamatricad);
                    
                    ExamenAutoGeneradoBean objExamenAutoGeneradoBean = new ExamenAutoGeneradoBean();
                    objExamenAutoGeneradoBean.setCODMATRICULA(codmatricula);
                    objExamenAutoGeneradoBean.setCODDETAMATRI(coddetamatri);
                    objExamenAutoGeneradoBean.setCODMATERIA(codmateria);
                    ExamenAutoGeneradoDAO objExamenAutoGeneradoDAO = new ExamenAutoGeneradoDAO();
                    
                   //  out.println(" MATRICULA :"+ objExamenAutoGeneradoBean.getCODMATRICULA()+" DETALLE MATRICULA       "+objExamenAutoGeneradoBean.getCODDETAMATRI());
                    ArrayList<ExamenAutoGeneradoBean> listaExamenAutoGenerado = objExamenAutoGeneradoDAO.ListaExamenesGeneradosARendir(objExamenAutoGeneradoBean);
                    request.setAttribute("listaexamenesprogramados", listaExamenAutoGenerado);
                    request.setAttribute("datosmatricula", objExamenAutoGeneradoBean);
                    getServletContext().getRequestDispatcher("/AplicacionExamen/RendirExamen/FrmRendirExamenesProgramados.jsp").forward(request, response);
                    break;
                }
                case 2: {
                    String codmatriculacad, coddetamatricad, CODESTRUCEXAMENCAD, ProgramacionExamen,CODMATERIACAD;
                         
                     codmatriculacad=request.getParameter("CODMATRICULA");                    
                     int CODMATRICULA=Integer.parseInt(codmatriculacad); 
                     
                     coddetamatricad=request.getParameter("CODETAMATRICULA");
                     int CODDETAMATRI=Integer.parseInt(coddetamatricad);  
                     
                     CODESTRUCEXAMENCAD= request.getParameter("CODESTRUCEXAMEN");
                     int      CODESTRUCEXAMEN=Integer.parseInt(CODESTRUCEXAMENCAD); 
                   
                     CODMATERIACAD= request.getParameter("CODMATERIA");                     
                     int CODMATERIA=Integer.parseInt(CODMATERIACAD); 
                    
                    
                    
                    EstructuraExamenDAO vl_EstructuraExamenDAO = new EstructuraExamenDAO(); 
                    EstructuraExamenBean vl_EstructuraExamenBean = vl_EstructuraExamenDAO.BuscarEstructuraExamen(Integer.parseInt(CODMATERIACAD));
                              
                    int tiempo = vl_EstructuraExamenBean.getTiempoMinutos();

                    ExamenAutoGeneradoBean objExamenAutoGeneradoBean = new ExamenAutoGeneradoBean();
                          objExamenAutoGeneradoBean.setCODMATRICULA(CODMATRICULA);
                          objExamenAutoGeneradoBean.setCODDETAMATRI(CODDETAMATRI);
                          objExamenAutoGeneradoBean.setCODMATERIA(CODMATERIA);
                          objExamenAutoGeneradoBean.setCODESTRUCEXAMEN(CODESTRUCEXAMEN);
                          request.setAttribute("datosmatricula", objExamenAutoGeneradoBean);
                      
                    request.setAttribute("tiempo", String.valueOf(tiempo));                   
//                    session.setAttribute("contador1", String.valueOf(1));
                   
                    getServletContext().getRequestDispatcher("/AplicacionExamen/RendirExamen/ExamenSupervisado/FrmRendirExamenSupervisadoInstrucciones.jsp").forward(request, response);
                    break;
                }
                case 3: {
                  int  contador=0;
                     int  CODMATRICULA,CODDETAMATRI;
                     String  codmatriculacad,coddetamatricad;   
                     
                     codmatriculacad=request.getParameter("CODMATRICULA");                    
                     CODMATRICULA=Integer.parseInt(codmatriculacad); 
                     
                     coddetamatricad=request.getParameter("CODDETAMATRI");
                     CODDETAMATRI=Integer.parseInt(coddetamatricad);  
                     
                     String   CODESTRUCEXAMENCAD= request.getParameter("CODESTRUCEXAMEN");
                     int      CODESTRUCEXAMEN=Integer.parseInt(CODESTRUCEXAMENCAD); 
                   
                     String   CODMATERIACAD= request.getParameter("CODMATERIA");                     
                     int CODMATERIA=Integer.parseInt(CODMATERIACAD); 
                     
                     
                     ExamenAutoGeneradoDAO   objExamenAutoGeneradoDAO=new ExamenAutoGeneradoDAO();   
                   
                     ExamenAutoGeneradoBean  	OBJCODEXAMENGENERADO=objExamenAutoGeneradoDAO.ObtenerCodExamenAutoGenerado(CODESTRUCEXAMEN,CODDETAMATRI,CODMATRICULA  );
                     int  CODEXAMENGENERADO=OBJCODEXAMENGENERADO.getCODEXAMENGENERADO();
                                          
                                            
                     ArrayList<DesarrolloExamenGeneradoBean>  listaDesarrolloExamenGeneradoBean=objExamenAutoGeneradoDAO.ListarPreguntasExamenesGeneradosARendir(CODMATRICULA,
                                                                                                                                                                 CODDETAMATRI ,
                                                                                                                                                                 CODESTRUCEXAMEN,
                                                                                                                                                                 CODEXAMENGENERADO);
                
                     DesarrolloExamenGeneradoBean  objCODPREG=(DesarrolloExamenGeneradoBean)listaDesarrolloExamenGeneradoBean.get(contador);
                        
                            
                        int  longitud=listaDesarrolloExamenGeneradoBean.size();
                        int  CODPREGUNTA=objCODPREG.getCODPREG();  
                        int  CODESTRUCTURA1=objCODPREG.getCODESTRUCEXAMEN();
                        int CODNIVEL1=objCODPREG.getCODNIVEL(); 
                        int CODDESARROLLOEXAMGENERADO=objCODPREG.getCODDESARROLLOEXAMGENERADO();
                        int NUMEXAMDESARROLLOGENERADO=objCODPREG.getNUMEXAMDESARROLLOGENERADO();
                        
                      
                        
                       
                        
                        DetalleEstructuraExamenBean  objDetalleEstructuraExamenBean= objExamenAutoGeneradoDAO.ObtenerEstructuraExamen(CODESTRUCTURA1, CODNIVEL1);
                       
                        double   penalidadayuda        =objDetalleEstructuraExamenBean.getPENALIDADAYUDA();
                        double   penalidaderrorpregunta=objDetalleEstructuraExamenBean.getPENALIDADXPREG();
                        int   puntajepregunta=objDetalleEstructuraExamenBean.getPUNTAJEXPREG();
                        
                       DetalleEstructuraExamenBean objdatosexamen=new DetalleEstructuraExamenBean();
                                                   objdatosexamen.setPENALIDADAYUDA(penalidadayuda);
                                                   objdatosexamen.setPENALIDADXPREG(penalidaderrorpregunta);
                                                   objdatosexamen.setPUNTAJEXPREG(puntajepregunta);
                       
                                                  
                                                   
                        
                        ArrayList<AlternativaBean>  listaAlternativa=objExamenAutoGeneradoDAO.ListarAlternativaXPregunta(CODPREGUNTA);                               
                        ArrayList<AyudaBean>  listaAyudas=objExamenAutoGeneradoDAO.ListarAyudasXPregunta(CODPREGUNTA);  
//                        request.setAttribute("datosexamen",objdatosexamen);  
                        request.setAttribute("Alternativa",listaAlternativa);   
                        request.setAttribute("Ayudas",listaAyudas);     
                        
                        
                          ExamenAutoGeneradoBean objExamenAutoGeneradoBean = new ExamenAutoGeneradoBean();
                          objExamenAutoGeneradoBean.setCODMATRICULA(CODMATRICULA);
                          objExamenAutoGeneradoBean.setCODDETAMATRI(CODDETAMATRI);
                          objExamenAutoGeneradoBean.setCODMATERIA(CODMATERIA);
                          objExamenAutoGeneradoBean.setCODESTRUCEXAMEN(CODESTRUCEXAMEN);
                          request.setAttribute("datosmatricula", objExamenAutoGeneradoBean);
                        
                        
//                        request.setAttribute("CODMATRICULA",codmatriculacad);
//                        request.setAttribute("CODETAMATRICULA",coddetamatricad);  
                        
                        
                        request.setAttribute("CODDESARROLLOEXAMGENERADO",String.valueOf(CODDESARROLLOEXAMGENERADO));
                        request.setAttribute("NUMEXAMDESARROLLOGENERADO",String.valueOf(NUMEXAMDESARROLLOGENERADO));  
                        
                        request.setAttribute("listaDesarrolloExamenGenerado",listaDesarrolloExamenGeneradoBean);
                        request.setAttribute("PREGUNTAS",objCODPREG);  
                      
                        contador++;                      
                        session.setAttribute("contador",String.valueOf(contador));
                        request.setAttribute("limite",String.valueOf(longitud));
                       
                        getServletContext().getRequestDispatcher("/AplicacionExamen/RendirExamen/ExamenSupervisado/FrmRendirExamenSupervisado.jsp").forward(request, response); 

                    break;
                }
                case 4: {
                               
                   String  alternativaelegidacad;                         
                        String  penalidadtotalayudascad;
                        double  penalidadtotalayudas = 0;
                        String  RESPUESTAOK = null;
                        String errorpreguntacad;
                        double errorpregunta;  
                        String CODDESARROLLOEXAMGENERADOCAD;
                        int  CODEXAMENGENERADO1 = 0;
                        String NUMEXAMDESARROLLOGENERADOCAD;
                        int  NUMEXAMDESARROLLOGENERADO1 = 0;                   
                        int  CODPREGUNTA = 0;      
                        int  CODESTRUCTURA1 = 0;
                        int CODNIVEL1; 
                        int CODDESARROLLOEXAMGENERADO;
                        int NUMEXAMDESARROLLOGENERADO;                        
                        double   penalidadayuda;
                        double   penalidaderrorpregunta = 0;
                        int  puntajepregunta = 0;                      
                    
                    int  CODMATRICULA,CODDETAMATRI;
                   String  codmatriculacad,coddetamatricad;                   
                   int  contador=Integer.parseInt(session.getAttribute("contador").toString());                     
                   codmatriculacad=request.getParameter("CODMATRICULA");                    
                   CODMATRICULA=Integer.parseInt(codmatriculacad); 
                   coddetamatricad=request.getParameter("CODDETAMATRI");
                   CODDETAMATRI=Integer.parseInt(coddetamatricad);   
                   String   CODESTRUCEXAMENCAD= request.getParameter("CODESTRUCEXAMEN");
                   int      CODESTRUCEXAMEN=Integer.parseInt(CODESTRUCEXAMENCAD);   
                   
                   String   CODMATERIACAD= request.getParameter("CODMATERIA");                     
                    int CODMATERIA=Integer.parseInt(CODMATERIACAD); 
                    
                   
                    
                    
                   
                   ExamenAutoGeneradoDAO   objExamenAutoGeneradoDAO=new ExamenAutoGeneradoDAO();    
                   ExamenAutoGeneradoBean  	OBJCODEXAMENGENERADO=objExamenAutoGeneradoDAO.ObtenerCodExamenAutoGenerado(CODESTRUCEXAMEN,CODDETAMATRI,CODMATRICULA  );
                   int  CODEXAMENGENERADO=OBJCODEXAMENGENERADO.getCODEXAMENGENERADO();
                                           
                   
                   ArrayList<DesarrolloExamenGeneradoBean>  listaDesarrolloExamenGeneradoBean=objExamenAutoGeneradoDAO.ListarPreguntasExamenesGeneradosARendir(CODMATRICULA,
                                                                                                                                                                 CODDETAMATRI ,
                                                                                                                                                                 CODESTRUCEXAMEN,
                                                                                                                                                                 CODEXAMENGENERADO);
                 
                   
                   
                   int  longitud=listaDesarrolloExamenGeneradoBean.size();   
       
                   
                   if((contador+1)<=longitud)
                   {    
                       
                      
                       
                       DesarrolloExamenGeneradoBean  objCODPREG=(DesarrolloExamenGeneradoBean)listaDesarrolloExamenGeneradoBean.get(contador);
                        CODPREGUNTA=objCODPREG.getCODPREG();      
                        CODESTRUCTURA1=objCODPREG.getCODESTRUCEXAMEN();
                        CODNIVEL1=objCODPREG.getCODNIVEL(); 
                        CODDESARROLLOEXAMGENERADO=objCODPREG.getCODDESARROLLOEXAMGENERADO();
                        NUMEXAMDESARROLLOGENERADO=objCODPREG.getNUMEXAMDESARROLLOGENERADO();
                                 
                        
                        
                         
                         
                         
                         
                         
                         
                         
                        DetalleEstructuraExamenBean  objDetalleEstructuraExamenBean= objExamenAutoGeneradoDAO.ObtenerEstructuraExamen(CODESTRUCTURA1, CODNIVEL1);
                        
                        
                        
                        
                        
                        
                        System.out.print("CODIGO PREG : "+CODPREGUNTA+"\n"+
                                 "COD ESTRUCTURA : "+CODESTRUCTURA1+"\n"+
                                 "cod nivel :"+CODNIVEL1+"\n"+
                                 "cod Examen Generado : "+CODDESARROLLOEXAMGENERADO+"\n"+
                                 "Numero Examen Generado : "+NUMEXAMDESARROLLOGENERADO);
                        
                        
                        
                        penalidadayuda        =objDetalleEstructuraExamenBean.getPENALIDADAYUDA();
                        penalidaderrorpregunta=objDetalleEstructuraExamenBean.getPENALIDADXPREG();
                        puntajepregunta=objDetalleEstructuraExamenBean.getPUNTAJEXPREG();
                        DetalleEstructuraExamenBean objdatosexamen=new DetalleEstructuraExamenBean();
                                                   objdatosexamen.setPENALIDADAYUDA(penalidadayuda);
                                                   objdatosexamen.setPENALIDADXPREG(penalidaderrorpregunta);
                                                   objdatosexamen.setPUNTAJEXPREG(puntajepregunta);
                        
                        ArrayList<AlternativaBean>  listaAlternativa=objExamenAutoGeneradoDAO.ListarAlternativaXPregunta(CODPREGUNTA); 
                        ArrayList<AyudaBean>  listaAyudas=objExamenAutoGeneradoDAO.ListarAyudasXPregunta(CODPREGUNTA); 
                        
                        
                        request.setAttribute("Alternativa",listaAlternativa);    
                        request.setAttribute("Ayudas",listaAyudas);     
                        
                        
                          ExamenAutoGeneradoBean objExamenAutoGeneradoBean = new ExamenAutoGeneradoBean();
                          objExamenAutoGeneradoBean.setCODMATRICULA(CODMATRICULA);
                          objExamenAutoGeneradoBean.setCODDETAMATRI(CODDETAMATRI);
                          objExamenAutoGeneradoBean.setCODMATERIA(CODMATERIA);
                          objExamenAutoGeneradoBean.setCODESTRUCEXAMEN(CODESTRUCEXAMEN);
                          request.setAttribute("datosmatricula", objExamenAutoGeneradoBean);
                        
                        
                        
//                        request.setAttribute("CODMATRICULA",codmatriculacad);
//                        request.setAttribute("CODETAMATRICULA",coddetamatricad);  
//                                 
                        request.setAttribute("listaDesarrolloExamenGenerado",listaDesarrolloExamenGeneradoBean);
                        request.setAttribute("PREGUNTAS",objCODPREG);  
                        
                       
                        request.setAttribute("limite",String.valueOf(longitud));            
                        contador++; 
                        session.setAttribute("contador",String.valueOf(contador));            
                       getServletContext().getRequestDispatcher("/AplicacionExamen/RendirExamen/ExamenSupervisado/FrmRendirExamenSupervisado.jsp").forward(request, response);
                     }
                     else
                     {  
                         
                         out.println("Termino!!!!");
                        // ResultadoFinal(request,response,session);      
                     }
                    break;
                }
                case 5: {
//                    int CODMATRICULA;
//                    int CODDETAMATRI;
//
//                    String codmatriculacad;
//                    String coddetamatricad;
//                    String alternativaelegidacad;
//                    String penalidadtotalayudascad;
//                    double penalidadtotalayudas = 0;
//                    String RESPUESTAOK = null;
//                    String errorpreguntacad;
//                    double errorpregunta;
//                    String CODDESARROLLOEXAMGENERADOCAD;
//                    int CODEXAMENGENERADO1 = 0;
//                    String NUMEXAMDESARROLLOGENERADOCAD;
//                    int NUMEXAMDESARROLLOGENERADO1 = 0;
//                    int CODPREGUNTA = 0;
//                    int CODESTRUCTURA1 = 0;
//                    int CODNIVEL1;
//                    int CODDESARROLLOEXAMGENERADO;
//                    int NUMEXAMDESARROLLOGENERADO;
//                    double penalidadayuda;
//                    double penalidaderrorpregunta = 0;
//                    int puntajepregunta = 0;
//                    int contador = Integer.parseInt(session.getAttribute("contador").toString());
//                    
//
//                    codmatriculacad = session.getAttribute("CODMATRICULA").toString();
//                    CODMATRICULA = Integer.parseInt(codmatriculacad);
//                    coddetamatricad = session.getAttribute("CODETAMATRICULA").toString();
//                    CODDETAMATRI = Integer.parseInt(coddetamatricad);
//                    String CODESTRUCEXAMENCAD = session.getAttribute("CODESTRUCEXAMEN").toString();
//                    
//                    int CODESTRUCEXAMEN = Integer.parseInt(CODESTRUCEXAMENCAD);
//                   
//                    ExamenAutoGeneradoDAO objExamenAutoGeneradoDAO = new ExamenAutoGeneradoDAO();
//                    ExamenAutoGeneradoBean OBJCODEXAMENGENERADO = objExamenAutoGeneradoDAO.ObtenerCodExamenAutoGenerado(CODESTRUCEXAMEN, CODDETAMATRI, CODMATRICULA);
//                    int CODEXAMENGENERADO = OBJCODEXAMENGENERADO.getCODEXAMENGENERADO();
//
//                   
//                    alternativaelegidacad = request.getParameter("alternativaelegida");
//                    penalidadtotalayudascad = request.getParameter("penalidadtotalayudas");
//                    RESPUESTAOK = request.getParameter("RESPUESTAOK");
//                    errorpreguntacad = request.getParameter("errorpregunta");
//                    errorpregunta = Double.parseDouble(errorpreguntacad);
//                    CODDESARROLLOEXAMGENERADOCAD = request.getParameter("CODDESARROLLOEXAMGENERADO");
//                    NUMEXAMDESARROLLOGENERADOCAD = request.getParameter("NUMEXAMDESARROLLOGENERADO");
//                    NUMEXAMDESARROLLOGENERADO1 = Integer.parseInt(NUMEXAMDESARROLLOGENERADOCAD);
//                    CODEXAMENGENERADO1 = Integer.parseInt(CODDESARROLLOEXAMGENERADOCAD);
//
//                    DesarrolloExamenGeneradoBean objDesarrolloExamenGeneradoBean = new DesarrolloExamenGeneradoBean();
//                    objDesarrolloExamenGeneradoBean.setCODPREG(CODPREGUNTA);
//                    objDesarrolloExamenGeneradoBean.setRESPUESTAOK(RESPUESTAOK);
//                    objDesarrolloExamenGeneradoBean.setDESCPUNTAJExPREGEERRADA(penalidaderrorpregunta);
//                    objDesarrolloExamenGeneradoBean.setDESCPUNTAJExAYUDAUTIL(penalidadtotalayudas);
//                    objDesarrolloExamenGeneradoBean.setPUNTAJEPREGUNTA(puntajepregunta);
//                    objDesarrolloExamenGeneradoBean.setESTADO("A");
//                    objDesarrolloExamenGeneradoBean.setCODEXAMENGENERADO(CODEXAMENGENERADO);
//                    objDesarrolloExamenGeneradoBean.setCODESTRUCEXAMEN(CODESTRUCTURA1);
//                    objDesarrolloExamenGeneradoBean.setCODDETAMATRI(CODDETAMATRI);
//                    objDesarrolloExamenGeneradoBean.setCODMATRICULA(CODMATRICULA);
//                    objDesarrolloExamenGeneradoBean.setCODDESARROLLOEXAMGENERADO(CODEXAMENGENERADO1);
//                    objDesarrolloExamenGeneradoBean.setNUMEXAMDESARROLLOGENERADO(NUMEXAMDESARROLLOGENERADO1);
//                    objDesarrolloExamenGeneradoBean.setRESPCONTESTADA(alternativaelegidacad);
//                        
//                    objExamenAutoGeneradoDAO.CambiarEstadoExamenes(objDesarrolloExamenGeneradoBean);
                    ResultadoFinal(request, response, session);
                    break;
                }
                case 6: {
                    String enunciado = request.getParameter("enunciado");

                    out.print(enunciado);

                    break;
                }
          // Aqui empezara  el Modulo de Resultado  de los Examenes -------------------------------------------------------------------------------------------------------------
                
              case 7: {
                    String codmateriacad = request.getParameter("CODMATERIA");
                    int codmateria = Integer.parseInt(codmateriacad);
                    String codmatriculacad = request.getParameter("CODMATRICULA");
                    int codmatricula = Integer.parseInt(codmatriculacad);
                    String coddetamatricad = request.getParameter("CODDETAMATRI");
                    int coddetamatri = Integer.parseInt(coddetamatricad);
                    
                    ExamenAutoGeneradoBean objExamenAutoGeneradoBean = new ExamenAutoGeneradoBean();
                    objExamenAutoGeneradoBean.setCODMATRICULA(codmatricula);
                    objExamenAutoGeneradoBean.setCODDETAMATRI(coddetamatri);
                    objExamenAutoGeneradoBean.setCODMATERIA(codmateria);
                    ExamenAutoGeneradoDAO objExamenAutoGeneradoDAO = new ExamenAutoGeneradoDAO();
                    
                   //  out.println(" MATRICULA :"+ objExamenAutoGeneradoBean.getCODMATRICULA()+" DETALLE MATRICULA       "+objExamenAutoGeneradoBean.getCODDETAMATRI());
                    ArrayList<ExamenAutoGeneradoBean> listaExamenAutoGenerado = objExamenAutoGeneradoDAO.ListaExamenesGeneradosARendir(objExamenAutoGeneradoBean);
                    request.setAttribute("listaexamenesprogramados", listaExamenAutoGenerado);
                    request.setAttribute("datosmatricula", objExamenAutoGeneradoBean);
                    getServletContext().getRequestDispatcher("/AplicacionExamen/ResultadoExamen/FrmListarRegistroNotas.jsp").forward(request, response);
                    break;
                } 
                
               case 8: {
                   
                    getServletContext().getRequestDispatcher("/AplicacionExamen/RendirExamen/ExamenTraining/FrmRendirExamenesTrainingProgramados.jsp").forward(request, response);
                    break;
                } 
            }
        }
    }

    public void ResultadoFinal(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws ServletException, IOException {
//        int codmatricula, coddetamatri;
//        String codmatriculacad, coddetamatricad;
//        codmatriculacad = session.getAttribute("CODMATRICULA").toString();
//        codmatricula = Integer.parseInt(codmatriculacad);
//        coddetamatricad = session.getAttribute("CODETAMATRICULA").toString();
//        coddetamatri = Integer.parseInt(coddetamatricad);
//        ExamenAutoGeneradoDAO objExamenAutoGeneradoDAO = new ExamenAutoGeneradoDAO();
//        ProgramarExamenBean objProgramarExamenBean = objExamenAutoGeneradoDAO.ObtenerProgramacionExamen(codmatricula, coddetamatri);
//        int CODPROGRAEXA = objProgramarExamenBean.getCODPROGRAEXA();
//        int CODPROGRAMAT = objProgramarExamenBean.getCODPROGRAMAT();
//        int CODESTRUCEXAMEN = objProgramarExamenBean.getCODESTRUCEXAMEN();
//                  //  objExamenAutoGeneradoDAO.CambiarEstadoExamenesProgramados(CODPROGRAEXA, CODPROGRAMAT, CODESTRUCEXAMEN);                    

        getServletContext().getRequestDispatcher("/AplicacionExamen/RendirExamen/ExamenSupervisado/FrmResultadoExamenSupervisadoRendido.jsp").forward(request, response);

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
