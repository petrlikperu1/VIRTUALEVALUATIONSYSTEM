package DAO;
import BEAN.DocenteSBean;
import BEAN.SemestreBean;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;

public class SemestreDAO {
    Connection               cn=null;
    PreparedStatement        pt=null;
    ResultSet                rs=null;
    ArrayList<SemestreBean>  lista=null;
    SemestreBean             objSemestreBean=null;


    
    public ArrayList<SemestreBean> MostrarSemestre(){   
        try{
            cn=ConexionBD.getConexionBD();
            String sql ="SELECT CODSEMESTRE, NOMBSEMESTRE, FECHAINICIO,FECHAFIN, ESTADO   FROM semestre  ;";
            pt=cn.prepareStatement(sql);
            rs=pt.executeQuery();
            lista=new ArrayList<SemestreBean>(); 
            while(rs.next()){
                objSemestreBean=new SemestreBean ();
                objSemestreBean.setCODSEMESTRE(rs.getInt("CODSEMESTRE"));
                objSemestreBean.setNOMBSEMESTRE(rs.getString("NOMBSEMESTRE"));
                objSemestreBean.setFECHAINICIO(rs.getString("FECHAINICIO"));
                objSemestreBean.setFECHAFIN(rs.getString("FECHAFIN"));
                objSemestreBean.setESTADO(rs.getString("ESTADO"));
                lista.add(objSemestreBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
    
    
    
    
    public ArrayList<SemestreBean> ListarSemestre(){   
        try{
            cn=ConexionBD.getConexionBD();
            String sql ="SELECT S.CODSEMESTRE, S.NOMBSEMESTRE, S.FECHAINICIO, S.FECHAFIN, S.ESTADO, AM.ALUMNOXMATERIA, EE.ESTRUCTURAEXAMEN, HLD.HORARIODELABORATORIODISPONIBLES \n" +
                        "FROM semestre S \n" +
                        "LEFT JOIN (SELECT CODSEMESTRE, COUNT(*) AS ALUMNOXMATERIA FROM `alumnoxmateria` GROUP BY CODSEMESTRE) AM ON S.CODSEMESTRE = AM.CODSEMESTRE \n" +
                        "LEFT JOIN (SELECT CODSEMESTRE, COUNT(*) AS ESTRUCTURAEXAMEN FROM `estructuraexamen` GROUP BY CODSEMESTRE) EE ON S.CODSEMESTRE = EE.CODSEMESTRE \n" +
                        "LEFT JOIN (SELECT CODSEMESTRE, COUNT(*) AS HORARIODELABORATORIODISPONIBLES FROM `horariodelaboratoriodisponibles` GROUP BY CODSEMESTRE) HLD ON S.CODSEMESTRE = HLD.CODSEMESTRE";
            pt=cn.prepareStatement(sql);
            rs=pt.executeQuery();
            lista=new ArrayList<SemestreBean>(); 
            while(rs.next()){
                objSemestreBean=new SemestreBean ();
                objSemestreBean.setCODSEMESTRE(rs.getInt("CODSEMESTRE"));
                objSemestreBean.setNOMBSEMESTRE(rs.getString("NOMBSEMESTRE"));
                objSemestreBean.setFECHAINICIO(rs.getString("FECHAINICIO"));
                objSemestreBean.setFECHAFIN(rs.getString("FECHAFIN"));
                objSemestreBean.setESTADO(rs.getString("ESTADO"));
                int alumnoxmateria = rs.getInt("ALUMNOXMATERIA");
                int estructuraexamen = rs.getInt("ESTRUCTURAEXAMEN");
                int horariodelaboratoriodisponibles = rs.getInt("HORARIODELABORATORIODISPONIBLES");
                objSemestreBean.setOFFSPRING(alumnoxmateria+estructuraexamen+horariodelaboratoriodisponibles);
                lista.add(objSemestreBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
    
    public SemestreBean TraerSemestre(int codigo){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT CODSEMESTRE,NOMBSEMESTRE,FECHAINICIO,FECHAFIN,ESTADO FROM semestre WHERE CODSEMESTRE=?;");
            pt.setInt(1, codigo);
            rs=pt.executeQuery();
            while(rs.next()){
                objSemestreBean=new SemestreBean ();
                objSemestreBean.setCODSEMESTRE(rs.getInt("CODSEMESTRE"));
                objSemestreBean.setNOMBSEMESTRE(rs.getString("NOMBSEMESTRE"));
                objSemestreBean.setFECHAINICIO(rs.getString("FECHAINICIO"));
                objSemestreBean.setFECHAFIN(rs.getString("FECHAFIN"));
                objSemestreBean.setESTADO(rs.getString("ESTADO"));
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return objSemestreBean;  
    }
  
    public int InsertarSemestre(SemestreBean objSemestreBean){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("INSERT INTO semestre(CODSEMESTRE,NOMBSEMESTRE,FECHAINICIO,FECHAFIN,ESTADO) VALUES (?,?,?,?,?);");
            pt.setInt(1, objSemestreBean.getCODSEMESTRE());
            pt.setString(2, objSemestreBean.getNOMBSEMESTRE());
            pt.setString(3, objSemestreBean.getFECHAINICIO());
            pt.setString(4, objSemestreBean.getFECHAFIN());
            pt.setString(5, objSemestreBean.getESTADO());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
        }
        return estado;    
    }
  
    public int ModificarSemestre(SemestreBean objSemestreBean){
        int estado=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("UPDATE semestre SET NOMBSEMESTRE=?,FECHAINICIO=?,FECHAFIN=?,ESTADO=? WHERE CODSEMESTRE=?;");
            pt.setString(1, objSemestreBean.getNOMBSEMESTRE());
            pt.setString(2, objSemestreBean.getFECHAINICIO());
            pt.setString(3, objSemestreBean.getFECHAFIN());
            pt.setString(4, objSemestreBean.getESTADO());
            pt.setInt(5, objSemestreBean.getCODSEMESTRE());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
       return estado;    
    }
    
    public void EliminarSemestre(SemestreBean objSemestreBean){  
        try { 
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("DELETE FROM semestre WHERE CODSEMESTRE=?;");
            pt.setInt(1, objSemestreBean.getCODSEMESTRE());
            pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
    }
    
    public int  GenerarCodigoSemestre( ){
        int i=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT MAX(CODSEMESTRE) FROM semestre;");
            rs=pt.executeQuery();
            if(rs.next()){ i=rs.getInt(1)+1;}
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return i;
    }
    
    
    public ArrayList<SemestreBean> ValidarSemestre(){   
        try{
           
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT *  FROM semestre ;");
         
            rs=pt.executeQuery();
            lista=new ArrayList<SemestreBean>(); 
            while(rs.next()){
                objSemestreBean=new SemestreBean ();
                objSemestreBean.setCODSEMESTRE(rs.getInt("CODSEMESTRE"));
                objSemestreBean.setNOMBSEMESTRE(rs.getString("NOMBSEMESTRE"));
                objSemestreBean.setFECHAINICIO(rs.getString("FECHAINICIO"));
                objSemestreBean.setFECHAFIN(rs.getString("FECHAFIN"));
                objSemestreBean.setESTADO(rs.getString("ESTADO"));
               lista.add(objSemestreBean);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
           
        }
        return lista;  
    }

    public ArrayList<SemestreBean> ListarSemestreProgramacionMateria(DocenteSBean Dcoente) {
        try{
           
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("select distinct  S.CODSEMESTRE,\n" +
                                    "	    S.NOMBSEMESTRE\n" +
                                    "from programacionmateria AS PM\n" +
                                    "INNER JOIN semestre AS S ON S.CODSEMESTRE = PM.CODSEMESTRE\n" +
                                    "WHERE PM.CODDOCENTE = ?");
            pt.setInt(1,Dcoente.getCODDOCENTE());
            rs=pt.executeQuery();
            lista=new ArrayList<SemestreBean>(); 
            while(rs.next()){
                objSemestreBean=new SemestreBean ();
                objSemestreBean.setCODSEMESTRE(rs.getInt("CODSEMESTRE"));
                objSemestreBean.setNOMBSEMESTRE(rs.getString("NOMBSEMESTRE"));
               lista.add(objSemestreBean);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
           
        }
        return lista;  
    }
    
    
    
    
}
