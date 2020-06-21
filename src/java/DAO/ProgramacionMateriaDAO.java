package DAO;

import BEAN.*;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;
import javax.swing.JOptionPane;

public class ProgramacionMateriaDAO {

    Connection cn = null;
    PreparedStatement pt = null;
    ResultSet rs = null;
    ArrayList<ProgramacionMateriaBean> listadoProgramacionMateriaBean = null;
    ArrayList<DocenteBean> listadoDocenteBean = null;
    ProgramacionMateriaBean objProgramacionMateriaBean = null;
    DocenteBean objDocenteBean = null;

    
    
    public ArrayList<ProgramacionMateriaBean> MostrarProgramacionMateria() {
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT PM.CODPROGRAMAT,\n"
                    + "	    PM.CODDOCENTE,\n"
                    + "       PM.CODCARRERA,\n"
                    + "       PM.CODMATERIA,\n"
                    + "       PM.CODSEMESTRE,\n"
                    + "       PM.ESTADO,\n"
                    + "       concat(D.NOMBDOCENTE,' ',D.APEPATERDOCENTE) AS NOMBREDOCENTE,\n"
                    + "       CP.NOMBCARRERA,\n"
                    + "       M.NOMBMATERIA,\n"
                    + "       S.NOMBSEMESTRE\n"
                    + " FROM programacionmateria AS PM\n"
                    + " INNER JOIN docente AS D ON D.CODDOCENTE = PM.CODDOCENTE\n"
                    + " INNER JOIN carreraprofesional AS CP ON CP.CODCARRERA = PM.CODCARRERA\n"
                    + " INNER JOIN materia AS M ON M.CODMATERIA = PM.CODMATERIA\n"
                    + " INNER JOIN semestre AS S ON S.CODSEMESTRE = PM.CODSEMESTRE  ");
          
            rs = pt.executeQuery();
            listadoProgramacionMateriaBean = new ArrayList<ProgramacionMateriaBean>();
            while (rs.next()) {
                objProgramacionMateriaBean = new ProgramacionMateriaBean();

                objProgramacionMateriaBean.setCODPROGRAMAT(rs.getInt("CODPROGRAMAT"));
                objProgramacionMateriaBean.setCODDOCENTE(rs.getInt("CODDOCENTE"));
                objProgramacionMateriaBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objProgramacionMateriaBean.setCODMATERIA(rs.getInt("CODMATERIA"));
                objProgramacionMateriaBean.setCODSEMESTRE(rs.getInt("CODSEMESTRE"));
                objProgramacionMateriaBean.setESTADO(rs.getString("ESTADO"));
                objProgramacionMateriaBean.setNOMBREDOCENTE(rs.getString("NOMBREDOCENTE"));
                objProgramacionMateriaBean.setNOMBRECARRERA(rs.getString("NOMBCARRERA"));
                objProgramacionMateriaBean.setNOMBREMATERIA(rs.getString("NOMBMATERIA"));
                objProgramacionMateriaBean.setNOMBRESEMESTRE(rs.getString("NOMBSEMESTRE"));

                listadoProgramacionMateriaBean.add(objProgramacionMateriaBean);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
        return listadoProgramacionMateriaBean;
    }
    
    
    
