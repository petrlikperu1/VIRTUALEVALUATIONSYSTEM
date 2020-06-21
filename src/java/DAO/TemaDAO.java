package DAO;
import BEAN.TemaBean;
import UTIL.ConexionBD;
import java.sql.*;
import java.util.ArrayList;

public class TemaDAO{
    Connection          cn=null;
    PreparedStatement   pt=null;
    ResultSet           rs=null;
    ArrayList<TemaBean> lista=null;
    TemaBean            objTemaBean=null;

    
    public ArrayList<TemaBean> ListarTemaRegistrarPregunta(){   
        try{
            cn=ConexionBD.getConexionBD();
            String sql ="SELECT T.CODCARRERA, C.NOMBCARRERA, T.CODMATERIA, M.NOMBMATERIA, " +
                        "T.CODUNIDTEMA, U.NOMBUNIDTEMA, T.CODTEMA, T.NOMBTEMA, T.ESTADO \n" +
                        "FROM tema T \n" +
                        "INNER JOIN carreraprofesional C ON C.CODCARRERA=T.CODCARRERA \n" +
                        "INNER JOIN materia M ON M.CODMATERIA=T.CODMATERIA \n" +
                        "INNER JOIN unidadtematica U ON U.CODUNIDTEMA=T.CODUNIDTEMA \n" +
                        "ORDER BY CODTEMA ASC;";
            pt=cn.prepareStatement(sql);
            rs=pt.executeQuery();
            lista=new ArrayList<TemaBean>(); 
            while(rs.next()){
                objTemaBean=new TemaBean ();
                objTemaBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objTemaBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));
                objTemaBean.setCODMATERIA(rs.getInt("CODMATERIA"));
                objTemaBean.setNOMBMATERIA(rs.getString("NOMBMATERIA"));
                objTemaBean.setCODUNIDTEMA(rs.getInt("CODUNIDTEMA"));
                objTemaBean.setNOMBUNIDTEMA(rs.getString("NOMBUNIDTEMA"));
                objTemaBean.setCODTEMA(rs.getInt("CODTEMA"));
                objTemaBean.setNOMBTEMA(rs.getString("NOMBTEMA"));
                objTemaBean.setESTADO(rs.getString("ESTADO"));
                lista.add(objTemaBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){ }
        return  lista;  
    }
    
    
    
                                
 public ArrayList<TemaBean> MostrarTema(){   
        try{
            cn=ConexionBD.getConexionBD();
            String sql ="SELECT T.CODCARRERA, C.NOMBCARRERA, T.CODMATERIA, M.NOMBMATERIA, T.CODUNIDTEMA, U.NOMBUNIDTEMA, T.CODTEMA, T.NOMBTEMA, T.ESTADO \n" +
"                        FROM tema T \n" +
"                        INNER JOIN carreraprofesional C ON C.CODCARRERA=T.CODCARRERA \n" +
"                        INNER JOIN materia M ON M.CODMATERIA=T.CODMATERIA \n" +
"                        INNER JOIN unidadtematica U ON U.CODUNIDTEMA=T.CODUNIDTEMA                         \n" +
"                        ORDER BY CODTEMA ASC";
            pt=cn.prepareStatement(sql);
            rs=pt.executeQuery();
            lista=new ArrayList<TemaBean>(); 
            while(rs.next()){
                objTemaBean=new TemaBean ();
                objTemaBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objTemaBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));
                objTemaBean.setCODMATERIA(rs.getInt("CODMATERIA"));
                objTemaBean.setNOMBMATERIA(rs.getString("NOMBMATERIA"));
                objTemaBean.setCODUNIDTEMA(rs.getInt("CODUNIDTEMA"));
                objTemaBean.setNOMBUNIDTEMA(rs.getString("NOMBUNIDTEMA"));
                objTemaBean.setCODTEMA(rs.getInt("CODTEMA"));
                objTemaBean.setNOMBTEMA(rs.getString("NOMBTEMA"));
                objTemaBean.setESTADO(rs.getString("ESTADO"));
              
                lista.add(objTemaBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){ }
        return  lista;  
    }                               
                                
                                
                                
