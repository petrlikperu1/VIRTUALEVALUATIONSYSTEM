package DAO;
import BEAN.DocenteBean;
import BEAN.DocentexMateriaBean;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;

public class DocentexMateriaDAO {
    Connection                      cn=null;
    PreparedStatement               pt=null;
    ResultSet                       rs=null;
    ArrayList<DocentexMateriaBean>  lista=null;
    ArrayList<DocenteBean>          listadocente=null;
    DocentexMateriaBean             objDocentexMateriaBean=null;
    
    public ArrayList<DocentexMateriaBean>  ListarDocentexMateria(){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT DM.CODDOCENXMATERIA,C.CODCARRERA,C.NOMBCARRERA,M.CODMATERIA,M.NOMBMATERIA,D.CODDOCENTE,CONCAT(D.NOMBDOCENTE, ' ', D.APEPATERDOCENTE, ' ', D.APEMATERDOCENTE) AS NOMBDOCENTE " +
            "FROM docentexmateria AS DM INNER JOIN materia AS M ON DM.CODMATERIA = M.CODMATERIA AND DM.CODCARRERA = M.CODCARRERA INNER JOIN carreraprofesional AS C ON M.CODCARRERA = C.CODCARRERA INNER JOIN docente AS D ON DM.CODDOCENTE = D.CODDOCENTE " +
            "WHERE C.ESTADO = 'A' AND M.ESTADO = 'A' AND D.ESTADO = 'A';");
            rs=pt.executeQuery();
            lista=new ArrayList<DocentexMateriaBean>(); 
            while(rs.next()){
                objDocentexMateriaBean=new DocentexMateriaBean();        
                objDocentexMateriaBean.setCODDOCENXMATERIA(rs.getInt(1));
                objDocentexMateriaBean.setCODCARRERA(rs.getInt(2));
                objDocentexMateriaBean.setNOMBCARRERA(rs.getString(3));
                objDocentexMateriaBean.setCODMATERIA(rs.getInt(4));
                objDocentexMateriaBean.setNOMBMATERIA(rs.getString(5));
                objDocentexMateriaBean.setCODDOCENTE(rs.getInt(6));
                objDocentexMateriaBean.setNOMBDOCENTE(rs.getString(7));
                lista.add(objDocentexMateriaBean); 
            }
            pt.close();
            rs.close();
            cn.close();
        }catch(Exception e){ }
        return  lista;  
    }
    
    public ArrayList<DocenteBean> TraerDocentexMateria(DocentexMateriaBean objDocentexMateriaBean){
        try {
            String sql ="SELECT DM.CODDOCENTE, D.NOMBDOCENTE, D.APEPATERDOCENTE, D.APEMATERDOCENTE \n" +
                        "FROM docentexmateria DM \n" +
                        "INNER JOIN docente D ON D.CODDOCENTE=DM.CODDOCENTE \n" +
                        "WHERE DM.CODDOCENTE NOT IN(SELECT CODDOCENTE FROM rolxdocente rd WHERE CODCARRERA=? AND CODMATERIA=? and not rd.CODDOCENTE = ?) \n" +
                        "AND DM.CODCARRERA=? AND DM.CODMATERIA=?";
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement(sql);
            pt.setInt(1, objDocentexMateriaBean.getCODCARRERA());
            pt.setInt(2, objDocentexMateriaBean.getCODMATERIA());
            pt.setInt(3, objDocentexMateriaBean.getCODDOCENTE());
            pt.setInt(4, objDocentexMateriaBean.getCODCARRERA());
            pt.setInt(5, objDocentexMateriaBean.getCODMATERIA());
            rs=pt.executeQuery();
            listadocente=new ArrayList<DocenteBean>();
            while(rs.next()){
                DocenteBean objDocenteBean=new DocenteBean();
                objDocenteBean.setCODDOCENTE(rs.getInt("CODDOCENTE"));
                objDocenteBean.setNOMBDOCENTE(rs.getString("NOMBDOCENTE"));
                objDocenteBean.setAPEPATERDOCENTE(rs.getString("APEPATERDOCENTE"));
                objDocenteBean.setAPEMATERDOCENTE(rs.getString("APEMATERDOCENTE"));
                listadocente.add(objDocenteBean);
            }
        } catch (Exception e) { }
        return listadocente;
    }
    public DocentexMateriaBean getDocentexMateria(DocentexMateriaBean objDocentexMateriaBean){
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT DM.CODDOCENXMATERIA,"
                    + "C.CODCARRERA,"
                    + "C.NOMBCARRERA,"
                    + "M.CODMATERIA,"
                    + "M.NOMBMATERIA,"
                    + "D.CODDOCENTE,"
                    + "CONCAT(D.NOMBDOCENTE, ' ', D.APEPATERDOCENTE, ' ', D.APEMATERDOCENTE) AS NOMBDOCENTE " 
                    + "FROM docentexmateria AS DM "
                    + "INNER JOIN materia AS M ON DM.CODMATERIA = M.CODMATERIA AND DM.CODCARRERA = M.CODCARRERA "
                    + "INNER JOIN carreraprofesional AS C ON M.CODCARRERA = C.CODCARRERA "
                    + "INNER JOIN docente AS D ON DM.CODDOCENTE = D.CODDOCENTE " 
                    + "WHERE DM.CODDOCENXMATERIA = ?;");
            pt.setInt(1, objDocentexMateriaBean.getCODDOCENXMATERIA());
            rs=pt.executeQuery();
            objDocentexMateriaBean=new DocentexMateriaBean(); 
            
            if(rs.next()){
                objDocentexMateriaBean.setCODDOCENXMATERIA(rs.getInt(1));
                objDocentexMateriaBean.setCODCARRERA(rs.getInt(2));
                objDocentexMateriaBean.setNOMBCARRERA(rs.getString(3));
                objDocentexMateriaBean.setCODMATERIA(rs.getInt(4));
                objDocentexMateriaBean.setNOMBMATERIA(rs.getString(5));
                objDocentexMateriaBean.setCODDOCENTE(rs.getInt(6));
                objDocentexMateriaBean.setNOMBDOCENTE(rs.getString(7));
            }
        } catch (Exception e) {
            javax.swing.JOptionPane.showMessageDialog(null, e.getMessage());
        }
        return objDocentexMateriaBean;
    }
    public int InsertarDocentexMateria(DocentexMateriaBean objDocentexMateriaBean){
        int estado=0;
        try{
            if(objDocentexMateriaBean.getCODDOCENXMATERIA()==0){
                objDocentexMateriaBean.setCODDOCENXMATERIA(generarCodigo());
            }
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("Insert into docentexmateria(CODDOCENXMATERIA,CODCARRERA,CODMATERIA,CODDOCENTE)VALUES(?,?,?,?);");
            pt.setInt(1,objDocentexMateriaBean.getCODDOCENXMATERIA());
            pt.setInt(2,objDocentexMateriaBean.getCODCARRERA());
            pt.setInt(3,objDocentexMateriaBean.getCODMATERIA());
            pt.setInt(4,objDocentexMateriaBean.getCODDOCENTE());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){ }
        return estado;    
    }
    
    public int ModificarDocentexMateria(DocentexMateriaBean objDocentexMateriaBean){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("UPDATE  DocentexMateria set CODCARRERA=?, CODMATERIA=?, CODDOCENTE=? WHERE CODDOCENXMATERIA=?;");
            pt.setInt(1,objDocentexMateriaBean.getCODCARRERA());
            pt.setInt(2,objDocentexMateriaBean.getCODMATERIA());
            pt.setInt(3,objDocentexMateriaBean.getCODDOCENTE());
            pt.setInt(4,objDocentexMateriaBean.getCODDOCENXMATERIA());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){ }
        return estado;    
    }
    
    public void EliminarDocentexMateria(DocentexMateriaBean objDocentexMateriaBean){  
        try{ 
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("DELETE  FROM docentexmateria  WHERE CODDOCENTEXMATERIA=?,CODCARRERA=?,CODMATERIA=? AND CODDOCENTE;");
            pt.setInt(1,objDocentexMateriaBean.getCODDOCENXMATERIA());
            pt.setInt(2,objDocentexMateriaBean.getCODCARRERA());
            pt.setInt(3,objDocentexMateriaBean.getCODMATERIA());
            pt.setInt(4,objDocentexMateriaBean.getCODDOCENTE());
            pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){ }
    }
    
    public int generarCodigo( ){
        int i=0;
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT MAX(CODDOCENXMATERIA) FROM  docentexmateria;");
            rs = pt.executeQuery();
            if(rs.next()) i = rs.getInt(1)+1;
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) { }
        return i;
    }
}