package DAO;
import BEAN.TurnoBean;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;

public class TurnoDAO {
    Connection          cn=null;
    PreparedStatement   pt=null;
    ResultSet           rs=null;
    ArrayList<TurnoBean>  lista=null;
    TurnoBean             objTurnoBean=null;

    public ArrayList<TurnoBean> ListarTurno(){   
        try{
            cn=ConexionBD.getConexionBD();
            String sql ="SELECT T.CODTURNO, T.NOMBTURNO, T.ESTADO, HLD.HORLABDIS \n" +
                        "FROM turno T \n" +
                        "LEFT JOIN (SELECT CODTURNO, COUNT(*) AS HORLABDIS FROM `horariodelaboratoriodisponibles` GROUP BY CODTURNO) HLD ON T.CODTURNO = HLD.CODTURNO";
            pt=cn.prepareStatement(sql);
            rs=pt.executeQuery();
            lista=new ArrayList<TurnoBean>(); 
            while(rs.next()){
                objTurnoBean=new TurnoBean ();
                objTurnoBean.setCODTURNO(rs.getInt("CODTURNO"));
                objTurnoBean.setNOMBTURNO(rs.getString("NOMBTURNO"));
                objTurnoBean.setESTADO(rs.getString("ESTADO"));
                objTurnoBean.setOFFSPRING(rs.getInt("HORLABDIS"));
                lista.add(objTurnoBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
  
    public TurnoBean TraerTurno(TurnoBean objTurnoBean){
      try {
        cn=ConexionBD.getConexionBD();
        String sql= "SELECT *    from    turno     WHERE  CODTURNO=?;";
       pt=cn.prepareStatement(sql);
       pt.setInt(1,objTurnoBean.getCODTURNO());
    
       rs=pt.executeQuery();
       while(rs.next()){
        objTurnoBean=new TurnoBean ();
        objTurnoBean.setCODTURNO(rs.getInt("CODTURNO"));
        objTurnoBean.setNOMBTURNO(rs.getString("NOMBTURNO"));
        objTurnoBean.setESTADO(rs.getString("ESTADO"));
       }
       pt.close();
       rs.close();
       cn.close();
      } catch (Exception e){ }
      return objTurnoBean;
  }
    
    
    
    public int InsertarTurno(TurnoBean objTurnoBean){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("INSERT INTO turno(CODTURNO,NOMBTURNO,ESTADO) VALUES (?,?,?);");
            pt.setInt(1, objTurnoBean.getCODTURNO());
            pt.setString(2, objTurnoBean.getNOMBTURNO());
            pt.setString(3, objTurnoBean.getESTADO());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
        }
        return estado;    
    }
  
    public int ModificarTurno(TurnoBean objTurnoBean){
        int estado=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("UPDATE turno SET NOMBTURNO=?, ESTADO=? WHERE CODTURNO=?");
            pt.setString(1, objTurnoBean.getNOMBTURNO());
            pt.setString(2, objTurnoBean.getESTADO());
            pt.setInt(3, objTurnoBean.getCODTURNO());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
       return estado;    
    }
    
    public void EliminarTurno(TurnoBean objTurnoBean){  
        try { 
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("DELETE FROM turno WHERE CODTURNO=?");
            pt.setInt(1, objTurnoBean.getCODTURNO());
            pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
    }
    
    public int  GenerarCodigoTurno(){
        int i=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT MAX(CODTURNO) FROM turno;");
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
