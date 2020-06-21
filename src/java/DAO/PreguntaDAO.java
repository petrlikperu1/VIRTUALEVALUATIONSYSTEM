
package DAO;

import  BEAN.AlternativaBean;
import  BEAN.PreguntaBean;
import  UTIL.ConexionBD;
import  java.sql.*;
import  java.util.ArrayList;

public class PreguntaDAO  {
    Connection            cn=null;
  PreparedStatement     pt=null;
  ResultSet             rs=null;
  ArrayList<PreguntaBean > lista=null;
  PreguntaBean             objPreguntaBean=null;
  
    public ArrayList<PreguntaBean>  ListarPregunta() {
        try {
       cn=ConexionBD.getConexionBD();
       pt=cn.prepareStatement("SELECT	P.CODPREG,P.ENUNCIADOPREG,M.CODMATERIA, M.NOMBMATERIA,C.CODCARRERA,C.NOMBCARRERA,U.CODUNIDTEMA,U.NOMBUNIDTEMA,N.CODNIVEL,N.NOMBNIVEL,T.CODTEMA,T.NOMBTEMA \n" +
"from  pregunta as P inner join niveldificultad as N on N.CODNIVEL=P.CODNIVEL  INNER JOIN carreraprofesional as C ON P.CODCARRERA=C.CODCARRERA\n" +
                "INNER JOIN materia as M ON P.CODMATERIA=M.CODMATERIA INNER JOIN unidadtematica as U ON P.CODUNIDTEMA=U.CODUNIDTEMA INNER JOIN tema AS T ON P.CODTEMA=T.CODTEMA");
       rs=pt.executeQuery();
       lista=new ArrayList<PreguntaBean>(); 
            while(rs.next()) {
        objPreguntaBean=new PreguntaBean();
        objPreguntaBean.setCODPREG(rs.getInt(1));
        objPreguntaBean.setENUNCIADOPREG(rs.getString(2));
        objPreguntaBean.setCODMATERIA(rs.getInt(3));
        objPreguntaBean.setNOMBMATERIA(rs.getString(4));
        objPreguntaBean.setCODCARRERA(rs.getInt(5));
        objPreguntaBean.setNOMBCARRERA(rs.getString(6));
        objPreguntaBean.setCODUNIDTEMA(rs.getInt(7));
        objPreguntaBean.setNOMBUNIDTEMA(rs.getString(8));
        objPreguntaBean.setCODNIVEL(rs.getInt(9));
        objPreguntaBean.setNOMBNIVEL(rs.getString(10));
        objPreguntaBean.setCODTEMA(rs.getInt(11));
        objPreguntaBean.setNOMBTEMA(rs.getString(12));
        lista.add(objPreguntaBean);           
       }
       pt.close();
       rs.close();
       cn.close();
        } catch (Exception e) { }
    return  lista;  
  }
  
