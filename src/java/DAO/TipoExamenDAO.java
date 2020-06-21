package DAO;
import BEAN.TipoExamenBean;
import BEAN.EstructuraExamenBean;
import DAO.EstructuraExamenDAO;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;

public class TipoExamenDAO {
    Connection          cn=null;
    PreparedStatement   pt=null;
    ResultSet           rs=null;
    ArrayList<TipoExamenBean>  lista=null;
    TipoExamenBean             objTipoExamenBean=null;
    
    
   public ArrayList<TipoExamenBean> MostrarTipoExamen(){   
        try{
            cn=ConexionBD.getConexionBD();
            String sql ="SELECT  *  FROM tipoexamen ";
            pt=cn.prepareStatement(sql);
            rs=pt.executeQuery();
            lista=new ArrayList<TipoExamenBean>(); 
            while(rs.next()){
                objTipoExamenBean=new TipoExamenBean ();
                objTipoExamenBean.setCODTIPEXAMEN(rs.getInt("CODTIPEXAMEN"));
                objTipoExamenBean.setNOMBTIPEXAMEN(rs.getString("NOMBTIPEXAMEN"));
                objTipoExamenBean.setESTADO(rs.getString("ESTADO"));
              
                lista.add(objTipoExamenBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
    
    
    
    

    public ArrayList<TipoExamenBean> ListarTipoExamen(){   
        try{
            cn=ConexionBD.getConexionBD();
            String sql ="SELECT TE.CODTIPEXAMEN, TE.NOMBTIPEXAMEN, TE.ESTADO, EE.ESTEXA \n" +
                        "FROM tipoexamen TE \n" +
                        "LEFT JOIN (SELECT CODTIPEXAMEN, COUNT(*) AS ESTEXA FROM `estructuraexamen` GROUP BY CODMATERIA) EE ON TE.CODTIPEXAMEN = EE.CODTIPEXAMEN";
            pt=cn.prepareStatement(sql);
            rs=pt.executeQuery();
            lista=new ArrayList<TipoExamenBean>(); 
            while(rs.next()){
                objTipoExamenBean=new TipoExamenBean ();
                objTipoExamenBean.setCODTIPEXAMEN(rs.getInt("CODTIPEXAMEN"));
                objTipoExamenBean.setNOMBTIPEXAMEN(rs.getString("NOMBTIPEXAMEN"));
                objTipoExamenBean.setESTADO(rs.getString("ESTADO"));
                objTipoExamenBean.setOFFSPRING(rs.getInt("ESTEXA"));
                lista.add(objTipoExamenBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
    
    
     public TipoExamenBean  TraerTurno(TipoExamenBean objTipoExamenBean){
      try {
        cn=ConexionBD.getConexionBD();
        String sql= "SELECT *    from    tipoexamen     WHERE  CODTIPEXAMEN=?;";
       pt=cn.prepareStatement(sql);
       pt.setInt(1,objTipoExamenBean.getCODTIPEXAMEN());
    
       rs=pt.executeQuery();
       while(rs.next()){
        objTipoExamenBean=new TipoExamenBean ();
        objTipoExamenBean.setCODTIPEXAMEN(rs.getInt("CODTIPEXAMEN"));
        objTipoExamenBean.setNOMBTIPEXAMEN(rs.getString("NOMBTIPEXAMEN"));
        objTipoExamenBean.setESTADO(rs.getString("ESTADO"));
       }
       pt.close();
       rs.close();
       cn.close();
      } catch (Exception e){ }
      return objTipoExamenBean;
  }
    
    
    
  
    public int InsertarTipoExamen(TipoExamenBean objTipoExamenBean){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("INSERT INTO tipoexamen(CODTIPEXAMEN,NOMBTIPEXAMEN,ESTADO) VALUES (?,?,?);");
            pt.setInt(1, objTipoExamenBean.getCODTIPEXAMEN());
            pt.setString(2, objTipoExamenBean.getNOMBTIPEXAMEN());
            pt.setString(3, objTipoExamenBean.getESTADO());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
        }
        return estado;    
    }
  
    public int ModificarTipoExamen(TipoExamenBean objTipoExamenBean){
        int estado=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("UPDATE tipoexamen SET NOMBTIPEXAMEN=?, ESTADO=? WHERE CODTIPEXAMEN=?");
            pt.setString(1, objTipoExamenBean.getNOMBTIPEXAMEN());
            pt.setString(2, objTipoExamenBean.getESTADO());
            pt.setInt(3, objTipoExamenBean.getCODTIPEXAMEN());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
       return estado;    
    }
    
    public void EliminarTipoExamen(TipoExamenBean objTipoExamenBean){  
        try { 
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("DELETE FROM tipoexamen WHERE CODTIPEXAMEN=?");
            pt.setInt(1, objTipoExamenBean.getCODTIPEXAMEN());
            pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
    }
    
    public int  GenerarCodigoTipoExamen(){
        int i=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT MAX(CODTIPEXAMEN) FROM tipoexamen;");
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
