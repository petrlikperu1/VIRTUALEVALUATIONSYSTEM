package DAO;

import BEAN.*;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;

public class CarreraProfesionalDAO {

    Connection cn = null;
    PreparedStatement pt = null;
    ResultSet rs = null;
    ArrayList<CarreraProfesionalBean> lista = null;
    CarreraProfesionalBean objCarreraProfesionalBean = null;

    public ArrayList<CarreraProfesionalBean> ListarCarreraProfesional() {
        try {
            cn = ConexionBD.getConexionBD();
            String sql = "select  *  from   carreraprofesional ;";
            pt = cn.prepareStatement(sql);
            rs = pt.executeQuery();
            lista = new ArrayList<CarreraProfesionalBean>();
            while (rs.next()) {
                objCarreraProfesionalBean = new CarreraProfesionalBean();
                objCarreraProfesionalBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objCarreraProfesionalBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));
                objCarreraProfesionalBean.setESTADO(rs.getString("ESTADO"));
               
                lista.add(objCarreraProfesionalBean);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return lista;
    }

    public CarreraProfesionalBean TraerCarreraProfesional(int codigo) {
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT * FROM    carreraprofesional WHERE CODCARRERA=?;");
            pt.setInt(1, codigo);
            rs = pt.executeQuery();
            while (rs.next()) {
                objCarreraProfesionalBean = new CarreraProfesionalBean();
                objCarreraProfesionalBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objCarreraProfesionalBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));
                objCarreraProfesionalBean.setESTADO(rs.getString("ESTADO"));
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return objCarreraProfesionalBean;
    }

    public int InsertarCarreraProfesional(CarreraProfesionalBean objCarreraProfesionalBean) {
        int estado = 0;
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("INSERT INTO carreraprofesional(CODCARRERA,NOMBCARRERA,ESTADO) VALUES (?,?,?);");
            pt.setInt(1, objCarreraProfesionalBean.getCODCARRERA());
            pt.setString(2, objCarreraProfesionalBean.getNOMBCARRERA());
            pt.setString(3, objCarreraProfesionalBean.getESTADO());
            estado = pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
        return estado;
    }

    public int ModificarCarreraProfesional(CarreraProfesionalBean objCarreraProfesionalBean) {
        int estado = 0;
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("UPDATE carreraprofesional SET NOMBCARRERA=?, ESTADO=? WHERE CODCARRERA=?");
            pt.setString(1, objCarreraProfesionalBean.getNOMBCARRERA());
            pt.setString(2, objCarreraProfesionalBean.getESTADO());
            pt.setInt(3, objCarreraProfesionalBean.getCODCARRERA());
            estado = pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
        return estado;
    }

    public void EliminarCarreraProfesional(CarreraProfesionalBean objCarreraProfesionalBean) {
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("DELETE FROM carreraprofesional WHERE CODCARRERA=?");
            pt.setInt(1, objCarreraProfesionalBean.getCODCARRERA());
            pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (SQLException e) {
        }
    }

    public int GenerarCodigoCarreraProfesional() {
        int i = 0;
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT MAX(CODCARRERA) FROM carreraprofesional;");
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

    public ArrayList<CarreraProfesionalBean> ListarCarreraProfesionalRegistrarPregunta() {
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT CODCARRERA,NOMBCARRERA,ESTADO FROM carreraprofesional;");
            rs = pt.executeQuery();
            lista = new ArrayList<CarreraProfesionalBean>();
            while (rs.next()) {
                objCarreraProfesionalBean = new CarreraProfesionalBean();
                objCarreraProfesionalBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objCarreraProfesionalBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));
                objCarreraProfesionalBean.setESTADO(rs.getString("ESTADO"));
                lista.add(objCarreraProfesionalBean);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return lista;
    }

    public ArrayList<CarreraProfesionalBean> ListarCarreraProfecionalProgramacionMateria(DocenteSBean Dcoente, ProgramacionMateriaBean vl_ProgramacionMateriaBean) {
        try {
            cn = ConexionBD.getConexionBD();
            String sql =    "select DISTINCT CP.CODCARRERA,\n" +
                            "	             CP.NOMBCARRERA\n" +
                            "from programacionmateria AS PM\n" +
                            "INNER JOIN carreraprofesional AS CP ON CP.CODCARRERA = PM.CODCARRERA\n" +
                            "WHERE PM.CODDOCENTE = ? and PM.CODSEMESTRE = ?;";
            pt = cn.prepareStatement(sql);
            pt.setInt(1,Dcoente.getCODDOCENTE());
            pt.setInt(2,vl_ProgramacionMateriaBean.getCODSEMESTRE());
            rs = pt.executeQuery();
            lista = new ArrayList<CarreraProfesionalBean>();
            while (rs.next()) {
                objCarreraProfesionalBean = new CarreraProfesionalBean();
                objCarreraProfesionalBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objCarreraProfesionalBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));
                lista.add(objCarreraProfesionalBean);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return lista;}
}
