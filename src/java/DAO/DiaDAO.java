package DAO;
import BEAN.DiaBean;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;

public class DiaDAO {
    Connection          cn=null;
    PreparedStatement   pt=null;
    ResultSet           rs=null;
    ArrayList<DiaBean>  lista=null;
    DiaBean             objDiaBean=null;

    public ArrayList<DiaBean> ListarDia(){   
        try{
            cn=ConexionBD.getConexionBD();
            String sql ="SELECT D.CODDIA, D.NOMBDIA, D.ESTADO, HLD.HORLABDIS \n" +
                        "FROM dia D \n" +
                        "LEFT JOIN (SELECT CODDIA, COUNT(*) AS HORLABDIS FROM `horariodelaboratoriodisponibles` GROUP BY CODDIA) HLD ON D.CODDIA = HLD.CODDIA";
            pt=cn.prepareStatement(sql);
            rs=pt.executeQuery();
            lista=new ArrayList<DiaBean>(); 
            while(rs.next()){
                objDiaBean=new DiaBean ();
                objDiaBean.setCODDIA(rs.getInt("CODDIA"));
                objDiaBean.setNOMBDIA(rs.getString("NOMBDIA"));
                objDiaBean.setESTADO(rs.getString("ESTADO"));
                objDiaBean.setOFFSPRING(rs.getInt("HORLABDIS"));
                lista.add(objDiaBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
     public DiaBean TraerDia(DiaBean objDiaBean){
      try {
        cn=ConexionBD.getConexionBD();
        String sql= "SELECT *    from    dia     WHERE  CODDIA=?;";
       pt=cn.prepareStatement(sql);
       pt.setInt(1,objDiaBean.getCODDIA());
    
       rs=pt.executeQuery();
       while(rs.next()){
        objDiaBean=new DiaBean ();
        objDiaBean.setCODDIA(rs.getInt("CODDIA"));
        objDiaBean.setNOMBDIA(rs.getString("NOMBDIA"));
        
        objDiaBean.setESTADO(rs.getString("ESTADO"));
       }
       pt.close();
       rs.close();
       cn.close();
      } catch (Exception e){ }
      return objDiaBean;
  }
  
    public int InsertarDia(DiaBean objDiaBean){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("INSERT INTO dia(CODDIA,NOMBDIA,ESTADO) VALUES (?,?,?);");
            pt.setInt(1, objDiaBean.getCODDIA());
            pt.setString(2, objDiaBean.getNOMBDIA());
            pt.setString(3, objDiaBean.getESTADO());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
        }
        return estado;    
    }
  
    public int ModificarDia(DiaBean objDiaBean){
        int estado=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("UPDATE dia SET NOMBDIA=?, ESTADO=? WHERE CODDIA=?");
            pt.setString(1, objDiaBean.getNOMBDIA());
            pt.setString(2, objDiaBean.getESTADO());
            pt.setInt(3, objDiaBean.getCODDIA());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
       return estado;    
    }
    
    public void EliminarDia(DiaBean objDiaBean){  
        try { 
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("DELETE FROM dia WHERE CODDIA=?");
            pt.setInt(1, objDiaBean.getCODDIA());
            pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
    }
    
    public int  GenerarCodigoDia(){
        int i=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT MAX(CODDIA) FROM dia;");
            rs=pt.executeQuery();
            if(rs.next()){ i=rs.getInt(1)+1;}
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return i;
    }
}