    public ArrayList<ProgramacionMateriaBean> ListarProgramacionMateria(ProgramacionMateriaBean pe_ProgramacionMateria) {
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT PM.CODPROGRAMAT,\n"
                    + "	    PM.CODDOCENTE,\n"
                    + "       PM.CODCARRERA,\n"
                    + "       PM.CODMATERIA,\n"
                    + "       PM.CODSEMESTRE,\n"
                    + "       PM.ESTADO,\n"
                    + "       concat(D.NOMBDOCENTE,' ',D.APEPATERDOCENTE) AS NOMBREDOCENTE,\n"
                    + "       CP.NOMBCARRERA,\n"
                    + "       M.NOMBMATERIA,\n"
                    + "       S.NOMBSEMESTRE\n"
                    + "FROM programacionmateria AS PM\n"
                    + "INNER JOIN docente AS D ON D.CODDOCENTE = PM.CODDOCENTE\n"
                    + "INNER JOIN carreraprofesional AS CP ON CP.CODCARRERA = PM.CODCARRERA\n"
                    + "INNER JOIN materia AS M ON M.CODMATERIA = PM.CODMATERIA\n"
                    + "INNER JOIN semestre AS S ON S.CODSEMESTRE = PM.CODSEMESTRE\n"
                    + "WHERE 1 = CASE WHEN ? = 0 THEN 1\n"
                    + "               WHEN ? = PM.CODDOCENTE THEN 1\n"
                    + "               ELSE 0\n"
                    + "		  END\n"
                    + "  AND 1 = CASE WHEN ? = 0 THEN 1\n"
                    + "               WHEN ? = PM.CODCARRERA THEN 1\n"
                    + "               ELSE 0\n"
                    + "		  END\n"
                    + "  AND 1 = CASE WHEN ? = 0 THEN 1\n"
                    + "               WHEN ? = PM.CODMATERIA THEN 1\n"
                    + "               ELSE 0\n"
                    + "		  END\n"
                    + "  AND 1 = CASE WHEN ? = 0 THEN 1\n"
                    + "               WHEN ? = PM.CODSEMESTRE THEN 1\n"
                    + "               ELSE 0\n"
                    + "		  END");
            pt.setInt(1, pe_ProgramacionMateria.getCODDOCENTE());
            pt.setInt(2, pe_ProgramacionMateria.getCODDOCENTE());
            pt.setInt(3, pe_ProgramacionMateria.getCODCARRERA());
            pt.setInt(4, pe_ProgramacionMateria.getCODCARRERA());
            pt.setInt(5, pe_ProgramacionMateria.getCODMATERIA());
            pt.setInt(6, pe_ProgramacionMateria.getCODMATERIA());
            pt.setInt(7, pe_ProgramacionMateria.getCODSEMESTRE());
            pt.setInt(8, pe_ProgramacionMateria.getCODSEMESTRE());

            rs = pt.executeQuery();
            listadoProgramacionMateriaBean = new ArrayList<ProgramacionMateriaBean>();
            while (rs.next()) {
                objProgramacionMateriaBean = new ProgramacionMateriaBean();

                objProgramacionMateriaBean.setCODPROGRAMAT(rs.getInt("CODPROGRAMAT"));
                objProgramacionMateriaBean.setCODDOCENTE(rs.getInt("CODDOCENTE"));
                objProgramacionMateriaBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objProgramacionMateriaBean.setCODMATERIA(rs.getInt("CODMATERIA"));
                objProgramacionMateriaBean.setCODSEMESTRE(rs.getInt("CODSEMESTRE"));
                objProgramacionMateriaBean.setESTADO(rs.getString("ESTADO"));
                objProgramacionMateriaBean.setNOMBREDOCENTE(rs.getString("NOMBREDOCENTE"));
                objProgramacionMateriaBean.setNOMBRECARRERA(rs.getString("NOMBCARRERA"));
                objProgramacionMateriaBean.setNOMBREMATERIA(rs.getString("NOMBMATERIA"));
                objProgramacionMateriaBean.setNOMBRESEMESTRE(rs.getString("NOMBSEMESTRE"));

                listadoProgramacionMateriaBean.add(objProgramacionMateriaBean);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
        return listadoProgramacionMateriaBean;
    }

    public ProgramacionMateriaBean getProgramacionMateria(ProgramacionMateriaBean objProgramacionMateriaBean) {
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT  PM.CODPROGRAMAT,\n"
                    + "	    PM.CODDOCENTE,\n"
                    + "       PM.CODCARRERA,\n"
                    + "       PM.CODMATERIA,\n"
                    + "       PM.CODSEMESTRE,\n"
                    + "       PM.ESTADO,\n"
                    + "       concat(D.NOMBDOCENTE,' ',D.APEPATERDOCENTE) AS NOMBREDOCENTE,\n"
                    + "       CP.NOMBCARRERA,\n"
                    + "       M.NOMBMATERIA,\n"
                    + "       S.NOMBSEMESTRE       \n"
                    + "FROM programacionmateria AS PM\n"
                    + "INNER JOIN docente AS D ON D.CODDOCENTE = PM.CODDOCENTE\n"
                    + "INNER JOIN carreraprofesional AS CP ON CP.CODCARRERA = PM.CODCARRERA\n"
                    + "INNER JOIN materia AS M ON M.CODMATERIA = PM.CODMATERIA\n"
                    + "INNER JOIN semestre AS S ON S.CODSEMESTRE = PM.CODSEMESTRE\n"
                    + "WHERE PM.CODPROGRAMAT = ?;");

