package DAO;
import BEAN.AuxBean;
import BEAN.DetalleEstructuraExamenBean;
import BEAN.EstructuraExamenBean;
import BEAN.GenerarExamenBean;
import BEAN.HorariodeLaboratorioDisponiblesBean;
import BEAN.LaboratorioBean;
import BEAN.PreguntaBean;
import BEAN.ProgramacionExamenBean;
import BEAN.ProgramacionExamenxSupervisorBean;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;

public class GenerarExamenDAO {
    Connection                  cn=null;
    PreparedStatement           pt=null;
    ResultSet                   rs=null;
    ArrayList<ProgramacionExamenBean>  lista=null;
    
    ProgramacionExamenBean             objProgramacionExamenBean=null;
    

    public ArrayList<ProgramacionExamenBean> ListarProgramacionExamen(){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT p.CODPROGHORARIO,p.CODPROGEXAMEN,p.CODESTRUCEXAMEN,p.CODHORARIOLAB,h.HORAINICIO,h.HORAFIN,l.DESCRIPLAB, d.NOMBDIA,p.ESTADO FROM programacionexamen p\n" +
                "INNER JOIN horariodelaboratoriodisponibles as h ON h.CODHORARIOLAB=p.CODHORARIOLAB\n" +
                "INNER JOIN laboratorio as l ON l.CODLAB=h.CODLAB\n" +
                "INNER JOIN dia as d ON d.CODDIA=h.CODDIA\n" +
                "WHERE p.ESTADO='A';");
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

                lista.add(objProgramacionExamenBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
    
    public ArrayList<GenerarExamenBean> ListarExamenesxSupervisor(int codsupervisor,int codsemestre,int codmateria){   
        ArrayList<GenerarExamenBean> lista = new ArrayList<GenerarExamenBean>();
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT m.NOMBMATERIA, e.ESTADOEXAMEN, e.CODESTRUCEXAMEN FROM programacionexamen as pe\n" +
"                inner join (\n" +
"                    select max(CODPROGEXAMEN) as CODPROGEXAMEN,CODROLXDOCENTE from\n" +
"                    programacionexamenxsupervisor\n" +
"                	group by CODROLXDOCENTE,CODESTRUCEXAMEN\n" +
"                \n" +
"                ) as pes\n" +
"				ON pes.CODPROGEXAMEN=pe.CODPROGEXAMEN\n" +
"                inner join estructuraexamen as e ON e.CODESTRUCEXAMEN=pe.CODESTRUCEXAMEN\n" +
"                inner join materia as m ON m.CODMATERIA=e.CODMATERIA\n" +
"                where pes.CODROLXDOCENTE=? and e.CODSEMESTRE=? and e.CODMATERIA=?;");
            pt.setInt(1,codsupervisor);
            pt.setInt(2,codsemestre);
            pt.setInt(3,codmateria);
            rs=pt.executeQuery();
            
            while(rs.next()){
                GenerarExamenBean objGenerarExamenBean=new GenerarExamenBean();
                objGenerarExamenBean.setNOMBMATERIA(rs.getString(1));
                objGenerarExamenBean.setESTADOEXAMEN(rs.getString(2));
                objGenerarExamenBean.setCODESTRUCEXAMEN(rs.getInt(3));

                lista.add(objGenerarExamenBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
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
    
    public ProgramacionExamenBean FiltrarProgramacionExamen(String check){   
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
    }
    
    public ProgramacionExamenBean FiltrarProgramacionExamen2(String check){   
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
    }
    
    public ArrayList<ProgramacionExamenBean> FiltrarProgramacionExamenxMateriaySemestre(int codmateria, int codsemestre){   
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
    }
  
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
