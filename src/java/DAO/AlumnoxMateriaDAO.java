
package DAO;
import BEAN.AlumnoxMateriaBean;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;
public class AlumnoxMateriaDAO {
    Connection                          cn=null;
    PreparedStatement                   pt=null;
    ResultSet                           rs=null;
    ArrayList<AlumnoxMateriaBean>          lista=null;
    AlumnoxMateriaBean                     objAlumnoxMateriaBean=null;
    
    public ArrayList<AlumnoxMateriaBean> ListarAlumnoxMateria(){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT am.CODMATRICULA,am.CODALU,a.NOMBALU,a.APEPATERALU,a.APEMATERALU,am.CODCARRERA,c.NOMBCARRERA, am.CODMATERIA,m.NOMBMATERIA,am.FECHAMATRICULA,am.CODSEMESTRE,s.NOMBSEMESTRE FROM alumnoxmateria as am\n" +
                "INNER JOIN alumno as a ON a.CODALU=am.CODALU\n" +
                "INNER JOIN carreraprofesional as c ON c.CODCARRERA=am.CODCARRERA\n" +
                "INNER JOIN materia as m ON m.CODMATERIA=am.CODMATERIA\n" +
                "INNER JOIN semestre s ON s.CODSEMESTRE=am.CODSEMESTRE\n" +
                "order by am.CODALU,s.NOMBSEMESTRE;");
            rs=pt.executeQuery();
            lista=new ArrayList<AlumnoxMateriaBean>(); 
            while(rs.next()){
                objAlumnoxMateriaBean=new AlumnoxMateriaBean();
                objAlumnoxMateriaBean.setCODMATRICULA(rs.getInt(1));
                objAlumnoxMateriaBean.setNOMBALU(rs.getString(3));
                objAlumnoxMateriaBean.setAPEPATERALU(rs.getString(4));
                objAlumnoxMateriaBean.setAPEMATERALU(rs.getString(5));
                objAlumnoxMateriaBean.setNOMBCARRERA(rs.getString(7));
                objAlumnoxMateriaBean.setNOMBMATERIA(rs.getString(9));
                objAlumnoxMateriaBean.setFECHAMATRICULA(rs.getString(10));
                objAlumnoxMateriaBean.setNOMBSEMESTRE(rs.getString(12));

                lista.add(objAlumnoxMateriaBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
    
    public ArrayList<AlumnoxMateriaBean> FiltrarAlumnoxCarrera(int codcarrera){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT am.CODALU, a.APEPATERALU, a.APEMATERALU, a.NOMBALU FROM alumnoxmateria as am\n" +
                "INNER JOIN alumno as a ON a.CODALU=am.CODALU\n" +
                "where codcarrera=? group by am.CODALU;");
            pt.setInt(1,codcarrera);
            
            rs=pt.executeQuery();
            lista=new ArrayList<AlumnoxMateriaBean>(); 
            while(rs.next()){
                objAlumnoxMateriaBean=new AlumnoxMateriaBean();
                objAlumnoxMateriaBean.setCODALU(rs.getInt(1));
                objAlumnoxMateriaBean.setAPEPATERALU(rs.getString(2));
                objAlumnoxMateriaBean.setAPEMATERALU(rs.getString(3));
                objAlumnoxMateriaBean.setNOMBALU(rs.getString(4));

                lista.add(objAlumnoxMateriaBean);          
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
    
    public ArrayList<AlumnoxMateriaBean> FiltrarMateriasxAlumno(int codalu){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT am.CODMATERIA, m.NOMBMATERIA, am.CODALU, am.CODMATRICULA FROM alumnoxmateria as am\n" +
                "INNER JOIN alumno as a ON a.CODALU=am.CODALU\n" +
                "INNER JOIN materia as m ON m.CODMATERIA=am.CODMATERIA\n" +
                "WHERE am.CODALU=?;");
            pt.setInt(1,codalu);
            
            rs=pt.executeQuery();
            lista=new ArrayList<AlumnoxMateriaBean>(); 
            while(rs.next()){
                objAlumnoxMateriaBean=new AlumnoxMateriaBean();
                objAlumnoxMateriaBean.setCODMATERIA(rs.getInt(1));
                objAlumnoxMateriaBean.setNOMBMATERIA(rs.getString(2));
                objAlumnoxMateriaBean.setCODALU(rs.getInt(3));
                objAlumnoxMateriaBean.setCODMATRICULA(rs.getInt(4));

                lista.add(objAlumnoxMateriaBean);          
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
  
    public int InsertarAlumnoxMateria(AlumnoxMateriaBean objAlumnoxMateriaBean){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("INSERT INTO alumnoxmateria(CODALU,CODCARRERA,CODMATERIA,FECHAMATRICULA,CODSEMESTRE) VALUES (?,?,?,curdate(),?);");
            pt.setInt(1, objAlumnoxMateriaBean.getCODALU());
            pt.setInt(2, objAlumnoxMateriaBean.getCODCARRERA());
            pt.setInt(3, objAlumnoxMateriaBean.getCODMATERIA());
            pt.setInt(4, objAlumnoxMateriaBean.getCODSEMESTRE());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return estado;    
    }
    
    /*public int DeshabilitarProgramacionExamen(ProgramacionExamenxSupervisorBean objProgExamxSup){
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
    }*/
  
    /*public int ModificarLaboratorio(LaboratorioBean objLaboratorioBean){
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
    }*/
    
    /*public void EliminarLaboratorio(LaboratorioBean objLaboratorioBean){  
        try { 
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("DELETE FROM laboratorio WHERE CODLAB=?");
            pt.setInt(1, objLaboratorioBean.getCODLAB());
            pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
    }*/
    
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
                objHorarioLabDisponibleBean=new HorarioLabDisponibleBean ();
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