    //public String TraerPregunta(int codpreg){
    public PreguntaBean TraerPregunta(int codpreg){
        try {
            cn=ConexionBD.getConexionBD();
            StringBuilder  sql=new StringBuilder();
              sql.append("SELECT ");
              sql.append("p.CODPREG, p.ENUNCIADOPREG, p.RESPUESTAOK, p.IMAGENPREG, p.ESTADOIMGPREG,");
              sql.append("p.ESTADOPREG, p.CODNIVEL, p.CODCARRERA, p.CODMATERIA, p.CODUNIDTEMA, p.CODTEMA,");
              sql.append("a1.CODALTER AS CODALTER1, a1.ENUNCIADOALTER AS ENUNCIADOALTER1, ");
              sql.append("a2.CODALTER AS CODALTER2, a2.ENUNCIADOALTER AS ENUNCIADOALTER2, ");
              sql.append("a3.CODALTER AS CODALTER3, a3.ENUNCIADOALTER AS ENUNCIADOALTER3, ");
              sql.append("a4.CODALTER AS CODALTER4, a4.ENUNCIADOALTER AS ENUNCIADOALTER4, ");
              sql.append("h1.CODAYUDA AS CODAYUDA1, h1.ENUNCIADOAYUDA AS ENUNCIADOAYUDA1, ");
              sql.append("h2.CODAYUDA AS CODAYUDA2, h2.ENUNCIADOAYUDA AS ENUNCIADOAYUDA2, ");
              sql.append("h3.CODAYUDA AS CODAYUDA3, h3.ENUNCIADOAYUDA AS ENUNCIADOAYUDA3 ");
              sql.append("FROM pregunta p ");
              sql.append("INNER JOIN alternativa a1 ON a1.CODPREG = p.CODPREG AND a1.NUMALTER = '1' ");
              sql.append("INNER JOIN alternativa a2 ON a2.CODPREG = p.CODPREG AND a2.NUMALTER = '2' ");
              sql.append("INNER JOIN alternativa a3 ON a3.CODPREG = p.CODPREG AND a3.NUMALTER = '3' ");
              sql.append("INNER JOIN alternativa a4 ON a4.CODPREG = p.CODPREG AND a4.NUMALTER = '4' ");
              sql.append("LEFT JOIN ayudas h1 ON h1.CODPREG = p.CODPREG AND h1.NUMAYUDA = '1' ");
              sql.append("LEFT JOIN ayudas h2 ON h2.CODPREG = p.CODPREG AND h2.NUMAYUDA = '2' ");
              sql.append("LEFT JOIN ayudas h3 ON h3.CODPREG = p.CODPREG AND h3.NUMAYUDA = '3' ");
              sql.append("WHERE p.CODPREG = ?");
            pt=cn.prepareStatement(sql.toString());
            pt.setInt(1, codpreg);
            
            rs=pt.executeQuery();
            objPreguntaBean = new PreguntaBean();
            while(rs.next()){
                objPreguntaBean.setCODPREG(rs.getInt("CODPREG"));
                objPreguntaBean.setENUNCIADOPREG(rs.getString("ENUNCIADOPREG"));
                objPreguntaBean.setRESPUESTAOK(rs.getString("RESPUESTAOK"));
                objPreguntaBean.setIMAGENPREG(rs.getString("IMAGENPREG"));
                objPreguntaBean.setESTADOIMGPREG(rs.getString("ESTADOIMGPREG"));
                objPreguntaBean.setESTADOPREG(rs.getString("ESTADOPREG"));
                objPreguntaBean.setCODNIVEL(rs.getInt("CODNIVEL"));
                objPreguntaBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objPreguntaBean.setCODMATERIA(rs.getInt("CODMATERIA"));
                objPreguntaBean.setCODUNIDTEMA(rs.getInt("CODUNIDTEMA"));
                objPreguntaBean.setCODTEMA(rs.getInt("CODTEMA"));
                objPreguntaBean.setCODALTER1(rs.getInt("CODALTER1"));
                objPreguntaBean.setENUNCIADOALTER1(rs.getString("ENUNCIADOALTER1"));
                objPreguntaBean.setCODALTER2(rs.getInt("CODALTER2"));
                objPreguntaBean.setENUNCIADOALTER2(rs.getString("ENUNCIADOALTER2"));
                objPreguntaBean.setCODALTER3(rs.getInt("CODALTER3"));
                objPreguntaBean.setENUNCIADOALTER3(rs.getString("ENUNCIADOALTER3"));
                objPreguntaBean.setCODALTER4(rs.getInt("CODALTER4"));
                objPreguntaBean.setENUNCIADOALTER4(rs.getString("ENUNCIADOALTER4"));
                objPreguntaBean.setCODAYUDA1(rs.getInt("CODAYUDA1"));
                objPreguntaBean.setENUNCIADOAYUDA1(rs.getString("ENUNCIADOAYUDA1"));
                objPreguntaBean.setCODAYUDA2(rs.getInt("CODAYUDA2"));
                objPreguntaBean.setENUNCIADOAYUDA2(rs.getString("ENUNCIADOAYUDA2"));
                objPreguntaBean.setCODAYUDA3(rs.getInt("CODAYUDA3"));
                objPreguntaBean.setENUNCIADOAYUDA3(rs.getString("ENUNCIADOAYUDA3"));
                
                if(objPreguntaBean.getENUNCIADOAYUDA1()==null){
                    objPreguntaBean.setENUNCIADOAYUDA1("");
                }
                if(objPreguntaBean.getENUNCIADOAYUDA2()==null){
                    objPreguntaBean.setENUNCIADOAYUDA2("");
                }
                if(objPreguntaBean.getENUNCIADOAYUDA3()==null){
                    objPreguntaBean.setENUNCIADOAYUDA3("");
                }
            }
             pt.close();
             rs.close();
             cn.close();
        } catch (Exception e) { }
        return objPreguntaBean;
        //return pt.toString();
  }
  
    
   public   int  InsertarPregunta(PreguntaBean objPreguntaBean){
       int estado=0;
      try {
       cn=ConexionBD.getConexionBD();
       pt=cn.prepareStatement(""
               + "Insert into pregunta(CODPREG,ENUNCIADOPREG,RESPUESTAOK,IMAGENPREG ,ESTADOIMGPREG ,ESTADOPREG,CODNIVEL, CODCARRERA, CODMATERIA, CODUNIDTEMA, CODTEMA)"+
               " VALUES(?,?,?,?,?,?,?,?,?,?,?);");
       pt.setInt(1,objPreguntaBean.getCODPREG());
       pt.setString(2,objPreguntaBean.getENUNCIADOPREG());
       pt.setString(3,objPreguntaBean.getRESPUESTAOK());       
       pt.setString(4,"");
       pt.setString(5,"");
       pt.setString(6,"A");
       
       pt.setInt(7,objPreguntaBean.getCODNIVEL());
       pt.setInt(8,objPreguntaBean.getCODCARRERA());
       pt.setInt(9,objPreguntaBean.getCODMATERIA());
       pt.setInt(10,objPreguntaBean.getCODUNIDTEMA());
       pt.setInt(11,objPreguntaBean.getCODTEMA());
       estado= pt.executeUpdate();
       pt.close();
       cn.close();
          
      } catch (Exception e) { }
     return estado;    
  }
    
