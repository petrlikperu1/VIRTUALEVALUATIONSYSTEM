package DAO;
import BEAN.DetalleEstructuraExamenBean;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;

public class DetalleEstructuraExamenDAO {
    Connection          cn=null;
    PreparedStatement   pt=null;
    ResultSet           rs=null;
    ArrayList<DetalleEstructuraExamenBean>  lista=null;
    DetalleEstructuraExamenBean             objDetalleEstructuraExamenBean=null;
    
    public ArrayList<DetalleEstructuraExamenBean> listarDetalleEstructuraExamen(int codexamen){
        try{
            cn=ConexionBD.getConexionBD();
            String sql ="SELECT dee.CODESTRUCEXAMEN, dee.CODDETAESCTRUCEXA, dee.NUMITEM, dee.CODNIVEL, \n" +
                        "nd.NOMBNIVEL, dee.CANTPREG, dee.PUNTAJEXPREG, dee.PENALIDADXPREG, dee.PENALIDADAYUDA, \n"
                        + "T.CODTEMA, T.NOMBTEMA \n" +
                        "FROM detalleestructuraexamen dee \n" +
                        "INNER JOIN niveldificultad nd ON nd.CODNIVEL=dee.CODNIVEL \n" +
                        "INNER JOIN TEMA T ON T.CODTEMA = dee.CODTEMA \n"+
                        "WHERE CODESTRUCEXAMEN = ?";
            pt=cn.prepareStatement(sql);
            pt.setInt(1, codexamen);
            rs=pt.executeQuery();
            lista=new ArrayList<DetalleEstructuraExamenBean>();
            while(rs.next()){
                objDetalleEstructuraExamenBean = new DetalleEstructuraExamenBean();
                objDetalleEstructuraExamenBean.setCODESTRUCEXAMEN(rs.getInt("CODESTRUCEXAMEN"));
                objDetalleEstructuraExamenBean.setCODDETAESCTRUCEXA(rs.getInt("CODDETAESCTRUCEXA"));
                objDetalleEstructuraExamenBean.setNUMITEM(rs.getInt("NUMITEM"));
                objDetalleEstructuraExamenBean.setCODNIVEL(rs.getInt("CODNIVEL"));
                objDetalleEstructuraExamenBean.setNOMBNIVEL(rs.getString("NOMBNIVEL"));
                objDetalleEstructuraExamenBean.setCANTPREG(rs.getInt("CANTPREG"));
                objDetalleEstructuraExamenBean.setPUNTAJEXPREG(rs.getInt("PUNTAJEXPREG"));
                objDetalleEstructuraExamenBean.setPENALIDADXPREG(rs.getDouble("PENALIDADXPREG"));
                objDetalleEstructuraExamenBean.setPENALIDADAYUDA(rs.getDouble("PENALIDADAYUDA"));
                objDetalleEstructuraExamenBean.setCODTEMA(rs.getInt("CODTEMA"));
                objDetalleEstructuraExamenBean.setNOMBTEMA(rs.getString("NOMBTEMA"));
                lista.add(objDetalleEstructuraExamenBean);
            }
            rs.close();
            pt.close();
            cn.close();
        }catch(Exception e)
        {
             System.out.println("===>"+e.getMessage());
        }
        return lista;
    }
}
