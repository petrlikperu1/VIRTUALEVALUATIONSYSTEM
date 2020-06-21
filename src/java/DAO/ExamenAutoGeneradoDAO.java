

package DAO;
import BEAN.*;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;
import javax.swing.JOptionPane;
public class ExamenAutoGeneradoDAO
{
    Connection                  cn=null;
    PreparedStatement           pt=null;
    ResultSet                   rs=null;
    ArrayList<ExamenAutoGeneradoBean>  listaExamenAutoGenerado=null;
    ArrayList<DesarrolloExamenGeneradoBean>  listaDesarrolloExamenGenerado=null;
    ArrayList<AyudaBean>  listaAyudasxPreguntas=null;
    ArrayList<AlternativaBean>  listaAlternativaxPreguntas=null;
    ArrayList<EstructuraExamenBean>  listaEstructuraExamen=null;
    ArrayList<DetalleEstructuraExamenBean>  listaDetalleEstructuraExamen=null;
    ExamenAutoGeneradoBean             objExamenAutoGeneradoBean=null;
    DesarrolloExamenGeneradoBean       objDesarrolloExamenGeneradoBean1=null;
    AyudaBean           objAyudasBean=null;
    AlternativaBean     objAlternativaBean=null;
    EstructuraExamenBean objEstructuraExamenBean=null   ;
    DetalleEstructuraExamenBean objDetalleEstructuraExamenBean=null;
    ProgramarExamenBean    objProgramarExamenBean=null;
    
    
    
    
    
    
    public int ActualizarExamenAutoGenerado(DesarrolloExamenGeneradoBean objDesarrolloExamenGeneradoBean){
        int estado=0;
        try {
            cn=ConexionBD.getConexionBD();
           /* String  sql="UPDATE desarrolloexamengenerado SET RESPCONTESTADA=?,DESCPUNTAJExPREGEERRADA=?,DESCPUNTAJExAYUDAUTIL=?,PUNTAJEPREGUNTA=? , ESTADO=? " +
                        " WHERE  CODEXAMENGENERADO=?  AND  CODESTRUCEXAMEN=?  AND CODDETAMATRI=?  AND CODMATRICULA=? AND CODDESARROLLOEXAMGENERADO=? AND NUMEXAMDESARROLLOGENERADO=? ;";
           */
               
            String  sql="update detalleexamenautogenerado \n" +
                        "set CLAVERESPCONTESTADA = ?,\n"
                        + "PENALTOTALAYUDAS=?\n" +
                        "WHERE  CODEXAMENGENERADO=?\n" +
                        "AND CODDETEXAMENGENERADO=?;\n";
            
            pt=cn.prepareStatement(sql);
            pt.setString(1, objDesarrolloExamenGeneradoBean.getRESPCONTESTADA());
            pt.setDouble(2, objDesarrolloExamenGeneradoBean.getDESCPUNTAJExAYUDAUTIL()*-1);
            pt.setDouble(3, objDesarrolloExamenGeneradoBean.getCODEXAMENGENERADO());
            pt.setDouble(4, objDesarrolloExamenGeneradoBean.getCODDESARROLLOEXAMGENERADO());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
       return estado;    
    }
    
    
    public ExamenAutoGeneradoBean ObtenerCodExamenAutoGenerado(int  CODESTRUCEXAMEN,int CODDETAMATRI,int CODMATRICULA  ){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("select  CODEXAMENGENERADO from   examenautogenerado  where CODESTRUCEXAMEN=? and CODDETAMATRI=? and CODMATRICULA=? ;");
            pt.setInt(1,CODESTRUCEXAMEN );  
            pt.setInt(2,CODDETAMATRI ); 
            pt.setInt(3,CODMATRICULA );   

            rs=pt.executeQuery();
           
            if(rs.next())
            {     
                objExamenAutoGeneradoBean=new   ExamenAutoGeneradoBean();
                    objExamenAutoGeneradoBean.setCODEXAMENGENERADO(rs.getInt("CODEXAMENGENERADO"));
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e)
        {  System.out.println("hola   :"+e.getMessage());
        }
        return   objExamenAutoGeneradoBean;  
    }      
    
    
    
    
    
     public void CambiarEstadoExamenesProgramados(int  CODPROGRAEXA,
                                                 int   CODPROGRAMAT,
                                                 int  CODESTRUCEXAMEN)
     {
        int estado=0;
        try
        {   cn=ConexionBD.getConexionBD();
            String  sql=" UPDATE  programarexamen SET ESTADO='I' where CODPROGRAEXA=?  and  CODPROGRAMAT=?  and  CODESTRUCEXAMEN=? ;";
            pt=cn.prepareStatement(sql);
            pt.setInt(1, CODPROGRAEXA);
            pt.setInt(2, CODPROGRAMAT);
            pt.setInt(3, CODESTRUCEXAMEN);           
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } 
        catch (Exception e)
        {
        }      
    }
    
    
    public ProgramarExamenBean  ObtenerProgramacionExamen(int  CODMATRICULA,int CODDETAMATRI  ){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT  C.CODPROGRAEXA ,C.CODPROGRAMAT,C.CODESTRUCEXAMEN  from detallematricula as P \n" +
"                    INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT  \n" +
"                     INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT \n" +
"                   INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA \n" +
"                    INNER JOIN estructuraexamen as W ON C.CODESTRUCEXAMEN=W.CODESTRUCEXAMEN \n" +
"                     INNER JOIN tipoexamen as H ON H.CODTIPEXAMEN=W.CODTIPEXAMEN \n" +
"                    INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA  \n" +
"                    INNER JOIN dia as D ON D.CODDIA=C.CODDIA  \n" +
"                    where  P.CODMATRICULA=?  and P.CODDETAMATRI=?;");
            pt.setInt(1,CODMATRICULA );  
            pt.setInt(2,CODDETAMATRI);     
            rs=pt.executeQuery();           
            if(rs.next())
            {    objProgramarExamenBean=new   ProgramarExamenBean();
                 objProgramarExamenBean.setCODPROGRAEXA(rs.getInt("CODPROGRAEXA"));
                 objProgramarExamenBean.setCODPROGRAMAT(rs.getInt("CODPROGRAMAT"));       
                 objProgramarExamenBean.setCODESTRUCEXAMEN(rs.getInt("CODESTRUCEXAMEN"));   
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e)
        {  System.out.println("hola   :"+e.getMessage());
        }
        return   objProgramarExamenBean;  
    }      
    