    public ArrayList<TemaBean> ListarTema(){   
        try{
            cn=ConexionBD.getConexionBD();
            String sql ="SELECT T.CODCARRERA, C.NOMBCARRERA, T.CODMATERIA, M.NOMBMATERIA, T.CODUNIDTEMA, U.NOMBUNIDTEMA, T.CODTEMA, T.NOMBTEMA, T.ESTADO, EE.ESTEXA, P.PRE \n" +
                        "FROM tema T \n" +
                        "INNER JOIN carreraprofesional C ON C.CODCARRERA=T.CODCARRERA \n" +
                        "INNER JOIN materia M ON M.CODMATERIA=T.CODMATERIA \n" +
                        "INNER JOIN unidadtematica U ON U.CODUNIDTEMA=T.CODUNIDTEMA \n" +
                        "LEFT JOIN (SELECT CODTEMA, COUNT(*) AS ESTEXA FROM `estructuraexamen` GROUP BY CODTEMA) EE ON T.CODTEMA = EE.CODTEMA \n" +
                        "LEFT JOIN (SELECT CODTEMA, COUNT(*) AS PRE FROM `pregunta` GROUP BY CODTEMA) P ON T.CODTEMA = P.CODTEMA \n" +
                        "ORDER BY CODTEMA ASC";
            pt=cn.prepareStatement(sql);
            rs=pt.executeQuery();
            lista=new ArrayList<TemaBean>(); 
            while(rs.next()){
                objTemaBean=new TemaBean ();
                objTemaBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objTemaBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));
                objTemaBean.setCODMATERIA(rs.getInt("CODMATERIA"));
                objTemaBean.setNOMBMATERIA(rs.getString("NOMBMATERIA"));
                objTemaBean.setCODUNIDTEMA(rs.getInt("CODUNIDTEMA"));
                objTemaBean.setNOMBUNIDTEMA(rs.getString("NOMBUNIDTEMA"));
                objTemaBean.setCODTEMA(rs.getInt("CODTEMA"));
                objTemaBean.setNOMBTEMA(rs.getString("NOMBTEMA"));
                objTemaBean.setESTADO(rs.getString("ESTADO"));
                int estexa = rs.getInt("ESTEXA");
                int pre = rs.getInt("PRE");
                objTemaBean.setOFFSPRING(estexa+pre);
                lista.add(objTemaBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){ }
        return  lista;  
    }
    
