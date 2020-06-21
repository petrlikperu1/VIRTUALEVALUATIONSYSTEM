package DAO;
import BEAN.DesarrolloExamenGeneradoBean;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;
public class DesarrolloExamenGeneradoDAO 
{
  Connection          cn=null;
    PreparedStatement   pt=null;
    ResultSet           rs=null;
    ArrayList<DesarrolloExamenGeneradoBean>  lista=null;
    DesarrolloExamenGeneradoBean             objDesarrolloExamenGeneradoBean=null;
    
 public int  ActualizarDesarrolloExamenGenerado(DesarrolloExamenGeneradoBean objDesarrolloExamenGeneradoBean){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("INSERT INTO desarrolloexamengenerado(CODCARRERA,NOMBCARRERA,ESTADO) VALUES (?,?,?);");
//            pt.setInt(1, objCarreraProfesionalBean.getCODCARRERA());
//            pt.setString(2, objCarreraProfesionalBean.getNOMBCARRERA());
//            pt.setString(3, objCarreraProfesionalBean.getESTADO());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){ }
        return estado;    
    }
   
}
