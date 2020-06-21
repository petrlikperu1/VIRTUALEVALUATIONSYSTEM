package DAO;

import BEAN.AyudaBean;
import UTIL.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class AyudaDAO {
    
    Connection            cn=null;
  PreparedStatement     pt=null;
  ResultSet             rs=null;
  ArrayList<AyudaBean> lista=null;
  AyudaBean             objAyudaBean=null;
    public ArrayList<AyudaBean>  ListarAyuda()
  {       try 
      {
       cn=ConexionBD.getConexionBD();
       pt=cn.prepareStatement("SELECT	A.CODAYUDA, A.NUMAYUDA ,A.ENUNCIADOAYUDA,A.CODPREG, P.ENUNCIADOPREG,M.CODMATERIA, M.NOMBMATERIA,C.CODCARRERA,C.NOMBCARRERA,U.CODUNIDTEMA,U.NOMBUNIDTEMA,N.CODNIVEL,N.NOMBNIVEL,T.CODTEMA,T.NOMBTEMA\n" +
                                "from  ayudas AS A\n" +
                                "inner join pregunta as P on P.CODPREG=A.CODPREG\n" +
                                "inner join niveldificultad as N on N.CODNIVEL=P.CODNIVEL  INNER JOIN carreraprofesional as C ON P.CODCARRERA=C.CODCARRERA\n" +
                                "INNER JOIN materia as M ON P.CODMATERIA=M.CODMATERIA INNER JOIN unidadtematica as U ON P.CODUNIDTEMA=U.CODUNIDTEMA INNER JOIN tema AS T ON P.CODTEMA=T.CODTEMA ;");
       rs=pt.executeQuery();
       lista=new ArrayList<AyudaBean>(); 
       while(rs.next())
       {
        objAyudaBean=new AyudaBean();
        objAyudaBean.setCODAYUDA(rs.getInt(1));
        objAyudaBean.setNUMAYUDA(rs.getInt(2));
        objAyudaBean.setENUNCIADOAYUDA(rs.getString(3));
        
        objAyudaBean.setCODPREG(rs.getInt(4));
        objAyudaBean.setENUNCIADOPREG(rs.getString(5));
        objAyudaBean.setCODMATERIA(rs.getInt(6));
        objAyudaBean.setNOMBMATERIA(rs.getString(7));
        objAyudaBean.setCODCARRERA(rs.getInt(8));
        objAyudaBean.setNOMBCARRERA(rs.getString(9));
        objAyudaBean.setCODUNIDTEMA(rs.getInt(10));
        objAyudaBean.setNOMBUNIDTEMA(rs.getString(11));
        objAyudaBean.setCODNIVEL(rs.getInt(12));
        objAyudaBean.setNOMBNIVEL(rs.getString(13));
        objAyudaBean.setCODTEMA(rs.getInt(14));
        objAyudaBean.setNOMBTEMA(rs.getString(15));
        
        lista.add(objAyudaBean);           
       }
       pt.close();
       rs.close();
       cn.close();
          
      } catch (Exception e) 
      {
      }
    return  lista;  
  }
    
  public AyudaBean  ObtenerAyuda(int numayuda, int codpreg)
  {    
      AyudaBean objAyudaBean=new AyudaBean();
      try 
      {
       cn=ConexionBD.getConexionBD();
       pt=cn.prepareStatement("select ENUNCIADOAYUDA, PENALIDADAYUDA  from ayudas where NUMAYUDA=? and CODPREG=? ;");
       pt.setInt(1,numayuda);
       pt.setInt(2,codpreg);
       rs=pt.executeQuery();
        
       while(rs.next())
       {
        objAyudaBean.setENUNCIADOAYUDA(rs.getString(1));
        objAyudaBean.setPENALIDADAYUDA2(rs.getInt(2));
           
       }
       pt.close();
       rs.close();
       cn.close();
          
      } catch (Exception e) 
      {
      }
    return  objAyudaBean;  
  }
    
  public   int  InsertarAyuda(AyudaBean   objAyudaBean, int contador, int pregunta)
  {  int estado=0;
      try 
      {
       cn=ConexionBD.getConexionBD();
       pt=cn.prepareStatement("Insert into  ayudas(CODPREG,ENUNCIADOAYUDA,NUMAYUDA,PENALIDADAYUDA,ESTADOAYUDA)"+
               " VALUES("+pregunta+",?,"+contador+",1,'A');");
       pt.setString(1,objAyudaBean.getENUNCIADOAYUDA());
            estado= pt.executeUpdate();
       pt.close();
       cn.close();
          
      } catch (Exception e) 
      {
      }
     return estado;    
  }
  
    
  
  public int generarCodigo() {
        int i = 0;
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT MAX(CODAYUDA) FROM   ayudas;");
            rs = pt.executeQuery();
            if (rs.next()) {
                i = rs.getInt(1) + 1;
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return i;
    } 
  
  
  public void InsertarAyudas(ArrayList<AyudaBean>  listaayudas){       
        String  sql=null;
        try{
            cn=ConexionBD.getConexionBD();
            sql="INSERT INTO ayudas(CODPREG,CODAYUDA,NUMAYUDA,ENUNCIADOAYUDA,PENALIDADAYUDA,IMGAYUDA,ESTADOIMGAYUDA,ESTADOAYUDA) VALUES (?,?,?,?,?,?,?,?)";
                   
           
           for(AyudaBean   obj:listaayudas)
            {
           
            pt=cn.prepareStatement(sql);
            
            pt.setInt(1,obj.getCODPREG());
            pt.setInt(2,obj.getCODAYUDA());
            pt.setInt(3,obj.getNUMAYUDA());
            pt.setString(4,obj.getENUNCIADOAYUDA());
            pt.setInt(5,obj.getPENALIDADAYUDA2());
            pt.setString(6,obj.getIMGAYUDA());
            pt.setString(7,obj.getESTADOINGAYUDA());
            pt.setString(8,obj.getESTADOAYUDA());
            pt.executeUpdate();
            }
            pt.close();
            cn.close();
        } catch (Exception e){
            System.out.print("ERROR DE AYUDAS => "+e.getMessage());
        }
          
    }
    
   public void ModificarAyudas(ArrayList<AyudaBean>  listaayudas){       
        String  sql=null;
        try{
            cn=ConexionBD.getConexionBD();
            sql="UPDATE ayudas SET CODPREG=?,NUMAYUDA=?,ENUNCIADOAYUDA=?,PENALIDADAYUDA=?,IMGAYUDA=?,ESTADOIMGAYUDA=?,ESTADOAYUDA=? WHERE CODAYUDA=?";
            for(AyudaBean obj:listaayudas){
                pt=cn.prepareStatement(sql);
                pt.setInt(1,obj.getCODPREG());
                pt.setInt(2,obj.getNUMAYUDA());
                pt.setString(3,obj.getENUNCIADOAYUDA());
                pt.setInt(4,obj.getPENALIDADAYUDA());
                pt.setString(5,obj.getIMGAYUDA());
                pt.setString(6,obj.getESTADOINGAYUDA());
                pt.setString(7,obj.getESTADOAYUDA());
                pt.setInt(8,obj.getCODAYUDA());
                pt.executeUpdate();
            }
            pt.close();
            cn.close();
        } catch (Exception e){
            System.out.print("ERROR DE AYUDAS => "+e.getMessage());
        }
    } 
   
   public void EliminarAyuda(int codigo){
       try{ 
       cn=ConexionBD.getConexionBD();
       pt=cn.prepareStatement("DELETE FROM ayudas WHERE CODPREG=?");
       pt.setInt(1,codigo);
       pt.executeUpdate();
       pt.close();
       cn.close();
      } catch (Exception e) { }
   }
  
  
}