    public TemaBean TraerTema(TemaBean objTemaBean){
        try {
            cn=ConexionBD.getConexionBD();
            String sql ="SELECT T.CODCARRERA, C.NOMBCARRERA, T.CODMATERIA, M.NOMBMATERIA, " +
                        "T.CODUNIDTEMA, U.NOMBUNIDTEMA, T.CODTEMA, T.NOMBTEMA, T.ESTADO \n" +
                        "FROM tema T \n" +
                        "INNER JOIN carreraprofesional C ON C.CODCARRERA=T.CODCARRERA \n" +
                        "INNER JOIN materia M ON M.CODMATERIA=T.CODMATERIA \n" +
                        "INNER JOIN unidadtematica U ON U.CODUNIDTEMA=T.CODUNIDTEMA \n" +
                        "WHERE T.CODCARRERA=? AND T.CODMATERIA=? AND T.CODUNIDTEMA=? AND T.CODTEMA=?;";
            pt=cn.prepareStatement(sql);
            pt.setInt(1,objTemaBean.getCODCARRERA());
            pt.setInt(2,objTemaBean.getCODMATERIA());
            pt.setInt(3,objTemaBean.getCODUNIDTEMA());
            pt.setInt(4,objTemaBean.getCODTEMA());
            rs=pt.executeQuery();
            while(rs.next()){
                objTemaBean=new TemaBean ();
                objTemaBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objTemaBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));
                objTemaBean.setCODMATERIA(rs.getInt("CODMATERIA"));
                objTemaBean.setNOMBMATERIA(rs.getString("NOMBMATERIA"));
                objTemaBean.setCODUNIDTEMA(rs.getInt("CODUNIDTEMA"));
                objTemaBean.setNOMBUNIDTEMA(rs.getString("NOMBUNIDTEMA"));
                objTemaBean.setCODTEMA(rs.getInt("CODTEMA"));
                objTemaBean.setNOMBTEMA(rs.getString("NOMBTEMA"));
                objTemaBean.setESTADO(rs.getString("ESTADO"));
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) { }
        return objTemaBean;
    }
  
    public int InsertarTema(TemaBean objTemaBean){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("INSERT INTO tema(CODCARRERA, CODMATERIA, CODUNIDTEMA, CODTEMA, NOMBTEMA, ESTADO) VALUES (?,?,?,?,?,?);");
            pt.setInt(1,objTemaBean.getCODCARRERA());
            pt.setInt(2,objTemaBean.getCODMATERIA());
            pt.setInt(3,objTemaBean.getCODUNIDTEMA());
            pt.setInt(4,objTemaBean.getCODTEMA());
            pt.setString(5,objTemaBean.getNOMBTEMA());
            pt.setString(6,objTemaBean.getESTADO());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        }catch (Exception e){ }
        return estado;
    }
  
    public int ModificarTema(TemaBean objTemaBean){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("UPDATE tema SET NOMBTEMA=?,ESTADO=? WHERE CODCARRERA=? AND CODMATERIA=? AND CODUNIDTEMA=? AND CODTEMA=?;");
            pt.setString(1,objTemaBean.getNOMBTEMA());
            pt.setString(2,objTemaBean.getESTADO());
            pt.setInt(3,objTemaBean.getCODCARRERA());
            pt.setInt(4,objTemaBean.getCODMATERIA());
            pt.setInt(5,objTemaBean.getCODUNIDTEMA());
            pt.setInt(6,objTemaBean.getCODTEMA());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){ }
        return estado;    
    }
    
    public void EliminarTema(TemaBean objTemaBean){  
        try{ 
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("DELETE FROM tema WHERE CODCARRERA=? AND CODMATERIA=? AND CODUNIDTEMA=? AND CODTEMA=?;");
            pt.setInt(1,objTemaBean.getCODCARRERA());
            pt.setInt(2,objTemaBean.getCODMATERIA());
            pt.setInt(3,objTemaBean.getCODUNIDTEMA());
            pt.setInt(4,objTemaBean.getCODTEMA());
            pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
            javax.swing.JOptionPane.showMessageDialog(null, e.getMessage());
        }
    }
    
    public int generarCodigo( ){
        int i=0;
        try {
            cn  =  ConexionBD.getConexionBD();
            pt  = cn.prepareStatement("SELECT MAX(CODTEMA) FROM tema;");
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
    
    public ArrayList<TemaBean>  FiltrarTema(TemaBean  objTemaBean){   
      try {
       cn=ConexionBD.getConexionBD();
       String sql= "SELECT CODTEMA, NOMBTEMA FROM tema WHERE CODCARRERA=? AND CODMATERIA=? AND CODUNIDTEMA=?;";
       pt=cn.prepareStatement(sql);
       pt.setInt(1,objTemaBean.getCODCARRERA());
       pt.setInt(2,objTemaBean.getCODMATERIA());
       pt.setInt(3,objTemaBean.getCODUNIDTEMA());
       rs=pt.executeQuery();
       lista=new ArrayList<TemaBean>(); 
       while(rs.next()){
        objTemaBean=new TemaBean();
        objTemaBean.setCODTEMA(rs.getInt("CODTEMA"));
        objTemaBean.setNOMBTEMA(rs.getString("NOMBTEMA"));
        lista.add(objTemaBean);           
       }
       pt.close();
       rs.close();
       cn.close();
      } catch (Exception e){ }
    return  lista;  
  }
}