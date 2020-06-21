package DAO;
import BEAN.HorariodeLaboratorioDisponiblesBean;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;

public class HorariodeLaboratorioDisponiblesDAO {
    Connection          cn=null;
    PreparedStatement   pt=null;
    ResultSet           rs=null;
    ArrayList<HorariodeLaboratorioDisponiblesBean>  lista=null;
    HorariodeLaboratorioDisponiblesBean             objHorariodeLabDisBean=null;
    
    public ArrayList<HorariodeLaboratorioDisponiblesBean> ListarHorariodeLabDis(){
        try {
            String sql= "SELECT H.CODHORARIOLAB, H.HORAINICIO, H.HORAFIN, H.ESTADO, H.CODLAB, L.DESCRIPLAB, \n" +
                        "H.CODTURNO, T.NOMBTURNO, H.CODDIA, D.NOMBDIA, H.CODSEMESTRE, S.NOMBSEMESTRE \n" +
                        "FROM horariodelaboratoriodisponibles H \n" +
                        "INNER JOIN laboratorio L ON L.CODLAB=H.CODLAB \n" +
                        "INNER JOIN turno T ON T.CODTURNO=H.CODTURNO \n" +
                        "INNER JOIN dia D ON D.CODDIA=H.CODDIA \n" +
                        "INNER JOIN semestre S ON S.CODSEMESTRE=H.CODSEMESTRE;";
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement(sql);
            rs=pt.executeQuery();
            lista=new ArrayList<HorariodeLaboratorioDisponiblesBean>();
            while(rs.next()){
                objHorariodeLabDisBean=new HorariodeLaboratorioDisponiblesBean();
                objHorariodeLabDisBean.setCODHORARIOLAB(rs.getInt("CODHORARIOLAB"));
                objHorariodeLabDisBean.setHORAINICIO(rs.getString("HORAINICIO"));
                objHorariodeLabDisBean.setHORAFIN(rs.getString("HORAFIN"));
                objHorariodeLabDisBean.setESTADO(rs.getString("ESTADO"));
                objHorariodeLabDisBean.setCODLAB(rs.getInt("CODLAB"));
                objHorariodeLabDisBean.setDESCRIPLAB(rs.getString("DESCRIPLAB"));
                objHorariodeLabDisBean.setCODTURNO(rs.getInt("CODTURNO"));
                objHorariodeLabDisBean.setNOMBTURNO(rs.getString("NOMBTURNO"));
                objHorariodeLabDisBean.setCODDIA(rs.getInt("CODDIA"));
                objHorariodeLabDisBean.setNOMBDIA(rs.getString("NOMBDIA"));
                objHorariodeLabDisBean.setCODSEMESTRE(rs.getInt("CODSEMESTRE"));
                objHorariodeLabDisBean.setNOMBSEMESTRE(rs.getString("NOMBSEMESTRE"));
                lista.add(objHorariodeLabDisBean);
            }
            rs.close();
            pt.close();
            cn.close();
        } catch (Exception e) { }
        return lista;
    }
    