    public int InsertarAlternativa(AlternativaBean objAlternativa, int codigoP, int verdadero, int contador) {
        int estado=0;
        try {
       cn=ConexionBD.getConexionBD();
       String clave="F";
       if(verdadero==contador){
           clave="V";
       }else{
           clave="F";
       }
       pt=cn.prepareStatement("Insert into alternativa(CODPREG,NUMALTER,CLAVEALTER,ENUNCIADOALTER,ESTADOALTER)"+
               " VALUES("+codigoP+","+contador+",'"+clave+"',?,'A');");
       pt.setString(1,objAlternativa.getENUNCIADOALTER());
            estado= pt.executeUpdate();
       pt.close();
       cn.close();
        } catch (Exception e){ }
     return estado;    
  }
  
  public int ModificarPregunta(PreguntaBean objPreguntaBean) {
        int estado=0;
        try {
       cn=ConexionBD.getConexionBD();
       pt=cn.prepareStatement("UPDATE pregunta SET ENUNCIADOPREG=?,RESPUESTAOK=?,IMAGENPREG=?,ESTADOIMGPREG=?,ESTADOPREG=?,CODNIVEL=?,CODCARRERA=?,CODMATERIA=?,CODUNIDTEMA=?,CODTEMA=? WHERE CODPREG=?");
       pt.setString(1,objPreguntaBean.getENUNCIADOPREG());
       pt.setString(2,objPreguntaBean.getRESPUESTAOK());
       pt.setString(3,objPreguntaBean.getIMAGENPREG());
       pt.setString(4,objPreguntaBean.getESTADOIMGPREG());
       pt.setString(5,objPreguntaBean.getESTADOPREG());
       pt.setInt(6,objPreguntaBean.getCODNIVEL());
       pt.setInt(7,objPreguntaBean.getCODCARRERA());
       pt.setInt(8,objPreguntaBean.getCODMATERIA());
       pt.setInt(9,objPreguntaBean.getCODUNIDTEMA());
       pt.setInt(10,objPreguntaBean.getCODTEMA());
       pt.setInt(11,objPreguntaBean.getCODPREG());
       estado= pt.executeUpdate();
       pt.close();
       cn.close();
      } catch (Exception e) { }
     return estado;    
  }  
    
    public void EliminarPregunta(int codigo){  
      try{ 
       cn=ConexionBD.getConexionBD();
       pt=cn.prepareStatement("DELETE FROM pregunta WHERE CODPREG=?");
       pt.setInt(1,codigo);
       pt.executeUpdate();
       pt.close();
       cn.close();
      } catch (Exception e) { }
  } 
   
       public int generarCodigo() {
        int i = 0;
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT MAX(CODPREG) FROM  pregunta;");
            rs = pt.executeQuery();
            if (rs.next()) {
                i = rs.getInt(1) + 1;
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) { }
        return i;
    }
      
      public int  generarCodigo2( ){
      int i=1;
      try {
          cn  =  ConexionBD.getConexionBD();
          pt  = cn.prepareStatement("SELECT MAX(CODPREG) FROM  pregunta;");
          rs  =pt.executeQuery();
         if(rs.next()){
         i = rs.getInt(1);
         }
               pt.close();
               rs.close();
               cn.close();
      } catch (Exception e) {    }
   return i;
      }
      
      public ArrayList<PreguntaBean>  FiltrarPregunta(PreguntaBean  objPreguntaBean){   
      try {
       cn=ConexionBD.getConexionBD();
       String sql= "SELECT P.CODPREG,P.ENUNCIADOPREG,N.NOMBNIVEL FROM pregunta as p\n" +
            "INNER JOIN niveldificultad as N on N.CODNIVEL = P.CODNIVEL\n" +
            "WHERE CODTEMA=?;";
       pt=cn.prepareStatement(sql);
       //pt.setInt(1,objUnidadTematicaBean.getCODCARRERA());
       pt.setInt(1,objPreguntaBean.getCODTEMA());
       rs=pt.executeQuery();
       lista=new ArrayList<PreguntaBean>(); 
       while(rs.next()){
        objPreguntaBean=new PreguntaBean();
        objPreguntaBean.setCODPREG(rs.getInt("CODPREG"));
        objPreguntaBean.setENUNCIADOPREG(rs.getString("ENUNCIADOPREG"));
        objPreguntaBean.setNOMBNIVEL(rs.getString("NOMBNIVEL"));
        lista.add(objPreguntaBean);           
       }
       pt.close();
       rs.close();
       cn.close();
      } catch (Exception e){ }
    return  lista;  
    }
      
      
    public  void  ActualizarImagenPregunta(int  codpregunta,String  rutafoto){
       int  estado=0;
      try {
          
            cn=ConexionBD.getConexionBD();
            String  sql="update  pregunta set IMAGENPREG=?  WHERE  CODPREG=?   ;";     
           
            pt=cn.prepareStatement(sql);
            pt.setString(1,rutafoto);
            pt.setInt(2, codpregunta);
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
           System.out.println(e.getMessage());
        }     
    }  
      
      
      
      
      
  }
  
    