            pt.setInt(1, objProgramacionMateriaBean.getCODPROGRAMAT());
            rs = pt.executeQuery();
            objProgramacionMateriaBean = new ProgramacionMateriaBean();
            if (rs.next()) {
                objProgramacionMateriaBean.setCODPROGRAMAT(rs.getInt("CODPROGRAMAT"));
                objProgramacionMateriaBean.setCODDOCENTE(rs.getInt("CODDOCENTE"));
                objProgramacionMateriaBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objProgramacionMateriaBean.setCODMATERIA(rs.getInt("CODMATERIA"));
                objProgramacionMateriaBean.setCODSEMESTRE(rs.getInt("CODSEMESTRE"));
                objProgramacionMateriaBean.setESTADO(rs.getString("ESTADO"));
                objProgramacionMateriaBean.setNOMBREDOCENTE(rs.getString("NOMBREDOCENTE"));
                objProgramacionMateriaBean.setNOMBRECARRERA(rs.getString("NOMBCARRERA"));
                objProgramacionMateriaBean.setNOMBREMATERIA(rs.getString("NOMBMATERIA"));
                objProgramacionMateriaBean.setNOMBRESEMESTRE(rs.getString("NOMBSEMESTRE"));
            }
        } catch (Exception e) {
            javax.swing.JOptionPane.showMessageDialog(null, e.getMessage());
        }
        return objProgramacionMateriaBean;
    }

    public int InsertarProgramacionMateria(ProgramacionMateriaBean objProgramacionMateriaBean) {
        int estado = 0;
        try {
            if (objProgramacionMateriaBean.getCODPROGRAMAT() == 0) {
                objProgramacionMateriaBean.setCODPROGRAMAT(generarCodigo());
            }
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("  INSERT INTO programacionmateria(CODPROGRAMAT,CODDOCENTE,CODCARRERA,CODMATERIA,CODSEMESTRE,ESTADO)\n"
                    + "  VALUES(?,?,?,?,?,?);");
            pt.setInt(1, objProgramacionMateriaBean.getCODPROGRAMAT());
            pt.setInt(2, objProgramacionMateriaBean.getCODDOCENTE());
            pt.setInt(3, objProgramacionMateriaBean.getCODCARRERA());
            pt.setInt(4, objProgramacionMateriaBean.getCODMATERIA());
            pt.setInt(5, objProgramacionMateriaBean.getCODSEMESTRE());
            pt.setString(6, "A");
            estado = pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
            javax.swing.JOptionPane.showMessageDialog(null, e.getMessage());
        }
        return estado;
    }

    public int ModificarProgramacionMateria(ProgramacionMateriaBean objProgramacionMateriaBean) {
        int estado = 0;
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("  UPDATE programacionmateria SET\n"
                    + "	CODDOCENTE 		= 	?,\n"
                    + "	CODCARRERA 		= 	?,\n"
                    + "	CODMATERIA 		= 	?,\n"
                    + "	CODSEMESTRE             = 	?,\n"
                    + "	ESTADO 			= 	?\n"
                    + "  WHERE CODPROGRAMAT = ?;");
            pt.setInt(1, objProgramacionMateriaBean.getCODDOCENTE());
            pt.setInt(2, objProgramacionMateriaBean.getCODCARRERA());
            pt.setInt(3, objProgramacionMateriaBean.getCODMATERIA());
            pt.setInt(4, objProgramacionMateriaBean.getCODSEMESTRE());
            pt.setString(5, "A");
            pt.setInt(6, objProgramacionMateriaBean.getCODPROGRAMAT());
            estado = pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
            javax.swing.JOptionPane.showMessageDialog(null, e.getMessage());
        }
        return estado;
    }

    public void EliminarProgramacionMateria(ProgramacionMateriaBean objProgramacionMateriaBean) {
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("DELETE  FROM programacionmateria  WHERE CODPROGRAMAT=?;");
            pt.setInt(1, objProgramacionMateriaBean.getCODPROGRAMAT());
            pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
    }

    public int generarCodigo() {
        int i = 0;
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT MAX(CODPROGRAMAT) FROM  programacionmateria;");
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

    public ArrayList<DocenteBean> ListarDocentesProgramacionMateria(ProgramacionMateriaBean pe_ProgramacionMateria) {
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT DISTINCT D.CODDOCENTE,\n"
                    + "       concat(D.NOMBDOCENTE,' ',D.APEPATERDOCENTE) AS NOMBREDOCENTE\n"
                    + "FROM docente AS D \n"
                    + "INNER JOIN docentexmateria AS DM ON DM.CODDOCENTE = D.CODDOCENTE\n"
                    + "WHERE DM.CODCARRERA = ?\n"
                    + "AND   DM.CODMATERIA = ?\n"
                    + "AND D.CODDOCENTE NOT IN (SELECT PM.CODDOCENTE FROM programacionmateria PM\n"
                    + "						 WHERE PM.CODCARRERA = DM.CODCARRERA\n"
                    + "							AND PM.CODMATERIA = DM.CODMATERIA\n"
                    + "                                                   AND NOT PM.CODDOCENTE = ?"
                    + "                            AND PM.CODSEMESTRE = ?)");
            pt.setInt(1, pe_ProgramacionMateria.getCODCARRERA());
            pt.setInt(2, pe_ProgramacionMateria.getCODMATERIA());
            pt.setInt(3, pe_ProgramacionMateria.getCODDOCENTE());
            pt.setInt(4, pe_ProgramacionMateria.getCODSEMESTRE());
            rs = pt.executeQuery();
            listadoDocenteBean = new ArrayList<DocenteBean>();
            while (rs.next()) {
                objDocenteBean = new DocenteBean();

                objDocenteBean.setCODDOCENTE(rs.getInt("CODDOCENTE"));
                objDocenteBean.setNOMBDOCENTE(rs.getString("NOMBREDOCENTE"));

                listadoDocenteBean.add(objDocenteBean);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
        return listadoDocenteBean;
    }

    public ArrayList<ProgramacionMateriaBean> ListarMateriasAsignadasDocente(DocenteSBean Dcoente, ProgramacionMateriaBean vl_ProgramacionMateriaBean) {
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT    PM.CODPROGRAMAT,\n"
                                    + "         PM.CODDOCENTE,\n"
                                    + "         PM.CODCARRERA,\n"
                                    + "         PM.CODMATERIA,\n"
                                    + "         PM.CODSEMESTRE,\n"
                                    + "         PM.ESTADO,\n"
                                    + "         concat(D.NOMBDOCENTE,' ',D.APEPATERDOCENTE) AS NOMBREDOCENTE,\n"
                                    + "         CP.NOMBCARRERA,\n"
                                    + "         M.NOMBMATERIA,\n"
                                    + "         S.NOMBSEMESTRE\n"
                                    + "FROM programacionmateria AS PM\n"
                                    + "INNER JOIN docente AS D ON D.CODDOCENTE = PM.CODDOCENTE\n"
                                    + "INNER JOIN carreraprofesional AS CP ON CP.CODCARRERA = PM.CODCARRERA\n"
                                    + "INNER JOIN materia AS M ON M.CODMATERIA = PM.CODMATERIA\n"
                                    + "INNER JOIN semestre AS S ON S.CODSEMESTRE = PM.CODSEMESTRE\n"
                                    + "WHERE PM.CODSEMESTRE = ? AND PM.CODCARRERA = ? AND PM.CODDOCENTE = ?");
            
            pt.setInt(1, vl_ProgramacionMateriaBean.getCODSEMESTRE());
            pt.setInt(2, vl_ProgramacionMateriaBean.getCODCARRERA());
            pt.setInt(3, Dcoente.getCODDOCENTE());

            rs = pt.executeQuery();
            listadoProgramacionMateriaBean = new ArrayList<ProgramacionMateriaBean>();
            while (rs.next()) {
                objProgramacionMateriaBean = new ProgramacionMateriaBean();

                objProgramacionMateriaBean.setCODPROGRAMAT(rs.getInt("CODPROGRAMAT"));
                objProgramacionMateriaBean.setCODDOCENTE(rs.getInt("CODDOCENTE"));
                objProgramacionMateriaBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objProgramacionMateriaBean.setCODMATERIA(rs.getInt("CODMATERIA"));
                objProgramacionMateriaBean.setCODSEMESTRE(rs.getInt("CODSEMESTRE"));
                objProgramacionMateriaBean.setESTADO(rs.getString("ESTADO"));
                objProgramacionMateriaBean.setNOMBREDOCENTE(rs.getString("NOMBREDOCENTE"));
                objProgramacionMateriaBean.setNOMBRECARRERA(rs.getString("NOMBCARRERA"));
                objProgramacionMateriaBean.setNOMBREMATERIA(rs.getString("NOMBMATERIA"));
                objProgramacionMateriaBean.setNOMBRESEMESTRE(rs.getString("NOMBSEMESTRE"));

                listadoProgramacionMateriaBean.add(objProgramacionMateriaBean);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
        return listadoProgramacionMateriaBean;
    }

}
