package DAO;
import BEAN.RolxDocenteBean;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;

public class RolxdocenteDAO {
    Connection                  cn=null;
    PreparedStatement           pt=null;
    ResultSet                   rs=null;
    ArrayList<RolxDocenteBean>  lista=null;
    RolxDocenteBean             objRolxdocenteBean=null;
    
    public ArrayList<RolxDocenteBean> ListarRolxdocente(int codrol){
        try {
            String sql= "SELECT RD.CODROLXDOCENTE, RD.CODDOCENTE, CONCAT(D.NOMBDOCENTE,' ',D.APEPATERDOCENTE,' ',D.APEMATERDOCENTE) AS NOMBDOCENTE, " +
                        "RD.CODROL, R.NOMBROL, RD.NOMBROLXDOCENTE, RD.CODCARRERA, C.NOMBCARRERA, RD.CODMATERIA, M.NOMBMATERIA \n" +
                        "FROM rolxdocente RD \n" +
                        "INNER JOIN docente D ON D.CODDOCENTE=RD.CODDOCENTE \n" +
                        "INNER JOIN rol R ON R.CODROL=RD.CODROL \n" +
                        "INNER JOIN carreraprofesional C ON C.CODCARRERA=RD.CODCARRERA \n" +
                        "INNER JOIN materia M ON M.CODMATERIA=RD.CODMATERIA \n" +
                        "WHERE RD.CODROL="+codrol+" ORDER BY 1 ASC;";
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement(sql);
            rs=pt.executeQuery();
            lista=new ArrayList<RolxDocenteBean>();
            while(rs.next()){
                objRolxdocenteBean=new RolxDocenteBean();
                objRolxdocenteBean.setCODROLXDOCENTE(rs.getInt("CODROLXDOCENTE"));
                objRolxdocenteBean.setCODDOCENTE(rs.getInt("CODDOCENTE"));
                objRolxdocenteBean.setNOMBDOCENTE(rs.getString("NOMBDOCENTE"));
                objRolxdocenteBean.setCODROL(rs.getInt("CODROL"));
                objRolxdocenteBean.setNOMBROL(rs.getString("NOMBROL"));
                objRolxdocenteBean.setNOMBROLXDOCENTE(rs.getString("NOMBROLXDOCENTE"));
                objRolxdocenteBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objRolxdocenteBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));
                objRolxdocenteBean.setCODMATERIA(rs.getInt("CODMATERIA"));
                objRolxdocenteBean.setNOMBMATERIA(rs.getString("NOMBMATERIA"));
                lista.add(objRolxdocenteBean);
            }
            rs.close();
            pt.close();
            cn.close();
        } catch (Exception e) { }
        return lista;
    }
    
    public int InsertarRolxdocente(RolxDocenteBean objRolxdocenteBean){
        int estado=0;
        try {
            String sql= "INSERT INTO rolxdocente(\n" +
                        "CODROLXDOCENTE, CODDOCENTE, CODROL, NOMBROLXDOCENTE, CODCARRERA, CODMATERIA\n" +
                        ") VALUES (?,?,?,?,?,?);";
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement(sql);
            pt.setInt(1, objRolxdocenteBean.getCODROLXDOCENTE());
            pt.setInt(2, objRolxdocenteBean.getCODDOCENTE());
            pt.setInt(3, objRolxdocenteBean.getCODROL());
            pt.setString(4, objRolxdocenteBean.getNOMBROLXDOCENTE());
            pt.setInt(5, objRolxdocenteBean.getCODCARRERA());
            pt.setInt(6, objRolxdocenteBean.getCODMATERIA());
            estado=pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) { }
        return estado;
    }
    
    public int ModificarRolxdocente(RolxDocenteBean objRolxdocenteBean){
        int estado=0;
        try {
            String sql="UPDATE rolxdocente SET " +
                       "CODDOCENTE=?,CODROL=?,NOMBROLXDOCENTE=?,CODCARRERA=?,CODMATERIA=? " +
                       "WHERE CODROLXDOCENTE=?;";
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement(sql);
            pt.setInt(1, objRolxdocenteBean.getCODDOCENTE());
            pt.setInt(2, objRolxdocenteBean.getCODROL());
            pt.setString(3, objRolxdocenteBean.getNOMBROLXDOCENTE());
            pt.setInt(4, objRolxdocenteBean.getCODCARRERA());
            pt.setInt(5, objRolxdocenteBean.getCODMATERIA());
            pt.setInt(6, objRolxdocenteBean.getCODROLXDOCENTE());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) { }
        return estado;
    }
    
    public void EliminarRolxdocente(RolxDocenteBean objRolxdocenteBean){
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("DELETE FROM rolxdocente WHERE CODROLXDOCENTE=?;");
            pt.setInt(1, objRolxdocenteBean.getCODROLXDOCENTE());
            pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
    }
    
    public int GenerarCodigo(){
        int i=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT MAX(CODROLXDOCENTE) FROM rolxdocente;");
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