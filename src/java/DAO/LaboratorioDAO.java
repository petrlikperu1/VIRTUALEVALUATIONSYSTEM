package DAO;
import BEAN.LaboratorioBean;
import BEAN.HorariodeLaboratorioDisponiblesBean;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;

public class LaboratorioDAO {
    Connection                  cn=null;
    PreparedStatement           pt=null;
    ResultSet                   rs=null;
    ArrayList<LaboratorioBean>  lista=null;
    LaboratorioBean             objLaboratorioBean=null;
    ArrayList<HorariodeLaboratorioDisponiblesBean>  listaDisponible=null;
    HorariodeLaboratorioDisponiblesBean    objHorarioLabDisponibleBean=null;
    
    public ArrayList<LaboratorioBean> ListarLaboratorio(){   
        try{
            cn=ConexionBD.getConexionBD();
            String sql ="SELECT L.CODLAB, L.DESCRIPLAB, L.NROPCSLAB, L.ESTADO, HLD.HORARIODELABORATORIODISPONIBLES \n" +
                        "FROM laboratorio L \n" +
                        "LEFT JOIN (SELECT CODLAB, COUNT(*) AS HORARIODELABORATORIODISPONIBLES FROM `horariodelaboratoriodisponibles` GROUP BY CODLAB) HLD ON L.CODLAB = HLD.CODLAB";
            pt=cn.prepareStatement(sql);
            rs=pt.executeQuery();
            lista=new ArrayList<LaboratorioBean>(); 
            while(rs.next()){
                objLaboratorioBean=new LaboratorioBean ();
                objLaboratorioBean.setCODLAB(rs.getInt("CODLAB"));
                objLaboratorioBean.setDESCRIPLAB(rs.getString("DESCRIPLAB"));
                objLaboratorioBean.setNROPCSLAB(rs.getInt("NROPCSLAB"));
                objLaboratorioBean.setESTADO(rs.getString("ESTADO"));
                int horariodelaboratoriodisponibles = rs.getInt("NROPCSLAB");
                objLaboratorioBean.setOFFSPRING(rs.getInt("HORARIODELABORATORIODISPONIBLES"));
                lista.add(objLaboratorioBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){ }
        return  lista;  
    }
  
    public LaboratorioBean TraerLaboratorio(LaboratorioBean objLaboratorioBean){
      try {
        cn=ConexionBD.getConexionBD();
        String sql= "SELECT *    from    laboratorio    WHERE  CODLAB=?;";
       pt=cn.prepareStatement(sql);
       pt.setInt(1,objLaboratorioBean.getCODLAB());
    
       rs=pt.executeQuery();
       while(rs.next()){
        objLaboratorioBean=new LaboratorioBean();
        objLaboratorioBean.setCODLAB(rs.getInt("CODLAB"));
        objLaboratorioBean.setDESCRIPLAB(rs.getString("DESCRIPLAB"));
        objLaboratorioBean.setNROPCSLAB(rs.getInt("NROPCSLAB"));
        objLaboratorioBean.setESTADO(rs.getString("ESTADO"));
       }
       pt.close();
       rs.close();
       cn.close();
      } catch (Exception e){ }
      return objLaboratorioBean;
  }
    
    
    
    
    public int InsertarLaboratorio(LaboratorioBean objLaboratorioBean){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("INSERT INTO laboratorio(CODLAB,DESCRIPLAB,NROPCSLAB,ESTADO) VALUES (?,?,?,?);");
            pt.setInt(1, objLaboratorioBean.getCODLAB());
            pt.setString(2, objLaboratorioBean.getDESCRIPLAB());
            pt.setInt(3, objLaboratorioBean.getNROPCSLAB());
            pt.setString(4, objLaboratorioBean.getESTADO());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){ }
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
        } catch (Exception e) { }
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
        } catch (Exception e) { }
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
        } catch (Exception e) { }
        return i;
    }
    
    public ArrayList<HorariodeLaboratorioDisponiblesBean> ListarHorarioLabDisponible(){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT h.CODHORARIOLAB, h.HORAINICIO, h.HORAFIN, h.CODLAB, l.DESCRIPLAB, h.CODTURNO, t.NOMBTURNO, h.CODDIA, d.NOMBDIA, h.CODSEMESTRE, s.NOMBSEMESTRE FROM horariodelaboratoriodisponibles as h\n" +
                "INNER JOIN laboratorio as l ON l.CODLAB=h.CODLAB\n" +
                "INNER JOIN turno as t ON t.CODTURNO=h.CODTURNO\n" +
                "INNER JOIN dia as d ON d.CODDIA=h.CODDIA\n" +
                "INNER JOIN semestre as s ON s.CODSEMESTRE=h.CODSEMESTRE;");
            rs=pt.executeQuery();
            listaDisponible=new ArrayList<HorariodeLaboratorioDisponiblesBean>(); 
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
        } catch (Exception e){ }
        return  listaDisponible;  
    }
}