    public ArrayList<HorariodeLaboratorioDisponiblesBean> TraerHorariodeLabDis(HorariodeLaboratorioDisponiblesBean objHorariodeLabDisBean){
        try {
            int[] a=new int[4];
            a[0]=1;
            String sql= "SELECT H.CODHORARIOLAB, DATE_FORMAT(H.HORAINICIO,'%h:%i %p') AS HORAINICIO, DATE_FORMAT(H.HORAFIN,'%h:%i %p') AS HORAFIN, \n" +
                        "H.CODLAB, L.DESCRIPLAB, H.CODTURNO, T.NOMBTURNO, H.CODDIA, D.NOMBDIA \n" +
                        "FROM horariodelaboratoriodisponibles H \n" +
                        "INNER JOIN laboratorio L ON L.CODLAB=H.CODLAB \n" +
                        "INNER JOIN turno T ON T.CODTURNO=H.CODTURNO \n" +
                        "INNER JOIN dia D ON D.CODDIA=H.CODDIA \n" +
                        "WHERE 1 = 1 \n" +//"WHERE H.CODHORARIOLAB NOT IN (SELECT DISTINCT CODHORARIOLAB FROM programacionexamen) \n" +
                        "AND H.CODSEMESTRE=?";
            a[1]=a[0];
            if(objHorariodeLabDisBean.getCODLAB()!= 0){
                sql +=" AND H.CODLAB=?";
                a[1]=a[0]+1;
            }
            a[2]=a[1];
            if(objHorariodeLabDisBean.getCODTURNO()!= 0){
                sql +=" AND H.CODTURNO=?";
                a[2]=a[1]+1;
            }
            a[3]=a[2];
            if(objHorariodeLabDisBean.getCODDIA()!= 0){
                sql +=" AND H.CODDIA=?";
                a[3]=a[2]+1;
            }
            sql +=" ORDER BY L.DESCRIPLAB,H.CODDIA,DATE_FORMAT(H.HORAINICIO,'%h:%i %p');";
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement(sql);
            pt.setInt(a[0], objHorariodeLabDisBean.getCODSEMESTRE());
            if(objHorariodeLabDisBean.getCODLAB()!= 0){
                pt.setInt(a[1], objHorariodeLabDisBean.getCODLAB());
            }
            if(objHorariodeLabDisBean.getCODTURNO()!= 0){
                pt.setInt(a[2], objHorariodeLabDisBean.getCODTURNO());
            }
            if(objHorariodeLabDisBean.getCODDIA()!= 0){
                pt.setInt(a[3], objHorariodeLabDisBean.getCODDIA());
            }
            
            rs=pt.executeQuery();
            lista=new ArrayList<HorariodeLaboratorioDisponiblesBean>();
            while(rs.next()){
                objHorariodeLabDisBean=new HorariodeLaboratorioDisponiblesBean();
                objHorariodeLabDisBean.setCODHORARIOLAB(rs.getInt("CODHORARIOLAB"));
                objHorariodeLabDisBean.setHORAINICIO(rs.getString("HORAINICIO"));
                objHorariodeLabDisBean.setHORAFIN(rs.getString("HORAFIN"));
                objHorariodeLabDisBean.setCODLAB(rs.getInt("CODLAB"));
                objHorariodeLabDisBean.setDESCRIPLAB(rs.getString("DESCRIPLAB"));
                objHorariodeLabDisBean.setCODTURNO(rs.getInt("CODTURNO"));
                objHorariodeLabDisBean.setNOMBTURNO(rs.getString("NOMBTURNO"));
                objHorariodeLabDisBean.setCODDIA(rs.getInt("CODDIA"));
                objHorariodeLabDisBean.setNOMBDIA(rs.getString("NOMBDIA"));
                lista.add(objHorariodeLabDisBean);
            }
            rs.close();
            pt.close();
            cn.close();
        } catch (SQLException e) { }
        return lista;
    }
    