   public ArrayList<ExamenAutoGeneradoBean> ListaExamenesGeneradosARendir(ExamenAutoGeneradoBean   objExamenAutoGenerado){   
        try{
            cn=ConexionBD.getConexionBD();
//            pt=cn.prepareStatement("SELECT C.CODESTRUCEXAMEN,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,H.NOMBTIPEXAMEN,C.FECHAEJECUCION,D.NOMBDIA,C.HORAINICIO ,C.ESTADO from detallematricula as P "
//                    + " INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT " 
//                    + " INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT "
//                    + " INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA "
//                    + " INNER JOIN estructuraexamen as W ON C.CODESTRUCEXAMEN=W.CODESTRUCEXAMEN "
//                    + " INNER JOIN tipoexamen as H ON H.CODTIPEXAMEN=W.CODTIPEXAMEN " 
//                    + " INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA  " 
//                    + " INNER JOIN dia as D ON D.CODDIA=C.CODDIA  " 
//                    + " where  P.CODMATRICULA=?  and P.CODDETAMATRI=?  ; ");
            
            
             String sql = "  SELECT M.NOMBMATERIA,TE.NOMBTIPEXAMEN,E.FECHAEJECUCION ,E.DIA,E.DIA ,E.HORAINICIO ,C.ESTADO,E.CODESTRUCEXAMEN,C.CODMATERIA "
                     + "FROM `programarexamen` AS E INNER JOIN estructuraexamen as C ON E.CODESTRUCEXAMEN=C.CODESTRUCEXAMEN "
                     + " INNER JOIN carreraprofesional as D ON C.CODCARRERA=D.CODCARRERA "
                     + " INNER JOIN materia as M ON C.CODMATERIA=M.CODMATERIA "
                     + " INNER JOIN semestre as S ON C.CODSEMESTRE=S.CODSEMESTRE "
                     + " INNER JOIN tipoexamen as TE ON C.CODTIPEXAMEN=TE.CODTIPEXAMEN WHERE C.CODMATERIA = ?              ";
            
            
             pt=cn.prepareStatement(sql);
            
            
            
            pt.setInt(1,objExamenAutoGenerado.getCODMATERIA());
          
            rs=pt.executeQuery();
            listaExamenAutoGenerado=new ArrayList<ExamenAutoGeneradoBean>(); 
            while(rs.next()){
                objExamenAutoGeneradoBean=new ExamenAutoGeneradoBean();
//                objExamenAutoGeneradoBean.setCODMATRICULA(rs.getInt("CODMATRICULA"));
//                objExamenAutoGeneradoBean.setCODDETAMATRI(rs.getInt("CODDETAMATRI"));
//                objExamenAutoGeneradoBean.setNOMBMATERIA(rs.getString("NOMBMATERIA"));
//                objExamenAutoGeneradoBean.setNOMBTIPEXAMEN(rs.getString("NOMBTIPEXAMEN")); 
//                objExamenAutoGeneradoBean.setFECHAEJECUCION(rs.getString("FECHAEJECUCION")); 
//                objExamenAutoGeneradoBean.setNOMBDIA(rs.getString("NOMBDIA")); 
//                objExamenAutoGeneradoBean.setHORAINICIO(rs.getString("HORAINICIO")); 
//                objExamenAutoGeneradoBean.setESTADO(rs.getString("ESTADO")); 
//                objExamenAutoGeneradoBean.setCODESTRUCEXAMEN(rs.getInt("CODESTRUCEXAMEN"));

                  objExamenAutoGeneradoBean.setNOMBMATERIA(rs.getString("NOMBMATERIA"));
                   objExamenAutoGeneradoBean.setNOMBTIPEXAMEN(rs.getString("NOMBTIPEXAMEN"));
                    objExamenAutoGeneradoBean.setFECHAEJECUCION(rs.getString("FECHAEJECUCION"));
                         objExamenAutoGeneradoBean.setNOMBDIA(rs.getString("DIA")); 
                           objExamenAutoGeneradoBean.setHORAINICIO(rs.getString("HORAINICIO"));     
                            objExamenAutoGeneradoBean.setESTADO(rs.getString("ESTADO")); 
                            objExamenAutoGeneradoBean.setCODESTRUCEXAMEN(rs.getInt("CODESTRUCEXAMEN")); 
                              objExamenAutoGeneradoBean.setCODMATERIA(rs.getInt("CODMATERIA")); 
//                objExamenAutoGeneradoBean.setCODDETAMATRI(rs.getInt("CODDETAMATRI"));
//                objExamenAutoGeneradoBean.setNOMBMATERIA(rs.getString("NOMBMATERIA"));
//                objExamenAutoGeneradoBean.setNOMBTIPEXAMEN(rs.getString("NOMBTIPEXAMEN")); 
//                objExamenAutoGeneradoBean.setFECHAEJECUCION(rs.getString("FECHAEJECUCION")); 
//                objExamenAutoGeneradoBean.setNOMBDIA(rs.getString("NOMBDIA")); 
//                objExamenAutoGeneradoBean.setHORAINICIO(rs.getString("HORAINICIO")); 
//                objExamenAutoGeneradoBean.setESTADO(rs.getString("ESTADO")); 
//                objExamenAutoGeneradoBean.setCODESTRUCEXAMEN(rs.getInt("CODESTRUCEXAMEN"));




                
                listaExamenAutoGenerado.add(objExamenAutoGeneradoBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
           
        }
        return   listaExamenAutoGenerado;  
    } 
    
    
    
    
//    public ArrayList<ExamenAutoGeneradoBean> ListaExamenesGeneradosARendir(ExamenAutoGeneradoBean   objExamenAutoGenerado){   
//        try{
//            cn=ConexionBD.getConexionBD();
//            pt=cn.prepareStatement("SELECT C.CODESTRUCEXAMEN,"
//                    + "P.CODMATRICULA,"
//                    + "P.CODDETAMATRI,"
//                    + "M.NOMBMATERIA,"
//                    + "H.NOMBTIPEXAMEN,"
//                    + "C.FECHAEJECUCION,"
//                    + "D.NOMBDIA,"
//                    + "C.HORAINICIO ,"
//                    + "IFNULL(EA.ESTADO,'A') AS ESTADO,"
//                    + "C.CODPROGRAEXA,C.estadoProgramarExamen "
//                    + "from detallematricula as P "
//                    + " INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT " 
//                    + " INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT "
//                    + " INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA "
//                    + " INNER JOIN estructuraexamen as W ON C.CODESTRUCEXAMEN=W.CODESTRUCEXAMEN "
//                    + " INNER JOIN tipoexamen as H ON H.CODTIPEXAMEN=W.CODTIPEXAMEN " 
//                    + " INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA  " 
//                    + " INNER JOIN dia as D ON D.CODDIA=C.CODDIA  "
//                    + " LEFT JOIN examenautogenerado AS EA ON EA.CODPROGRAEXA = C.CODPROGRAEXA AND EA.CODDETAMATRI = P.CODDETAMATRI" 
//                    + " where  P.CODMATRICULA=?  and P.CODDETAMATRI=?  ; ");
//            pt.setInt(1,objExamenAutoGenerado.getCODMATRICULA() );
//            pt.setInt(2,objExamenAutoGenerado.getCODDETAMATRI());
//            rs=pt.executeQuery();
//            listaExamenAutoGenerado=new ArrayList<ExamenAutoGeneradoBean>(); 
//            while(rs.next()){
//                objExamenAutoGeneradoBean=new ExamenAutoGeneradoBean();
//                objExamenAutoGeneradoBean.setCODMATRICULA(rs.getInt("CODMATRICULA"));
//                objExamenAutoGeneradoBean.setCODDETAMATRI(rs.getInt("CODDETAMATRI"));
//                objExamenAutoGeneradoBean.setNOMBMATERIA(rs.getString("NOMBMATERIA"));
//                objExamenAutoGeneradoBean.setNOMBTIPEXAMEN(rs.getString("NOMBTIPEXAMEN")); 
//                objExamenAutoGeneradoBean.setFECHAEJECUCION(rs.getString("FECHAEJECUCION")); 
//                objExamenAutoGeneradoBean.setNOMBDIA(rs.getString("NOMBDIA")); 
//                objExamenAutoGeneradoBean.setHORAINICIO(rs.getString("HORAINICIO")); 
//                objExamenAutoGeneradoBean.setESTADO(rs.getString("ESTADO")); 
//                objExamenAutoGeneradoBean.setCODESTRUCEXAMEN(rs.getInt("CODESTRUCEXAMEN"));
//                objExamenAutoGeneradoBean.setCODPROGRAEXA(rs.getInt("CODPROGRAEXA"));
//                objExamenAutoGeneradoBean.setESTADOPROGEXAMEN(rs.getString("estadoProgramarExamen"));
//                
//                listaExamenAutoGenerado.add(objExamenAutoGeneradoBean);           
//            }
//            pt.close();
//            rs.close();
//            cn.close();
//        } catch (Exception e){
//            System.out.println("hola   :"+e.getMessage());
//        }
//        return   listaExamenAutoGenerado;  
//    }
    
    
       public ArrayList<DesarrolloExamenGeneradoBean> ListarPreguntasExamenesGeneradosARendir(int  CODMATRICULA,
                                                                                              int  CODDETAMATRI ,
                                                                                              int  CODESTRUCEXAMEN,
                                                                                              int CODEXAMENGENERADO){   
         try{
            cn=ConexionBD.getConexionBD();
            /*pt=cn.prepareStatement("SELECT P.CODDESARROLLOEXAMGENERADO,P.CODEXAMENGENERADO,N.RESPUESTAOK,P.CODESTRUCEXAMEN,N.CODNIVEL,P.CODMATRICULA,P.CODDETAMATRI,P.NUMEXAMDESARROLLOGENERADO,P.CODPREG,N.ENUNCIADOPREG from desarrolloexamengenerado as P "
                    + " INNER JOIN pregunta as N on N.CODPREG=P.CODPREG where P.CODMATRICULA=? and P.CODDETAMATRI=? and P.CODESTRUCEXAMEN=? and  P.CODEXAMENGENERADO=? and P.ESTADO=? ;");*/
             pt=cn.prepareStatement("SELECT  DEA.CODDETEXAMENGENERADO,\n" +
                                "		DEA.CODEXAMENGENERADO,\n" +
                                "        DEA.CLAVERESPCORRECTA,\n" +
                                "        EA.CODESTRUCEXAMEN,\n" +
                                "        P.CODNIVEL,\n" +
                                "        EA.CODMATRICULA,\n" +
                                "        EA.CODDETAMATRI,\n" +
                                "        DEA.NUMITEMEXAMENGENERADO,\n" +
                                "        P.CODPREG,\n" +
                                "        P.ENUNCIADOPREG,P.ESTADOIMGPREG,P.IMAGENPREG,P.CAPACIDAD\n" +
                                "FROM detalleexamenautogenerado AS DEA \n" +
                                "INNER JOIN examenautogenerado AS EA ON EA.CODEXAMENGENERADO = DEA.CODEXAMENGENERADO\n" +
                                "INNER JOIN pregunta AS P ON P.CODPREG = DEA.CODPREG\n" +
                                "where 	EA.CODMATRICULA=? and \n" +
                                "		EA.CODDETAMATRI=? and \n" +
                                "		EA.CODESTRUCEXAMEN=? and  \n" +
                                "		DEA.CODEXAMENGENERADO=? and \n" +
                                "		DEA.ESTADO=?");
            pt.setInt(1,CODMATRICULA );
            pt.setInt(2,CODDETAMATRI);
            pt.setInt(3,CODESTRUCEXAMEN);
            pt.setInt(4,CODEXAMENGENERADO);
            pt.setString(5,"A");
            rs=pt.executeQuery();
            listaDesarrolloExamenGenerado=new ArrayList<DesarrolloExamenGeneradoBean>(); 
            while(rs.next())
            {   objDesarrolloExamenGeneradoBean1=new  DesarrolloExamenGeneradoBean();
                objDesarrolloExamenGeneradoBean1.setCODESTRUCEXAMEN(rs.getInt("CODESTRUCEXAMEN"));    
                objDesarrolloExamenGeneradoBean1.setCODNIVEL(rs.getInt("CODNIVEL"));          
                objDesarrolloExamenGeneradoBean1.setCODMATRICULA(rs.getInt("CODMATRICULA"));
                objDesarrolloExamenGeneradoBean1.setCODDETAMATRI(rs.getInt("CODDETAMATRI"));
                objDesarrolloExamenGeneradoBean1.setCODPREG(rs.getInt("CODPREG"));                
                objDesarrolloExamenGeneradoBean1.setENUNCIADOPREG(rs.getString("ENUNCIADOPREG"));
                objDesarrolloExamenGeneradoBean1.setRESPUESTAOK(rs.getString("CLAVERESPCORRECTA"));
                objDesarrolloExamenGeneradoBean1.setCODEXAMENGENERADO(rs.getInt("CODEXAMENGENERADO"));
                objDesarrolloExamenGeneradoBean1.setCODDESARROLLOEXAMGENERADO(rs.getInt("CODDETEXAMENGENERADO"));
                objDesarrolloExamenGeneradoBean1.setNUMEXAMDESARROLLOGENERADO(rs.getInt("NUMITEMEXAMENGENERADO"));
                objDesarrolloExamenGeneradoBean1.setESTADOIMGPREG(rs.getString("ESTADOIMGPREG"));
                objDesarrolloExamenGeneradoBean1.setIMAGENPREG(rs.getString("IMAGENPREG"));
                 objDesarrolloExamenGeneradoBean1.setCAPACIDAD(rs.getString("CAPACIDAD"));
                listaDesarrolloExamenGenerado.add(objDesarrolloExamenGeneradoBean1);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e)
        { 
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
        return   listaDesarrolloExamenGenerado;  
    }
       
    public DetalleEstructuraExamenBean ObtenerEstructuraExamen(int  CODESTRUCEXAMEN,int CODNIVEL  ){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("select  *    from   detalleestructuraexamen  where CODESTRUCEXAMEN=? and CODNIVEL=? ;");
            pt.setInt(1,CODESTRUCEXAMEN );  
            pt.setInt(2,CODNIVEL );           

            rs=pt.executeQuery();
           
            if(rs.next())
            {    objDetalleEstructuraExamenBean=new   DetalleEstructuraExamenBean();
                 objDetalleEstructuraExamenBean.setCODESTRUCEXAMEN(rs.getInt("CODESTRUCEXAMEN"));
                 objDetalleEstructuraExamenBean.setCODDETAESTRUCEXAMEN(rs.getInt("CODDETAESCTRUCEXA"));
                 objDetalleEstructuraExamenBean.setNUMITEM(rs.getInt("NUMITEM")); 
                 objDetalleEstructuraExamenBean.setCODNIVEL(rs.getInt("CODNIVEL"));       
                   objDetalleEstructuraExamenBean.setCANTPREG(rs.getInt("CANTPREG"));   
                     objDetalleEstructuraExamenBean.setPUNTAJEXPREG(rs.getInt("PUNTAJEXPREG"));   
                       objDetalleEstructuraExamenBean.setTIEMPOXPREG(rs.getInt("TIEMPOXPREG"));                      
                 objDetalleEstructuraExamenBean.setPENALIDADXPREG(rs.getInt("PENALIDADXPREG"));  
                 objDetalleEstructuraExamenBean.setPENALIDADAYUDA(rs.getInt("PENALIDADAYUDA")); 
                 System.out.println("OKKOKKKKKKKK"+rs.getInt("TIEMPOXPREG"));
                      
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e)
        {  System.out.println("hola   :"+e.getMessage());
        }
        return   objDetalleEstructuraExamenBean;  
    }      
       
       
       
     public ArrayList<AlternativaBean> ListarAlternativaXPregunta(int  CODPREG ){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("select  *    from   alternativa  where CODPREG=? ;");
            pt.setInt(1,CODPREG );           
            rs=pt.executeQuery();
            listaAlternativaxPreguntas=new ArrayList<AlternativaBean>(); 
            while(rs.next())
            {    objAlternativaBean=new   AlternativaBean();
                 objAlternativaBean.setCODPREG(rs.getInt("CODPREG"));
                 objAlternativaBean.setCODALTER(rs.getInt("CODALTER"));
                 objAlternativaBean.setNUMALTER(rs.getString("NUMALTER")); 
                 objAlternativaBean.setCLAVEALTER(rs.getString("CLAVEALTER"));                  
                 objAlternativaBean.setENUNCIADOALTER(rs.getString("ENUNCIADOALTER"));                    
                 listaAlternativaxPreguntas.add(objAlternativaBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e)
        {  System.out.println("hola   :"+e.getMessage());
        }
        return   listaAlternativaxPreguntas;  
    }  
       
       
    public ArrayList<AyudaBean> ListarAyudasXPregunta(int  CODPREG ){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("select  *    from   Ayudas  where CODPREG=? ;");
            pt.setInt(1,CODPREG );           
            rs=pt.executeQuery();
            listaAyudasxPreguntas=new ArrayList<AyudaBean>(); 
            while(rs.next())
            {    objAyudasBean=new   AyudaBean();
                 objAyudasBean.setCODPREG(rs.getInt("CODPREG"));
                 objAyudasBean.setCODAYUDA(rs.getInt("CODAYUDA"));
                 objAyudasBean.setNUMAYUDA(rs.getInt("NUMAYUDA"));               
                 objAyudasBean.setENUNCIADOAYUDA(rs.getString("ENUNCIADOAYUDA"));                    
                 listaAyudasxPreguntas.add(objAyudasBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e)
        {  System.out.println("hola   :"+e.getMessage());
        }
        return   listaAyudasxPreguntas;  
    }

    public void CambiarEstadoExamenes(DesarrolloExamenGeneradoBean objDesarrolloExamenGeneradoBean) {
        int estado=0;
        try
        {   
            cn=ConexionBD.getConexionBD();
            String sqlPuntajesPregunta = "update detalleexamenautogenerado set PUNTAJECALCULADO = CASE  WHEN CLAVERESPCONTESTADA = CLAVERESPCORRECTA THEN PUNTAJEPREG + PENALTOTALAYUDAS\n" +
                                                        "			  ELSE (PENALPREGERRADA * -1)+ PENALTOTALAYUDAS\n" +
                                                        "		    END\n"+
                                     " where CODEXAMENGENERADO=?;";
                
            String  sql=" UPDATE  examenautogenerado SET ESTADO='I',\n"
                                                     + " NotaExamen = (select case  when sum(PUNTAJECALCULADO) < 0 then 0\n" +
"										     else sum(PUNTAJECALCULADO) \n" +
"                                                                                    end\n" +
"									from detalleexamenautogenerado\n" +
"                                                                       where CODEXAMENGENERADO = ?\n" +
"                                                                       )"
                      + " where CODEXAMENGENERADO=?;";
            pt=cn.prepareStatement(sqlPuntajesPregunta);
            pt.setInt(1, objDesarrolloExamenGeneradoBean.getCODEXAMENGENERADO());
            estado= pt.executeUpdate();
            pt.close();
            
            pt=cn.prepareStatement(sql);
            pt.setInt(1, objDesarrolloExamenGeneradoBean.getCODEXAMENGENERADO());
            pt.setInt(2, objDesarrolloExamenGeneradoBean.getCODEXAMENGENERADO());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();

        } 
        catch (Exception e)
        {
        }   
    }

    public ArrayList<ExamenAutoGeneradoBean> getListExamenesGenerados(ProgramacionExamenBean vlProgramacionExamenBean) {
         try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT EAG.CODEXAMENGENERADO,\n" +
                                    "	   EAG.CODPROGRAEXA,\n" +
                                    "	   PM.CODSEMESTRE,\n" +
                                    "       PM.CODCARRERA,\n" +
                                    "       PM.CODMATERIA,\n" +
                                    "       MA.CODALU,\n" +
                                    "       S.NOMBSEMESTRE,\n" +
                                    "       CP.NOMBCARRERA,\n" +
                                    "       M.NOMBMATERIA,\n" +
                                    "       concat(ALUM.NOMBALU,'',ALUM.APEPATERALU) AS NOMBREALUMNO,\n" +
                                    "       EAG.NotaExamen,\n " +
                                    "CASE WHEN EAG.ESTADO = 'I' THEN 'Examen Terminado'\n" +
                                    "                   	ELSE 'Rindiendo Examen'\n" +
                                    "	  end AS ESTADO\n" +
                                    "FROM examenautogenerado AS EAG \n" +
                                    "INNER JOIN programarexamen AS PE ON PE.CODPROGRAEXA = EAG.CODPROGRAEXA \n" +
                                    "INNER JOIN programacionmateria AS PM ON PM.CODPROGRAMAT = PE.CODPROGRAMAT\n" +
                                    "INNER JOIN carreraprofesional AS CP ON CP.CODCARRERA = PM.CODCARRERA\n" +
                                    "INNER JOIN semestre AS S ON S.CODSEMESTRE = PM.CODSEMESTRE\n" +
                                    "INNER JOIN materia AS M ON M.CODMATERIA = PM.CODMATERIA\n" +
                                    "INNER JOIN detallematricula AS DM ON DM.CODDETAMATRI = EAG.CODDETAMATRI\n" +
                                    "INNER JOIN matricula AS MA ON MA.CODMATRICULA = DM.CODMATRICULA\n" +
                                    "INNER JOIN alumno AS ALUM ON ALUM.CODALU = MA.CODALU \n" +
                                    "where PE.CODPROGRAEXA=?");
            pt.setInt(1,vlProgramacionExamenBean.getCODPROGEXAMEN() );           
            rs=pt.executeQuery();
            listaExamenAutoGenerado=new ArrayList<ExamenAutoGeneradoBean>(); 
            while(rs.next())
            {    objExamenAutoGeneradoBean=new   ExamenAutoGeneradoBean();
                 objExamenAutoGeneradoBean.setCODEXAMENGENERADO(rs.getInt("CODEXAMENGENERADO"));
                 objExamenAutoGeneradoBean.setCODPROGRAEXA(rs.getInt("CODPROGRAEXA"));
                 objExamenAutoGeneradoBean.setCODMATERIA(rs.getInt("CODMATERIA"));
                 objExamenAutoGeneradoBean.setNOMBSEMESTRE(rs.getString("NOMBSEMESTRE"));                    
                 objExamenAutoGeneradoBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));                    
                 objExamenAutoGeneradoBean.setNOMBMATERIA(rs.getString("NOMBMATERIA"));                    
                 objExamenAutoGeneradoBean.setNOMBALUMN(rs.getString("NOMBREALUMNO")); 
                 objExamenAutoGeneradoBean.setNotaExamen(rs.getDouble("NotaExamen"));
                 objExamenAutoGeneradoBean.setESTADO(rs.getString("ESTADO"));
                 listaExamenAutoGenerado.add(objExamenAutoGeneradoBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e)
        {  System.out.println("hola   :"+e.getMessage());
        }
        return   listaExamenAutoGenerado;  
    }
    
}
