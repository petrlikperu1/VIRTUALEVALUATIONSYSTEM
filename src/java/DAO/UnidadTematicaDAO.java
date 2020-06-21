package DAO;
import BEAN.UnidadTematicaBean;
import UTIL.ConexionBD;
import java.sql.*;
import java.util.ArrayList;

public class UnidadTematicaDAO{
    Connection                      cn=null;
    PreparedStatement               pt=null;
    ResultSet                       rs=null;
    ArrayList<UnidadTematicaBean>   lista=null;
    UnidadTematicaBean              objUnidadTematicaBean=null;

    
    
    public ArrayList<UnidadTematicaBean> MostrarUnidadTematica(){   
        try{
            cn=ConexionBD.getConexionBD();
            String sql ="SELECT U.CODCARRERA, C.NOMBCARRERA, U.CODMATERIA, M.NOMBMATERIA, U.CODUNIDTEMA, U.NOMBUNIDTEMA, U.ESTADO FROM unidadtematica U INNER JOIN materia M ON M.CODMATERIA = U.CODMATERIA INNER JOIN carreraprofesional C ON C.CODCARRERA = U.CODCARRERA ORDER BY 5 ASC ";
            pt=cn.prepareStatement(sql);
            rs=pt.executeQuery();
            lista=new ArrayList<UnidadTematicaBean>(); 
            while(rs.next()){
                objUnidadTematicaBean=new UnidadTematicaBean ();
                objUnidadTematicaBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objUnidadTematicaBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));
                objUnidadTematicaBean.setCODMATERIA(rs.getInt("CODMATERIA"));
                objUnidadTematicaBean.setNOMBMATERIA(rs.getString("NOMBMATERIA"));
                objUnidadTematicaBean.setCODUNIDTEMA(rs.getInt("CODUNIDTEMA"));
                objUnidadTematicaBean.setNOMBUNIDTEMA(rs.getString("NOMBUNIDTEMA"));
                objUnidadTematicaBean.setESTADO(rs.getString("ESTADO"));
               
                lista.add(objUnidadTematicaBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){ }
        return  lista;  
    }
    
    
    
    
    public ArrayList<UnidadTematicaBean> ListarUnidadTematica(){   
        try{
            cn=ConexionBD.getConexionBD();
            String sql ="SELECT U.CODCARRERA, C.NOMBCARRERA, U.CODMATERIA, M.NOMBMATERIA, U.CODUNIDTEMA, U.NOMBUNIDTEMA, U.ESTADO, T.TEM, P.PRE, EE.ESTEXA \n" +
                        "FROM unidadtematica U \n" +
                        "INNER JOIN materia M ON M.CODMATERIA = U.CODMATERIA \n" +
                        "INNER JOIN carreraprofesional C ON C.CODCARRERA = U.CODCARRERA \n" +
                        "LEFT JOIN (SELECT CODUNIDTEMA, COUNT(*) AS TEM FROM `tema` GROUP BY CODUNIDTEMA) T ON U.CODUNIDTEMA = T.CODUNIDTEMA \n" +
                        "LEFT JOIN (SELECT CODUNIDTEMA, COUNT(*) AS PRE FROM `pregunta` GROUP BY CODUNIDTEMA) P ON U.CODUNIDTEMA = P.CODUNIDTEMA \n" +
                        "LEFT JOIN (SELECT CODUNIDAD, COUNT(*) AS ESTEXA FROM `estructuraexamen` GROUP BY CODUNIDAD) EE ON U.CODUNIDTEMA = EE.CODUNIDAD \n" +
                        "ORDER BY 5 ASC";
            pt=cn.prepareStatement(sql);
            rs=pt.executeQuery();
            lista=new ArrayList<UnidadTematicaBean>(); 
            while(rs.next()){
                objUnidadTematicaBean=new UnidadTematicaBean ();
                objUnidadTematicaBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objUnidadTematicaBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));
                objUnidadTematicaBean.setCODMATERIA(rs.getInt("CODMATERIA"));
                objUnidadTematicaBean.setNOMBMATERIA(rs.getString("NOMBMATERIA"));
                objUnidadTematicaBean.setCODUNIDTEMA(rs.getInt("CODUNIDTEMA"));
                objUnidadTematicaBean.setNOMBUNIDTEMA(rs.getString("NOMBUNIDTEMA"));
                objUnidadTematicaBean.setESTADO(rs.getString("ESTADO"));
                int tem = rs.getInt("TEM");
                int pre = rs.getInt("PRE");
                int estexa = rs.getInt("ESTEXA");
                objUnidadTematicaBean.setOFFSPRING(tem+pre+estexa);
                lista.add(objUnidadTematicaBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){ }
        return  lista;  
    }
    
