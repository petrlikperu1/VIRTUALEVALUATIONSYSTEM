package DAO;
import BEAN.RolBean;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;

public class RolDAO {
    Connection          cn=null;
    PreparedStatement   pt=null;
    ResultSet           rs=null;
    ArrayList<RolBean>  lista=null;
    RolBean             objRolBean=null;

    public ArrayList<RolBean> ListarRol(){   
        try{
            cn=ConexionBD.getConexionBD();
            String sql ="SELECT R.CODROL, R.NOMBROL, R.ESTADO, RD.ROLDOC, PES.PROEXASUP \n" +
                        "FROM rol R \n" +
                        "LEFT JOIN (SELECT CODROL, COUNT(*) AS ROLDOC FROM `rolxdocente` GROUP BY CODROL) RD ON R.CODROL = RD.CODROL \n" +
                        "LEFT JOIN (SELECT CODROL, COUNT(*) AS PROEXASUP FROM `programacionexamenxsupervisor` GROUP BY CODROL) PES ON R.CODROL = PES.CODROL";
            pt=cn.prepareStatement(sql);
            rs=pt.executeQuery();
            lista=new ArrayList<RolBean>(); 
            while(rs.next()){
                objRolBean=new RolBean ();
                objRolBean.setCODROL(rs.getInt("CODROL"));
                objRolBean.setNOMBROL(rs.getString("NOMBROL"));
                objRolBean.setESTADO(rs.getString("ESTADO"));
                int roldoc = rs.getInt("ROLDOC");
                int proexasup = rs.getInt("PROEXASUP");
                objRolBean.setOFFSPRING(roldoc+proexasup);
                lista.add(objRolBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
    
    
    public RolBean TraerRol(RolBean objRolBean){
      try {
        cn=ConexionBD.getConexionBD();
        String sql= "SELECT *    from    rol     WHERE  CODROL=?;";
       pt=cn.prepareStatement(sql);
       pt.setInt(1,objRolBean.getCODROL());
    
       rs=pt.executeQuery();
       while(rs.next()){
        objRolBean=new RolBean ();
        objRolBean.setCODROL(rs.getInt("CODROL"));
        objRolBean.setNOMBROL(rs.getString("NOMBROL"));
        objRolBean.setESTADO(rs.getString("ESTADO"));
       }
       pt.close();
       rs.close();
       cn.close();
      } catch (Exception e){ }
      return objRolBean;
  }
  
    public int InsertarRol(RolBean objRolBean){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("INSERT INTO rol(CODROL,NOMBROL,ESTADO) VALUES (?,?,?);");
            pt.setInt(1, objRolBean.getCODROL());
            pt.setString(2, objRolBean.getNOMBROL());
            pt.setString(3, objRolBean.getESTADO());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
        }
        return estado;    
    }
  
    
    
    
    public int ModificarRol(RolBean objRolBean){
        int estado=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("UPDATE rol SET NOMBROL=?, ESTADO=? WHERE CODROL=?");
            pt.setString(1, objRolBean.getNOMBROL());
            pt.setString(2, objRolBean.getESTADO());
            pt.setInt(3, objRolBean.getCODROL());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
       return estado;    
    }
    
    public void EliminarRol(RolBean objRolBean){  
        try { 
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("DELETE FROM rol WHERE CODROL=?");
            pt.setInt(1, objRolBean.getCODROL());
            pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
    }
    
    public int  GenerarCodigoRol(){
        int i=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT MAX(CODROL) FROM rol;");
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
