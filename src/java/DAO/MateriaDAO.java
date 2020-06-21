package DAO;
import   BEAN.MateriaBean;
import   UTIL.ConexionBD;
import   java.sql.*;
import java.util.ArrayList;
public class MateriaDAO
{
  Connection            cn=null;
  PreparedStatement     pt=null;
  ResultSet             rs=null;
  ArrayList<MateriaBean > lista=null;
  MateriaBean             objMateriaBean=null;
  
  public ArrayList<MateriaBean> ListarMateria(){   
      try{
        cn=ConexionBD.getConexionBD();
        
          String sql= "SELECT M.CODCARRERA, C.NOMBCARRERA,M.CODMATERIA, M.NOMBMATERIA, M.ESTADO \n" +
                    "FROM materia M \n" +
                    "INNER JOIN carreraprofesional C ON C.CODCARRERA=M.CODCARRERA; " ;
                    
       pt=cn.prepareStatement(sql);
       rs=pt.executeQuery();
       lista=new ArrayList<MateriaBean>(); 
       while(rs.next()){
        objMateriaBean=new MateriaBean ();
        objMateriaBean.setCODCARRERA(rs.getInt("CODCARRERA"));
        objMateriaBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));
        objMateriaBean.setCODMATERIA(rs.getInt("CODMATERIA"));
        objMateriaBean.setNOMBMATERIA(rs.getString("NOMBMATERIA"));
        objMateriaBean.setESTADO(rs.getString("ESTADO"));       
        lista.add(objMateriaBean);           
       }
       pt.close();
       rs.close();
       cn.close();
      } catch (Exception e){ }
    return  lista;  
  }
  

  
  
  
  public MateriaBean TraerMateria(MateriaBean objMateriaBean){
      try {
        cn=ConexionBD.getConexionBD();
        String sql= "SELECT M.CODMATERIA, M.CODCARRERA, C.NOMBCARRERA, M.NOMBMATERIA, M.ESTADO \n" +
                    "FROM materia M \n" +
                    "INNER JOIN carreraprofesional C ON C.CODCARRERA=M.CODCARRERA " +
                    "WHERE M.CODCARRERA=? AND M.CODMATERIA=?;";
       pt=cn.prepareStatement(sql);
       pt.setInt(1,objMateriaBean.getCODCARRERA());
       pt.setInt(2,objMateriaBean.getCODMATERIA());
       rs=pt.executeQuery();
       while(rs.next()){
        objMateriaBean=new MateriaBean ();
        objMateriaBean.setCODCARRERA(rs.getInt("CODCARRERA"));
        objMateriaBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));
        objMateriaBean.setCODMATERIA(rs.getInt("CODMATERIA"));
        objMateriaBean.setNOMBMATERIA(rs.getString("NOMBMATERIA"));
        objMateriaBean.setESTADO(rs.getString("ESTADO"));
       }
       pt.close();
       rs.close();
       cn.close();
      } catch (Exception e){ }
      return objMateriaBean;
  }
  
  public int InsertarMateria(MateriaBean objMateriaBean){
      int estado=0;
      try{
       cn=ConexionBD.getConexionBD();
       pt=cn.prepareStatement("INSERT INTO materia(CODCARRERA,CODMATERIA,NOMBMATERIA,ESTADO)VALUES(?,?,?,?);");
       pt.setInt(1,objMateriaBean.getCODCARRERA());
       pt.setInt(2,objMateriaBean.getCODMATERIA());
       pt.setString(3,objMateriaBean.getNOMBMATERIA());
       pt.setString(4,objMateriaBean.getESTADO());
       estado= pt.executeUpdate();
       pt.close();
       cn.close();
      } catch (Exception e){ }
     return estado;    
  }
  
  public int ModificarMateria(MateriaBean objMateriaBean){
      int estado=0;
      try{
       cn=ConexionBD.getConexionBD();
       pt=cn.prepareStatement("UPDATE materia SET NOMBMATERIA=?,ESTADO=? WHERE CODCARRERA=? AND CODMATERIA=?;");
       pt.setString(1,objMateriaBean.getNOMBMATERIA());
       pt.setString(2,objMateriaBean.getESTADO());       
       pt.setInt(3,objMateriaBean.getCODCARRERA());
       pt.setInt(4,objMateriaBean.getCODMATERIA());
       estado= pt.executeUpdate();
       pt.close();
       cn.close();
      } catch (Exception e){
      System.out.println("Actualizacion :"+e.getMessage());
      }
     return estado;    
  }  
 public void EliminarMateria(MateriaBean objMateriaBean){  
      try{ 
       cn=ConexionBD.getConexionBD();
       pt=cn.prepareStatement("DELETE FROM materia WHERE CODCARRERA=? AND CODMATERIA=?;");
       pt.setInt(1,objMateriaBean.getCODCARRERA());
       pt.setInt(2,objMateriaBean.getCODMATERIA());
       pt.executeUpdate();
       pt.close();
       cn.close();
      } catch (Exception e){ }
  }
 public int  generarCodigo(){
      int i=0;
      try {
          cn  =  ConexionBD.getConexionBD();
          pt  = cn.prepareStatement("SELECT MAX(CODMATERIA) FROM  materia;");
          rs  =pt.executeQuery();
         if(rs.next()){
         i = rs.getInt(1)+1;
         }
               pt.close();
               rs.close();
               cn.close();
      } catch (Exception e) { }
   return i;
}

public ArrayList<MateriaBean> FiltrarMateria(MateriaBean objMateriaBean){   
      try{
       cn=ConexionBD.getConexionBD();
       String sql= "SELECT * from materia where CODCARRERA=?;";
       pt=cn.prepareStatement(sql);
       pt.setInt(1,objMateriaBean.getCODCARRERA());
       rs=pt.executeQuery();
       lista=new ArrayList<MateriaBean >(); 
       while(rs.next()){
        objMateriaBean=new MateriaBean ();
        objMateriaBean.setCODCARRERA(rs.getInt("CODCARRERA"));        
        objMateriaBean.setCODMATERIA(rs.getInt("CODMATERIA"));
        objMateriaBean.setNOMBMATERIA(rs.getString("NOMBMATERIA"));
        objMateriaBean.setESTADO(rs.getString("ESTADO"));
        lista.add(objMateriaBean);           
       }
       pt.close();
       rs.close();
       cn.close();
      } catch (Exception e){
      
     
      }
    return  lista;  
  }


public ArrayList<MateriaBean> ListarMateriaRegistrarPregunta(){   
      try{
        cn=ConexionBD.getConexionBD();
        String sql= "SELECT M.CODMATERIA, M.CODCARRERA, C.NOMBCARRERA, M.NOMBMATERIA, M.ESTADO \n" +
                    "FROM materia M \n" +
                    "INNER JOIN carreraprofesional C ON C.CODCARRERA=M.CODCARRERA ORDER BY CODMATERIA ASC;";
       pt=cn.prepareStatement(sql);
       rs=pt.executeQuery();
       lista=new ArrayList<MateriaBean >(); 
       while(rs.next()){
        objMateriaBean=new MateriaBean ();
        objMateriaBean.setCODCARRERA(rs.getInt("CODCARRERA"));
        objMateriaBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));
        objMateriaBean.setCODMATERIA(rs.getInt("CODMATERIA"));
        objMateriaBean.setNOMBMATERIA(rs.getString("NOMBMATERIA"));
        objMateriaBean.setESTADO(rs.getString("ESTADO"));
        lista.add(objMateriaBean);           
       }
       pt.close();
       rs.close();
       cn.close();
      } catch (Exception e){ }
    return  lista;  
  }












}