       public HorariodeLaboratorioDisponiblesBean GetHorariodeLabDis( int codigo){
        try {
            String sql= "SELECT H.CODHORARIOLAB, H.HORAINICIO, H.HORAFIN, H.ESTADO, H.CODLAB, L.DESCRIPLAB, \n" +
                        "H.CODTURNO, T.NOMBTURNO, H.CODDIA, D.NOMBDIA, H.CODSEMESTRE, S.NOMBSEMESTRE \n" +
                        "FROM horariodelaboratoriodisponibles H \n" +
                        "INNER JOIN laboratorio L ON L.CODLAB=H.CODLAB \n" +
                        "INNER JOIN turno T ON T.CODTURNO=H.CODTURNO \n" +
                        "INNER JOIN dia D ON D.CODDIA=H.CODDIA \n" +
                        "INNER JOIN semestre S ON S.CODSEMESTRE=H.CODSEMESTRE "
                    + " WHERE H.CODHORARIOLAB = ? ;";
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement(sql);
            pt.setInt(1, codigo);
            rs=pt.executeQuery();
            if(rs.next()){
                objHorariodeLabDisBean=new HorariodeLaboratorioDisponiblesBean();
                objHorariodeLabDisBean.setCODHORARIOLAB(rs.getInt("CODHORARIOLAB"));
                objHorariodeLabDisBean.setHORAINICIO(rs.getString("HORAINICIO"));
                objHorariodeLabDisBean.setHORAFIN(rs.getString("HORAFIN"));
                objHorariodeLabDisBean.setESTADO(rs.getString("ESTADO"));
                objHorariodeLabDisBean.setCODLAB(rs.getInt("CODLAB"));
                objHorariodeLabDisBean.setDESCRIPLAB(rs.getString("DESCRIPLAB"));
                objHorariodeLabDisBean.setCODTURNO(rs.getInt("CODTURNO"));
                objHorariodeLabDisBean.setNOMBTURNO(rs.getString("NOMBTURNO"));
                objHorariodeLabDisBean.setCODDIA(rs.getInt("CODDIA"));
                objHorariodeLabDisBean.setNOMBDIA(rs.getString("NOMBDIA"));
                objHorariodeLabDisBean.setCODSEMESTRE(rs.getInt("CODSEMESTRE"));
                objHorariodeLabDisBean.setNOMBSEMESTRE(rs.getString("NOMBSEMESTRE"));
            }
            rs.close();
            pt.close();
            cn.close();
        } catch (Exception e) { }
        return objHorariodeLabDisBean;
    }
   
       
    public int InsertarHorariodeLabDis(HorariodeLaboratorioDisponiblesBean objHorariodeLabDisBean){
        int estado=0;
        try {
            
            if(objHorariodeLabDisBean.getCODHORARIOLAB()==0){
               objHorariodeLabDisBean.setCODHORARIOLAB(GenerarCodigo());
            }
            
            String sql= "INSERT INTO horariodelaboratoriodisponibles(\n" +
                        "CODHORARIOLAB, HORAINICIO, HORAFIN, CODLAB, \n" +
                        "CODTURNO, CODDIA, CODSEMESTRE, ESTADO) \n" +
                        "VALUES (?,?,?,?,?,?,?,?);";
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement(sql);
            pt.setInt(1, objHorariodeLabDisBean.getCODHORARIOLAB());
            pt.setString(2, objHorariodeLabDisBean.getHORAINICIO());
            pt.setString(3, objHorariodeLabDisBean.getHORAFIN());
            pt.setInt(4, objHorariodeLabDisBean.getCODLAB());
            pt.setInt(5, objHorariodeLabDisBean.getCODTURNO());
            pt.setInt(6, objHorariodeLabDisBean.getCODDIA());
            pt.setInt(7, objHorariodeLabDisBean.getCODSEMESTRE());
            pt.setString(8, objHorariodeLabDisBean.getESTADO());
            estado=pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) { }
        return estado;
    }
    
    public int ModifificarHorariodeLabDis(HorariodeLaboratorioDisponiblesBean objHorariodeLabDisBean){
        int estado=0;
        try {
            String sql= "UPDATE horariodelaboratoriodisponibles SET HORAINICIO=?, HORAFIN=?, \n" +
                        "CODLAB=?, CODTURNO=?, CODDIA=?,CODSEMESTRE=?,ESTADO=? \n" +
                        "WHERE CODHORARIOLAB=?;";
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement(sql);
            pt.setString(1, objHorariodeLabDisBean.getHORAINICIO());
            pt.setString(2, objHorariodeLabDisBean.getHORAFIN());
            pt.setInt(3, objHorariodeLabDisBean.getCODLAB());
            pt.setInt(4, objHorariodeLabDisBean.getCODTURNO());
            pt.setInt(5, objHorariodeLabDisBean.getCODDIA());
            pt.setInt(6, objHorariodeLabDisBean.getCODSEMESTRE());
            pt.setString(7, objHorariodeLabDisBean.getESTADO());
            pt.setInt(8, objHorariodeLabDisBean.getCODHORARIOLAB());
            estado=pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) { }
        return estado;
    }
    
    public void EliminarHorariodeLabDis(HorariodeLaboratorioDisponiblesBean objHorariodeLabDisBean){
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("DELETE FROM horariodelaboratoriodisponibles WHERE CODHORARIOLAB=?;");
            pt.setInt(1, objHorariodeLabDisBean.getCODHORARIOLAB());
            pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) { }
    }
    
    public int  GenerarCodigo(){
        int i=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT MAX(CODHORARIOLAB) FROM horariodelaboratoriodisponibles;");
            rs=pt.executeQuery();
            if(rs.next()){ i=rs.getInt(1)+1;}
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) { }
        return i;
    }
}
