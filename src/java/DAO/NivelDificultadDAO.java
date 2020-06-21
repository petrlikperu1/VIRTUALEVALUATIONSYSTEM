package DAO;
import BEAN.NivelDificultadBean;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;

public class NivelDificultadDAO {
    Connection                      cn=null;
    PreparedStatement               pt=null;
    ResultSet                       rs=null;
    ArrayList<NivelDificultadBean>  lista=null;
    NivelDificultadBean             objNivelDificultadBean=null;

    
     public ArrayList<NivelDificultadBean> ListarNivelDificultadRegistrarPregunta(){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT CODNIVEL,NOMBNIVEL,ESTADO FROM niveldificultad;");
            rs=pt.executeQuery();
            lista=new ArrayList<NivelDificultadBean>(); 
            while(rs.next()){
                objNivelDificultadBean=new NivelDificultadBean ();
                objNivelDificultadBean.setCODNIVEL(rs.getInt("CODNIVEL"));
                objNivelDificultadBean.setNOMBNIVEL(rs.getString("NOMBNIVEL"));
                objNivelDificultadBean.setESTADO(rs.getString("ESTADO"));
                lista.add(objNivelDificultadBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
    
    
    public ArrayList<NivelDificultadBean> ListarNivelDificultad(){   
        try{
            cn=ConexionBD.getConexionBD();
            String sql ="SELECT ND.CODNIVEL, ND.NOMBNIVEL, ND.ESTADO, DEE.DETESTEXA, P.PRE \n" +
                        "FROM niveldificultad ND \n" +
                        "LEFT JOIN (SELECT CODNIVEL, COUNT(*) AS DETESTEXA FROM `detalleestructuraexamen` GROUP BY CODNIVEL) DEE ON ND.CODNIVEL = DEE.CODNIVEL \n" +
                        "LEFT JOIN (SELECT CODNIVEL, COUNT(*) AS PRE FROM `pregunta` GROUP BY CODNIVEL) P ON ND.CODNIVEL = P.CODNIVEL";
            pt=cn.prepareStatement(sql);
            rs=pt.executeQuery();
            lista=new ArrayList<NivelDificultadBean>(); 
            while(rs.next()){
                objNivelDificultadBean=new NivelDificultadBean ();
                objNivelDificultadBean.setCODNIVEL(rs.getInt("CODNIVEL"));
                objNivelDificultadBean.setNOMBNIVEL(rs.getString("NOMBNIVEL"));
                objNivelDificultadBean.setESTADO(rs.getString("ESTADO"));
                int detestexa = rs.getInt("DETESTEXA");
                int pre = rs.getInt("PRE");
                objNivelDificultadBean.setOFFSPRING(detestexa+pre);
                lista.add(objNivelDificultadBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
  
    public NivelDificultadBean TraerNivelDificultad(NivelDificultadBean objNivelDificultadBean){
      try {
        cn=ConexionBD.getConexionBD();
        String sql= "SELECT *    from    niveldificultad     WHERE  CODNIVEL=?;";
       pt=cn.prepareStatement(sql);
       pt.setInt(1,objNivelDificultadBean.getCODNIVEL());
    
       rs=pt.executeQuery();
       while(rs.next()){
        objNivelDificultadBean=new NivelDificultadBean();
        objNivelDificultadBean.setCODNIVEL(rs.getInt("CODNIVEL"));
        objNivelDificultadBean.setNOMBNIVEL(rs.getString("NOMBNIVEL"));
        objNivelDificultadBean.setESTADO(rs.getString("ESTADO"));
       }
       pt.close();
       rs.close();
       cn.close();
      } catch (Exception e){ }
      return objNivelDificultadBean;
  }
    
    
    
    
    public int InsertarNivelDificultad(NivelDificultadBean objNivelDificultadBean){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("INSERT INTO niveldificultad(CODNIVEL,NOMBNIVEL,ESTADO) VALUES (?,?,?);");
            pt.setInt(1, objNivelDificultadBean.getCODNIVEL());
            pt.setString(2, objNivelDificultadBean.getNOMBNIVEL());
            pt.setString(3, objNivelDificultadBean.getESTADO());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
        }
        return estado;    
    }
  
    public int ModificarNivelDificultad(NivelDificultadBean objNivelDificultadBean){
        int estado=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("UPDATE niveldificultad SET NOMBNIVEL=?, ESTADO=? WHERE CODNIVEL=?");
            pt.setString(1, objNivelDificultadBean.getNOMBNIVEL());
            pt.setString(2, objNivelDificultadBean.getESTADO());
            pt.setInt(3, objNivelDificultadBean.getCODNIVEL());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
       return estado;    
    }
    
    public void EliminarNivelDificultad(NivelDificultadBean objNivelDificultadBean){  
        try { 
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("DELETE FROM niveldificultad WHERE CODNIVEL=?");
            pt.setInt(1, objNivelDificultadBean.getCODNIVEL());
            pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
    }
    
    public int  GenerarCodigoNivelDificultad(){
        int i=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT MAX(CODNIVEL) FROM niveldificultad;");
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