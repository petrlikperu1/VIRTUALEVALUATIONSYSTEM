
package DAO;

import BEAN.RolxDocenteBean;
import UTIL.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class AlumnoxMateriaxProgramacionExamDAO {
    Connection                          cn=null;
    PreparedStatement                   ps=null;
    ResultSet                           rs=null;
    ArrayList<RolxDocenteBean>          lista=null;
    ArrayList<RolxDocenteBean>          listaHor=null;
    RolxDocenteBean                     objRolxDocenteBean=null;
    
    public ArrayList<RolxDocenteBean> listarDatos(){
        try {
            cn=ConexionBD.getConexionBD();
            ps=cn.prepareStatement("");
            rs=ps.executeQuery();
            lista=new ArrayList<RolxDocenteBean>();
            while(rs.next()){
                objRolxDocenteBean=new RolxDocenteBean();
                objRolxDocenteBean.setNOMBCARRERA(rs.getString(1));
                objRolxDocenteBean.setNOMBMATERIA(rs.getString(2));
                objRolxDocenteBean.setNOMBDOCENTE(rs.getString(3));
                lista.add(objRolxDocenteBean);
            }
            ps.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return lista;
    }
    
    public int ModificarSupervisor(RolxDocenteBean objRolxDocenteBean){
        int estado=0;
        try {
            cn=ConexionBD.getConexionBD();
            ps=cn.prepareStatement("");
            ps.setString(1,objRolxDocenteBean.getNOMBCARRERA());
            ps.setString(2,objRolxDocenteBean.getNOMBMATERIA());
            ps.setString(3,objRolxDocenteBean.getNOMBDOCENTE());
            estado=ps.executeUpdate();
            ps.close();
            cn.close();
        } catch (Exception e) {
        }
        return estado;
    }
    public ArrayList<RolxDocenteBean> listarHorario(){
        try {
            cn=ConexionBD.getConexionBD();
            ps=cn.prepareStatement("");
            rs=ps.executeQuery();
            listaHor=new ArrayList<RolxDocenteBean>();
            while(rs.next()){
                objRolxDocenteBean=new RolxDocenteBean();
                objRolxDocenteBean.setNOMBCARRERA(rs.getString(1));
                objRolxDocenteBean.setNOMBMATERIA(rs.getString(2));
                objRolxDocenteBean.setNOMBDOCENTE(rs.getString(3));
                listaHor.add(objRolxDocenteBean);
            }
            ps.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return listaHor;
    }
}