    public UnidadTematicaBean TraerUnidadTematica(UnidadTematicaBean objUnidadTematica){
        try {
            cn=ConexionBD.getConexionBD();
            String sql ="SELECT U.CODCARRERA, C.NOMBCARRERA, U.CODMATERIA, M.NOMBMATERIA, U.CODUNIDTEMA, U.NOMBUNIDTEMA, U.ESTADO \n" +
                        "FROM unidadtematica U \n" +
                        "INNER JOIN materia M ON M.CODMATERIA = U.CODMATERIA \n" +
                        "INNER JOIN carreraprofesional C ON C.CODCARRERA = U.CODCARRERA \n" +
                        "WHERE U.CODCARRERA=? AND U.CODMATERIA=? AND U.CODUNIDTEMA=?;";
            pt=cn.prepareStatement(sql);
            pt.setInt(1, objUnidadTematica.getCODCARRERA());
            pt.setInt(2, objUnidadTematica.getCODMATERIA());
            pt.setInt(3, objUnidadTematica.getCODUNIDTEMA());
            rs=pt.executeQuery();
            while(rs.next()){
                objUnidadTematicaBean=new UnidadTematicaBean ();
                objUnidadTematicaBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objUnidadTematicaBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));
                objUnidadTematicaBean.setCODMATERIA(rs.getInt("CODMATERIA"));
                objUnidadTematicaBean.setNOMBMATERIA(rs.getString("NOMBMATERIA"));
                objUnidadTematicaBean.setCODUNIDTEMA(rs.getInt("CODUNIDTEMA"));
                objUnidadTematicaBean.setNOMBUNIDTEMA(rs.getString("NOMBUNIDTEMA"));
                objUnidadTematicaBean.setESTADO(rs.getString("ESTADO"));
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) { }
        return objUnidadTematicaBean;
    }
  
    public int InsertarUnidadTematica(UnidadTematicaBean objUnidadTematicaBean){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("INSERT INTO unidadtematica(CODCARRERA,CODMATERIA,CODUNIDTEMA,NOMBUNIDTEMA,ESTADO) VALUES (?,?,?,?,?);");
            pt.setInt(1,objUnidadTematicaBean.getCODCARRERA());
            pt.setInt(2,objUnidadTematicaBean.getCODMATERIA());
            pt.setInt(3,objUnidadTematicaBean.getCODUNIDTEMA());
            pt.setString(4,objUnidadTematicaBean.getNOMBUNIDTEMA());
            pt.setString(5,objUnidadTematicaBean.getESTADO());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        }catch (Exception e){ }
        return estado;
    }
  
    public int ModificarUnidadTematica(UnidadTematicaBean objUnidadTematicaBean){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("UPDATE unidadtematica SET NOMBUNIDTEMA=?,ESTADO=? WHERE CODCARRERA=? AND CODMATERIA=? AND CODUNIDTEMA=?;");
            pt.setString(1,objUnidadTematicaBean.getNOMBUNIDTEMA());
            pt.setString(2,objUnidadTematicaBean.getESTADO());
            pt.setInt(3,objUnidadTematicaBean.getCODCARRERA());
            pt.setInt(4,objUnidadTematicaBean.getCODMATERIA());
            pt.setInt(5,objUnidadTematicaBean.getCODUNIDTEMA());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){ }
        return estado;    
    }
    
    public void EliminarUnidadTematica(UnidadTematicaBean objUnidadTematicaBean){  
        try{ 
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("DELETE FROM unidadtematica WHERE CODUNIDTEMA=?;");
            pt.setInt(1,objUnidadTematicaBean.getCODUNIDTEMA());       
            pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
            javax.swing.JOptionPane.showMessageDialog(null, e.getMessage());
        }
    }
    
    public int  generarCodigo( ){
        int i=0;
        try {
            cn  =  ConexionBD.getConexionBD();
            pt  = cn.prepareStatement("SELECT MAX(CODUNIDTEMA) FROM unidadtematica;");
            rs  =pt.executeQuery();
            if(rs.next()){
                i = rs.getInt(1)+1;
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {    }
        return i;
    }
    
    public ArrayList<UnidadTematicaBean>  FiltrarUnidadTematica(UnidadTematicaBean  objUnidadTematicaBean){   
      try {
       cn=ConexionBD.getConexionBD();
       String sql= "SELECT CODUNIDTEMA,NOMBUNIDTEMA FROM unidadtematica WHERE CODCARRERA=? AND CODMATERIA=?;";
       pt=cn.prepareStatement(sql);
       pt.setInt(1,objUnidadTematicaBean.getCODCARRERA());
       pt.setInt(2,objUnidadTematicaBean.getCODMATERIA());
       rs=pt.executeQuery();
       lista=new ArrayList<UnidadTematicaBean>(); 
       while(rs.next()){
        objUnidadTematicaBean=new UnidadTematicaBean();
        objUnidadTematicaBean.setCODUNIDTEMA(rs.getInt("CODUNIDTEMA"));
        objUnidadTematicaBean.setNOMBUNIDTEMA(rs.getString("NOMBUNIDTEMA"));
        lista.add(objUnidadTematicaBean);           
       }
       pt.close();
       rs.close();
       cn.close();
      } catch (Exception e){ }
    return  lista;  
  }
    
    
    public ArrayList<UnidadTematicaBean> ListarUnidadTematicaRegistrarPregunta(){   
        try{
            cn=ConexionBD.getConexionBD();
            String sql ="SELECT U.CODCARRERA, C.NOMBCARRERA, U.CODMATERIA, M.NOMBMATERIA, U.CODUNIDTEMA, U.NOMBUNIDTEMA, U.ESTADO \n" +
                        "FROM unidadtematica U \n" +
                        "INNER JOIN materia M ON M.CODMATERIA = U.CODMATERIA \n" +
                        "INNER JOIN carreraprofesional C ON C.CODCARRERA = U.CODCARRERA \n" +
                        "ORDER BY 5 ASC;";
            pt=cn.prepareStatement(sql);
            rs=pt.executeQuery();
            lista=new ArrayList<UnidadTematicaBean>(); 
            while(rs.next()){
                objUnidadTematicaBean=new UnidadTematicaBean ();
                objUnidadTematicaBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objUnidadTematicaBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));
                objUnidadTematicaBean.setCODMATERIA(rs.getInt("CODMATERIA"));
                objUnidadTematicaBean.setNOMBMATERIA(rs.getString("NOMBMATERIA"));
                objUnidadTematicaBean.setCODUNIDTEMA(rs.getInt("CODUNIDTEMA"));
                objUnidadTematicaBean.setNOMBUNIDTEMA(rs.getString("NOMBUNIDTEMA"));
                objUnidadTematicaBean.setESTADO(rs.getString("ESTADO"));
                lista.add(objUnidadTematicaBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){ }
        return  lista;  
    }
    
    
}