
package DAO;
import BEAN.AlternativaBean;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;
public class AlternativaDAO 
{
    Connection              cn=null;
    PreparedStatement       pt=null;
    ResultSet               rs=null;
    ArrayList<AlternativaBean>   lista=null;
     AlternativaBean              objAlternativaBean=null;

     
     
    public void InsertarAlternativas(ArrayList<AlternativaBean>  listaalternativas){       
        String  sql=null;
        try{
            cn=ConexionBD.getConexionBD();
            sql="INSERT INTO alternativa(CODPREG,CODALTER,NUMALTER,CLAVEALTER,ENUNCIADOALTER,IMGALTER,ESTADOIMG,ESTADOALTER) VALUES (?,?,?,?,?,?,?,?)";
        
            for(AlternativaBean   obj:listaalternativas)
            {
            
            pt=cn.prepareStatement(sql);
           System.out.println(obj.getNUMEROALTERNATIVA());
            pt.setInt(1,obj.getCODPREG());
            pt.setInt(2,obj.getCODALTER());
            pt.setString(3,obj.getNUMALTER());
            pt.setString(4,obj.getCLAVEALTER());
            pt.setString(5,obj.getENUNCIADOALTER());
            pt.setString(6,obj.getIMGALTER());
            pt.setString(7,obj.getESTADOIMG());
            pt.setString(8,obj.getESTADOALTER());
            pt.executeUpdate();
            }
            pt.close();
            cn.close();
        } catch (Exception e){
            
        }
          
    }
    
   public int generarCodigo() {
        int i = 0;
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT MAX(CODALTER) FROM  alternativa;");
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
    
  
  public void ModificarAlternativas(ArrayList<AlternativaBean>  listaalternativas){       
        String  sql=null;
        try{
            cn=ConexionBD.getConexionBD();
            sql="UPDATE alternativa SET CODPREG=?,CLAVEALTER=?,ENUNCIADOALTER=?,IMGALTER=?,ESTADOIMG=?,ESTADOALTER=? WHERE CODALTER=? AND NUMALTER=?";
        
            for(AlternativaBean   obj:listaalternativas) {
                pt=cn.prepareStatement(sql);
                pt.setInt(1,obj.getCODPREG());
                pt.setString(2,obj.getCLAVEALTER());
                pt.setString(3,obj.getENUNCIADOALTER());
                pt.setString(4,obj.getIMGALTER());
                pt.setString(5,obj.getESTADOIMG());
                pt.setString(6,obj.getESTADOALTER());
                pt.setInt(7,obj.getCODALTER());
                pt.setString(8, obj.getNUMALTER());
                pt.executeUpdate();
            }
            pt.close();
            cn.close();
        } catch (Exception e){ }
    } 
   
 public void EliminarAlternativa(int codigo){
       try{ 
       cn=ConexionBD.getConexionBD();
       pt=cn.prepareStatement("DELETE FROM alternativa WHERE CODPREG=?");
       pt.setInt(1,codigo);
       pt.executeUpdate();
       pt.close();
       cn.close();
      } catch (Exception e) { }
   }  
   
   
    
}
