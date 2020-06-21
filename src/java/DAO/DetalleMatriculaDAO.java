

package DAO;
import BEAN.*;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;
public class DetalleMatriculaDAO 
{

    
    
    
    
    Connection                  cn=null;
    PreparedStatement           pt=null;
    ResultSet                   rs=null;
    ArrayList<DetalleMatriculaBean>  listaDetalleMatricula=null;
    
    DetalleMatriculaBean             objDetalleMatriculaBean=null;
    

    public ArrayList<DetalleMatriculaBean> ListarCursosMatriculadosxProgramacionExamenes(MatriculaBean   objMatriculaBean){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT DISTINCT P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P "
                                    + " INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT "
                                    + " INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT "
                                    + " INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA  "
                                    + " INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA "
                                    + " INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where T.CODSEMESTRE=? and T.CODALU=?  ");
            pt.setInt(1,objMatriculaBean.getCODSEMESTRE() );
            pt.setInt(2,objMatriculaBean.getCODALU());
            rs=pt.executeQuery();
            listaDetalleMatricula=new ArrayList<DetalleMatriculaBean>(); 
            while(rs.next()){
                objDetalleMatriculaBean=new DetalleMatriculaBean ();
                objDetalleMatriculaBean.setCODMATRICULA(rs.getInt(1));
                objDetalleMatriculaBean.setCODDETAMATRI(rs.getInt(2));
                objDetalleMatriculaBean.setNOMBMATERIA(rs.getString(3));
                objDetalleMatriculaBean.setNOMBSEMESTRE(rs.getString(4)); 
                objDetalleMatriculaBean.setCODMATERIA(rs.getInt(5));
                listaDetalleMatricula.add( objDetalleMatriculaBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
            System.out.println(e.getMessage());
        }
        return   listaDetalleMatricula;  
    }
    
    
    
    
    
    
    
}
