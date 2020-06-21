package DAO;
import BEAN.Alternativa;
import BEAN.AuxBean;
import BEAN.AyudaBean;
import BEAN.DetalleEstructuraExamenBean;
import BEAN.EstructuraExamenBean;
import BEAN.LaboratorioBean;
import BEAN.PreguntaBean;
import BEAN.ProgramacionExamenxSupervisorBean;
import BEAN.RendirExamenBean;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;

public class RendirExamenDAO {
    Connection                  cn=null;
    PreparedStatement           pt=null;
    ResultSet                   rs=null;
    ArrayList<RendirExamenBean>  lista=null;
    
    RendirExamenBean             objRendirExamenBean=null;
    

    public ArrayList<RendirExamenBean> ObtenerExamenesaRendir(int codalu){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT eg.IDNUMEXAMGENERADO, eg.CODALUXMATEXPROGXEXAM, m.NOMBMATERIA, d.NOMBDIA, hl.HORAINICIO, hl.HORAFIN, eg.ESTADOEXAMENRENDIDO FROM alumnoxmateriaxprogramacionexam as ampe\n" +
                "inner join alumnoxmateria as am ON am.CODMATRICULA=ampe.CODMATRICULA\n" +
                "inner join alumno as a ON a.CODALU=am.CODALU\n" +
                "inner join examengenerado as eg ON eg.CODALUXMATEXPROGXEXAM=ampe.CODALUXMATEXPROGXEXAM\n" +
                "inner join programacionexamen as pe ON pe.CODPROGEXAMEN=ampe.CODPROGEXAMEN\n" +
                "inner join estructuraexamen as e ON e.CODESTRUCEXAMEN=pe.CODESTRUCEXAMEN\n" +
                "inner join materia as m ON m.CODMATERIA=e.CODMATERIA\n" +
                "inner join horariodelaboratoriodisponibles as hl ON hl.CODHORARIOLAB=pe.CODHORARIOLAB\n" +
                "inner join dia as d ON d.CODDIA=hl.CODDIA\n" +
                "where a.CODALU=? and e.ESTADOEXAMEN='G';");
            pt.setInt(1,codalu);
            rs=pt.executeQuery();
            lista=new ArrayList<RendirExamenBean>(); 
            while(rs.next()){
                objRendirExamenBean=new RendirExamenBean();
                objRendirExamenBean.setIDNUMEXAMRENDIDO(rs.getInt(1));
                objRendirExamenBean.setCODALUXMATEXPROGXEXAM(rs.getInt(2));
                objRendirExamenBean.setNOMBMATERIA(rs.getString(3));
                objRendirExamenBean.setNOMBDIA(rs.getString(4));
                objRendirExamenBean.setHORAINICIO(rs.getString(5));
                objRendirExamenBean.setHORAFIN(rs.getString(6));
                objRendirExamenBean.setESTADOEXAMENRENDIDO(rs.getString(7));

                lista.add(objRendirExamenBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
    
    public ArrayList<PreguntaBean> ListarPreguntasExamen(int numid,int codaluexam){   
        ArrayList<PreguntaBean> lista = new ArrayList<PreguntaBean>();
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("select deg.CODPREG, p.ENUNCIADOPREG, p.PUNTAJEPREG, p.PENALIDADPREG, p.TIEMPOPREG from detaexamengenerado as deg\n" +
                "inner join pregunta as p ON p.CODPREG=deg.CODPREG\n" +
                "where deg.IDNUMEXAMGENERADO=? and deg.CODALUXMATEXPROGXEXAM=?;");
            pt.setInt(1,numid);
            pt.setInt(2,codaluexam);
            rs=pt.executeQuery();
            
            while(rs.next()){
                PreguntaBean objPreguntaBean=new PreguntaBean();
                objPreguntaBean.setCODPREG(rs.getInt(1));
                objPreguntaBean.setENUNCIADOPREG(rs.getString(2));
                objPreguntaBean.setPUNTAJEPREG(rs.getInt(3));
                objPreguntaBean.setPENALIDADPREG(rs.getInt(4));
                objPreguntaBean.setTIEMPOPREG(rs.getInt(5));
                
                lista.add(objPreguntaBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
    
    public ArrayList<Alternativa> ObtenerAlternativas(int codpreg){   
        ArrayList<Alternativa> lista = new ArrayList<Alternativa>();
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("select NUMALTER, ENUNCIADOALTER, CLAVEALTER from alternativa\n" +
                "where CODPREG=?;");
            pt.setInt(1,codpreg);
            rs=pt.executeQuery();
            
            while(rs.next()){
                Alternativa objAlternativa=new Alternativa();
                objAlternativa.setNumero(rs.getInt(1));
                objAlternativa.setAlternativa(rs.getString(2));
                objAlternativa.setClave(rs.getString(3));
                
                lista.add(objAlternativa);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
    
    public Alternativa ObtenerClaveAlternativa(int codpreg, int respuesta){   
        Alternativa objAlternativa = new Alternativa();
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT CLAVEALTER,ENUNCIADOALTER FROM alternativa where CODPREG=? and NUMALTER=?;");
            pt.setInt(1,codpreg);
            pt.setInt(2,respuesta);
            rs=pt.executeQuery();
            
            while(rs.next()){
                
                //objAlternativa.setNumero(rs.getInt(1));
                //objAlternativa.setAlternativa(rs.getString(2));
                objAlternativa.setClave(rs.getString(1));
                objAlternativa.setAlternativa(rs.getString(2));
       
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  objAlternativa;  
    }
    
    public ArrayList<AyudaBean> ObtenerAyudas(int codpreg){   
        ArrayList<AyudaBean> lista = new ArrayList<AyudaBean>();
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("select ENUNCIADOAYUDA, PENALIDADAYUDA,NUMAYUDA from ayudas\n" +
                "where CODPREG=?;");
            pt.setInt(1,codpreg);
            rs=pt.executeQuery();
            
            while(rs.next()){
                AyudaBean objAyudaBean=new AyudaBean();
                objAyudaBean.setENUNCIADOAYUDA(rs.getString(1));
                objAyudaBean.setPENALIDADAYUDA2(rs.getInt(2));
                objAyudaBean.setNUMAYUDA(rs.getInt(3));
                
                lista.add(objAyudaBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
    
    public AyudaBean  ObtenerAyuda(int numayuda, int codpreg)
    {    
      AyudaBean objAyudaBean=new AyudaBean();
      try 
      {
       cn=ConexionBD.getConexionBD();
       pt=cn.prepareStatement("select ENUNCIADOAYUDA, PENALIDADAYUDA  from ayudas where NUMAYUDA=? and CODPREG=? ;");
       pt.setInt(1,numayuda);
       pt.setInt(2,codpreg);
       rs=pt.executeQuery();
        
       while(rs.next())
       {
        objAyudaBean.setENUNCIADOAYUDA(rs.getString(1));
        objAyudaBean.setPENALIDADAYUDA2(rs.getInt(2));
           
       }
       pt.close();
       rs.close();
       cn.close();
          
      } catch (Exception e) 
      {
      }
    return  objAyudaBean;  
  }
    
    public ArrayList<DetalleEstructuraExamenBean> ObtenerCantidadPreguntas(int codestrucexamen){   
        ArrayList<DetalleEstructuraExamenBean> lista = new ArrayList<DetalleEstructuraExamenBean>();
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT de.CODNIVEL, sum(de.CANTPREG) as CANTPREG FROM  estructuraexamen as e\n" +
                "inner join detalleestructuraexamen as de ON de.CODESTRUCEXAMEN=e.CODESTRUCEXAMEN\n" +
                "where e.CODESTRUCEXAMEN=? group by de.CODNIVEL;");
            pt.setInt(1,codestrucexamen);

            rs=pt.executeQuery();
            
            while(rs.next()){
                DetalleEstructuraExamenBean objDetalleBean=new DetalleEstructuraExamenBean();
                objDetalleBean.setCODESTRUCEXAMEN(codestrucexamen);
                objDetalleBean.setCODNIVEL(rs.getInt(1));
                objDetalleBean.setCANTPREG(rs.getInt(2));

                lista.add(objDetalleBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
    
    public EstructuraExamenBean ObtenerEstructuraExamen(int codestrucexamen){   
        EstructuraExamenBean objEstructuraExamenBean=new EstructuraExamenBean();
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("select CODESTRUCEXAMEN, CODCARRERA, CODMATERIA, CODUNIDAD, CODTEMA from estructuraexamen\n" +
                "WHERE CODESTRUCEXAMEN=?;");
            pt.setInt(1,codestrucexamen);

            rs=pt.executeQuery();
            
            while(rs.next()){
                
                objEstructuraExamenBean.setCODESTRUCEXAMEN(codestrucexamen);
                objEstructuraExamenBean.setCODCARRERA(rs.getInt(2));
                objEstructuraExamenBean.setCODMATERIA(rs.getInt(3));
                objEstructuraExamenBean.setCODUNIDTEMA(rs.getInt(4));
                objEstructuraExamenBean.setCODTEMA(rs.getInt(5));
                        
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  objEstructuraExamenBean;  
    }
    
    public ArrayList<PreguntaBean> ObtenerPreguntas(int codnivel, int cantpreg, EstructuraExamenBean objEstructuraExamenBean){   
        ArrayList<PreguntaBean> listaPreguntas=new ArrayList<PreguntaBean>();
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT CODPREG FROM pregunta\n" +
                "where CODNIVEL=? and CODCARRERA=? and CODMATERIA=? and CODUNIDTEMA=? and CODTEMA=?\n" +
                "limit ?;");
            pt.setInt(1,codnivel);
            pt.setInt(2,objEstructuraExamenBean.getCODCARRERA());
            pt.setInt(3,objEstructuraExamenBean.getCODMATERIA());
            pt.setInt(4,objEstructuraExamenBean.getCODUNIDTEMA());
            pt.setInt(5,objEstructuraExamenBean.getCODTEMA());
            pt.setInt(6,cantpreg);

            rs=pt.executeQuery();
            
            while(rs.next()){
                PreguntaBean objPregunta = new PreguntaBean();
                objPregunta.setCODPREG(rs.getInt(1));

                listaPreguntas.add(objPregunta);        
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  listaPreguntas;  
    }
    
    public ArrayList<Integer> ObtenerAlumnosEnExamen(int codestrucexamen){   
        ArrayList<Integer> listaCod=new ArrayList<Integer>();
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("select  distinct ampe.CODALUXMATEXPROGXEXAM from programacionexamen as pe\n" +
                "inner join alumnoxmateriaxprogramacionexam as ampe ON ampe.CODPROGEXAMEN=pe.CODPROGEXAMEN\n" +
                "where pe.CODESTRUCEXAMEN=?;");
            pt.setInt(1,codestrucexamen);

            rs=pt.executeQuery();
            
            while(rs.next()){
                int Codigo  = rs.getInt(1);

                listaCod.add(Codigo);        
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  listaCod;  
    }
    
    public int InsertarResultadoExamen(int idnum,int codaluexam,int codpreg, String enunciado,int puntaje){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("INSERT INTO resultadoexamengenerado(EXAMENGENERADO_IDNUMEXAMGENERADO,EXAMENGENERADO_CODALUXMATEXPROGXEXAM,CODPREG,RESPPREGUNTA,PUNTAJEPREGUNTA) VALUES (?,?,?,?,?);");
            pt.setInt(1, idnum);
            pt.setInt(2, codaluexam);
            pt.setInt(3, codpreg);
            pt.setString(4, enunciado);
            pt.setInt(5, puntaje);
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return estado;    
    }
    
    public int CambiarEstadoExamen(int idnum,int codaluexam){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("UPDATE examengenerado SET ESTADOEXAMENRENDIDO='R' WHERE IDNUMEXAMGENERADO=? and CODALUXMATEXPROGXEXAM=? ;");
            pt.setInt(1, idnum);
            pt.setInt(2, codaluexam);
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return estado;    
    }
    
    public int InsertarExamenGenerado(int cod){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("INSERT INTO examengenerado(CODALUXMATEXPROGXEXAM) VALUES (?);");
            pt.setInt(1, cod);

            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return estado;    
    }
    
    public AuxBean ObtenerExamenGenerado(int codalu){   
        AuxBean objAuxBean=new AuxBean();
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT IDNUMEXAMGENERADO,CODALUXMATEXPROGXEXAM FROM examengenerado \n" +
                "WHERE CODALUXMATEXPROGXEXAM=? ;");
            pt.setInt(1,codalu);

            rs=pt.executeQuery();
            
            while(rs.next()){
                objAuxBean.setIDNUM(rs.getInt(1));
                objAuxBean.setCODALU(rs.getInt(2));

            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  objAuxBean;  
    }
    
    public int InsertarDetaExamenGenerado(AuxBean objAuxBean,int codpreg){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("INSERT INTO detaexamengenerado(IDNUMEXAMGENERADO,CODALUXMATEXPROGXEXAM,CODPREG) VALUES (?,?,?);");
            pt.setInt(1, objAuxBean.getIDNUM());
            pt.setInt(2, objAuxBean.getCODALU());
            pt.setInt(3, codpreg);

            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return estado;    
    }
    
    public int CambiarEstadoExamen(int codestrucexamen){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("UPDATE estructuraexamen SET ESTADOEXAMEN='G' WHERE CODESTRUCEXAMEN=?;");
            pt.setInt(1, codestrucexamen);

            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return estado;    
    }
    
    /*public ProgramacionExamenBean FiltrarProgramacionExamen(String check){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT p.CODPROGHORARIO,p.CODPROGEXAMEN,p.CODESTRUCEXAMEN,p.CODHORARIOLAB,h.HORAINICIO,h.HORAFIN,l.DESCRIPLAB, d.NOMBDIA,p.ESTADO FROM programacionexamen p\n" +
                "INNER JOIN horariodelaboratoriodisponibles as h ON h.CODHORARIOLAB=p.CODHORARIOLAB\n" +
                "INNER JOIN laboratorio as l ON l.CODLAB=h.CODLAB\n" +
                "INNER JOIN dia as d ON d.CODDIA=h.CODDIA\n" +
                "WHERE p.ESTADO='A' and p.CODPROGEXAMEN=?;");
            int codProgExamen = Integer.parseInt(check);
            pt.setInt(1,codProgExamen);
            
            rs=pt.executeQuery();
            lista=new ArrayList<ProgramacionExamenBean>(); 
            while(rs.next()){
                objProgramacionExamenBean=new ProgramacionExamenBean();
                objProgramacionExamenBean.setCODPROGEXAMEN(rs.getInt(2));
                objProgramacionExamenBean.setCODESTRUCEXAMEN(rs.getInt(3));
                objProgramacionExamenBean.setCODHORARIOLAB(rs.getInt(4));
                objProgramacionExamenBean.setHORAINICIO(rs.getString(5));
                objProgramacionExamenBean.setHORAFIN(rs.getString(6));
                objProgramacionExamenBean.setDESCRIPLAB(rs.getString(7));
                objProgramacionExamenBean.setNOMBDIA(rs.getString(8));
                objProgramacionExamenBean.setESTADO(rs.getString(9));

                //lista.add(objProgramacionExamenBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  objProgramacionExamenBean;  
    }*/
    
    /*public ProgramacionExamenBean FiltrarProgramacionExamen2(String check){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT p.CODPROGHORARIO,p.CODPROGEXAMEN,p.CODESTRUCEXAMEN,p.CODHORARIOLAB,h.HORAINICIO,h.HORAFIN,l.DESCRIPLAB, d.NOMBDIA,p.ESTADO FROM programacionexamen p\n" +
                "INNER JOIN horariodelaboratoriodisponibles as h ON h.CODHORARIOLAB=p.CODHORARIOLAB\n" +
                "INNER JOIN laboratorio as l ON l.CODLAB=h.CODLAB\n" +
                "INNER JOIN dia as d ON d.CODDIA=h.CODDIA\n" +
                "WHERE p.CODPROGEXAMEN=?;");
            int codProgExamen = Integer.parseInt(check);
            pt.setInt(1,codProgExamen);
            
            rs=pt.executeQuery();
            lista=new ArrayList<ProgramacionExamenBean>(); 
            while(rs.next()){
                objProgramacionExamenBean=new ProgramacionExamenBean();
                objProgramacionExamenBean.setCODPROGEXAMEN(rs.getInt(2));
                objProgramacionExamenBean.setCODESTRUCEXAMEN(rs.getInt(3));
                objProgramacionExamenBean.setCODHORARIOLAB(rs.getInt(4));
                objProgramacionExamenBean.setHORAINICIO(rs.getString(5));
                objProgramacionExamenBean.setHORAFIN(rs.getString(6));
                objProgramacionExamenBean.setDESCRIPLAB(rs.getString(7));
                objProgramacionExamenBean.setNOMBDIA(rs.getString(8));
                objProgramacionExamenBean.setESTADO(rs.getString(9));

                //lista.add(objProgramacionExamenBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  objProgramacionExamenBean;  
    }*/
    
    /*public ArrayList<ProgramacionExamenBean> FiltrarProgramacionExamenxMateriaySemestre(int codmateria, int codsemestre){   
        try{
            cn=ConexionBD.getConexionBD();
            
            pt=cn.prepareStatement("select pe.CODPROGEXAMEN, m.NOMBMATERIA, l.DESCRIPLAB, d.NOMBDIA, h.HORAINICIO, h.HORAFIN from programacionexamen as pe\n" +
                "inner join estructuraexamen as ee ON ee.CODESTRUCEXAMEN=pe.CODESTRUCEXAMEN\n" +
                "inner join materia as m ON m.CODMATERIA=ee.CODMATERIA\n" +
                "inner join semestre as s ON s.CODSEMESTRE=ee.CODSEMESTRE\n" +
                "inner join horariodelaboratoriodisponibles as h ON h.CODHORARIOLAB=pe.CODHORARIOLAB\n" +
                "inner join laboratorio as l ON l.CODLAB=h.CODLAB\n" +
                "inner join dia as d ON d.CODDIA=h.CODDIA\n" +
                "where ee.CODSEMESTRE=? and ee.CODMATERIA=?;");
            pt.setInt(1,codsemestre);
            pt.setInt(2,codmateria);
            rs=pt.executeQuery();
            lista=new ArrayList<ProgramacionExamenBean>(); 
            while(rs.next()){
                objProgramacionExamenBean=new ProgramacionExamenBean();
                objProgramacionExamenBean.setCODPROGEXAMEN(rs.getInt(1));
                
                objProgramacionExamenBean.setDESCRIPLAB(rs.getString(3));
                objProgramacionExamenBean.setNOMBDIA(rs.getString(4));
                objProgramacionExamenBean.setHORAINICIO(rs.getString(5));
                objProgramacionExamenBean.setHORAFIN(rs.getString(6));

                lista.add(objProgramacionExamenBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }*/
  
    public int InsertarProgramacionExamenxSupervisor(ProgramacionExamenxSupervisorBean objProgExamxSup){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("INSERT INTO programacionexamenxsupervisor(CODROLXDOCENTE,CODDOCENTE,CODROL,CODPROGEXAMEN,CODPROGHORARIO,CODESTRUCEXAMEN,ESTADO) VALUES (?,null,null,?,0,?,'A');");
            pt.setInt(1, objProgExamxSup.getCODROLXDOCENTE());
            pt.setInt(2, objProgExamxSup.getCODPROGEXAMEN());
            pt.setInt(3, objProgExamxSup.getCODESTRUCEXAMEN());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return estado;    
    }
    
    public int InsertarAlumnoxMateriaxProgramacionxExamen(int codprogexam, int codmatri){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("INSERT INTO alumnoxmateriaxprogramacionexam(CODMATRICULA,CODALU,CODCARRERA,CODMATERIA,CODPROGEXAMEN,CODESTRUCEXAMEN,CODPROGHORARIO,ESTADO) VALUES (?,null,null,null,?,null,null,'A');");
            pt.setInt(1, codmatri);
            pt.setInt(2, codprogexam);
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return estado;    
    }
    
    public int DeshabilitarProgramacionExamen(ProgramacionExamenxSupervisorBean objProgExamxSup){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("UPDATE programacionexamen set ESTADO='I' where CODPROGEXAMEN=?;");
            pt.setInt(1, objProgExamxSup.getCODPROGEXAMEN());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return estado;    
    }
  
    public int ModificarLaboratorio(LaboratorioBean objLaboratorioBean){
        int estado=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("UPDATE laboratorio SET DESCRIPLAB=?,NROPCSLAB=?,ESTADO=? WHERE CODLAB=?;");
            pt.setString(1, objLaboratorioBean.getDESCRIPLAB());
            pt.setInt(2, objLaboratorioBean.getNROPCSLAB());
            pt.setString(3, objLaboratorioBean.getESTADO());
            pt.setInt(4, objLaboratorioBean.getCODLAB());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
       return estado;    
    }
    
    public void EliminarLaboratorio(LaboratorioBean objLaboratorioBean){  
        try { 
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("DELETE FROM laboratorio WHERE CODLAB=?");
            pt.setInt(1, objLaboratorioBean.getCODLAB());
            pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
    }
    
    public int  GenerarCodigoLaboratorio( ){
        int i=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT MAX(CODLAB) FROM laboratorio");
            rs=pt.executeQuery();
            if(rs.next()){ i=rs.getInt(1)+1;}
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return i;
    }
    
    /*public ArrayList<HorarioLabDisponibleBean> ListarHorarioLabDisponible(){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT h.CODHORARIOLAB, h.HORAINICIO, h.HORAFIN, h.CODLAB, l.DESCRIPLAB, h.CODTURNO, t.NOMBTURNO, h.CODDIA, d.NOMBDIA, h.CODSEMESTRE, s.NOMBSEMESTRE FROM horariodelaboratoriodisponibles as h\n" +
                "INNER JOIN laboratorio as l ON l.CODLAB=h.CODLAB\n" +
                "INNER JOIN turno as t ON t.CODTURNO=h.CODTURNO\n" +
                "INNER JOIN dia as d ON d.CODDIA=h.CODDIA\n" +
                "INNER JOIN semestre as s ON s.CODSEMESTRE=h.CODSEMESTRE;");
            rs=pt.executeQuery();
            listaDisponible=new ArrayList<HorarioLabDisponibleBean>(); 
            while(rs.next()){
                objHorarioLabDisponibleBean=new HorariodeLaboratorioDisponiblesBean ();
                objHorarioLabDisponibleBean.setCODHORARIOLAB(rs.getInt(1));
                objHorarioLabDisponibleBean.setHORAINICIO(rs.getString(2));
                objHorarioLabDisponibleBean.setHORAFIN(rs.getString(3));
                objHorarioLabDisponibleBean.setCODLAB(rs.getInt(4));
                objHorarioLabDisponibleBean.setDESCRIPLAB(rs.getString(5));
                objHorarioLabDisponibleBean.setCODTURNO(rs.getInt(6));
                objHorarioLabDisponibleBean.setNOMBTURNO(rs.getString(7));
                objHorarioLabDisponibleBean.setCODDIA(rs.getInt(8));
                objHorarioLabDisponibleBean.setNOMBDIA(rs.getString(9));
                objHorarioLabDisponibleBean.setCODSEMESTRE(rs.getInt(10));
                objHorarioLabDisponibleBean.setNOMBSEMESTRE(rs.getString(11));
                
                listaDisponible.add(objHorarioLabDisponibleBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  listaDisponible;  
    }*/
}
