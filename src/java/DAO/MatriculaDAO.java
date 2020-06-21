package DAO;

import BEAN.CarreraProfesionalBean;
import BEAN.DocenteBean;
import BEAN.MateriaBean;
import BEAN.MatriculaBean;
import BEAN.ProgramacionMateriaBean;
import UTIL.ConexionBD;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;

public class MatriculaDAO {

    Connection cn = null;
    PreparedStatement pt = null;
    ResultSet rs = null;
    ArrayList<MatriculaBean> listamatricula = null;
    MatriculaBean objMatriculaBean = null;
    ArrayList<ProgramacionMateriaBean> listaProgramacionMateriaBean= null;
    ProgramacionMateriaBean objProgramacionMateriaBean= null;

    public MatriculaBean BuscarMatricula(MatriculaBean objMatriculaBean1) {
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT CODMATRICULA  FROM matricula  WHERE CODALU=? and CODSEMESTRE=? ;");
            pt.setInt(1, objMatriculaBean1.getCODALU());
            pt.setInt(2, objMatriculaBean1.getCODSEMESTRE());
            rs = pt.executeQuery();
            if (rs.next()) {
                objMatriculaBean = new MatriculaBean();
                objMatriculaBean.setCODMATRICULA(rs.getInt("CODMATRICULA"));
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return objMatriculaBean;
    }

    public ArrayList<MatriculaBean> ListarMatriculas(MatriculaBean matriculaBean) {
        try {
            cn = ConexionBD.getConexionBD();
            String sql = "SELECT M.CODMATRICULA,\n"
                    + "	M.CODSEMESTRE,\n"
                    + "       M.CODCARRERAPROCESIONAL,\n"
                    + "       M.CODALU,\n"
                    + "       M.FECHAMATRICULA,\n"
                    + "       M.ESTADO,\n"
                    + "       concat(A.NOMBALU,' ',A.APEPATERALU) AS NOMBREALUMNO,\n"
                    + "       CP.NOMBCARRERA,\n"
                    + "       S.NOMBSEMESTRE\n"
                    + "FROM Matricula AS M\n"
                    + "INNER JOIN Alumno AS A ON A.CODALU = M.CODALU\n"
                    + "INNER JOIN Semestre AS S ON S.CODSEMESTRE = M.CODSEMESTRE\n"
                    + "INNER JOIN Carreraprofesional AS CP ON CP.CODCARRERA = M.CODCARRERAPROCESIONAL\n"
                    + "WHERE 1 = CASE WHEN ? = 0 THEN 1\n"
                    + "		WHEN ? = CP.CODCARRERA THEN 1\n"
                    + "               ELSE 0 \n"
                    + "          END\n"
                    + "  AND 1 = CASE WHEN ? = 0 THEN 1\n"
                    + "		WHEN ? = S.CODSEMESTRE THEN 1\n"
                    + "		ELSE 0 \n"
                    + "	   END";
            pt = cn.prepareStatement(sql);
            pt.setInt(1, matriculaBean.getCODCARRERAPROFECIONAL());
            pt.setInt(2, matriculaBean.getCODCARRERAPROFECIONAL());

            pt.setInt(3, matriculaBean.getCODSEMESTRE());
            pt.setInt(4, matriculaBean.getCODSEMESTRE());

            rs = pt.executeQuery();
            listamatricula = new ArrayList<MatriculaBean>();
            while (rs.next()) {
                objMatriculaBean = new MatriculaBean();
                objMatriculaBean.setCODMATRICULA(rs.getInt("CODMATRICULA"));
                objMatriculaBean.setCODSEMESTRE(rs.getInt("CODSEMESTRE"));
                objMatriculaBean.setCODCARRERAPROFECIONAL(rs.getInt("CODCARRERAPROCESIONAL"));
                objMatriculaBean.setCODALU(rs.getInt("CODALU"));
                objMatriculaBean.setFECHAMATRICULA(rs.getString("FECHAMATRICULA"));
                objMatriculaBean.setESTADO(rs.getString("ESTADO"));
                objMatriculaBean.setNOMBREALUMNO(rs.getString("NOMBREALUMNO"));
                objMatriculaBean.setNOMBRECARRERAPROFECIONAL(rs.getString("NOMBCARRERA"));
                objMatriculaBean.setNOMBRESEMESTRE(rs.getString("NOMBSEMESTRE"));
                listamatricula.add(objMatriculaBean);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return listamatricula;
    }

    public ArrayList<CarreraProfesionalBean> ListarCarreraMatriculas(MatriculaBean matriculaBean) {
        ArrayList<CarreraProfesionalBean> ListaCarrera = new ArrayList<CarreraProfesionalBean>();
        try {
            cn = ConexionBD.getConexionBD();
            String sql = "SELECT DISTINCT CP.CODCARRERA,\n"
                    + "		 CP.NOMBCARRERA,\n"
                    + "		 PM.CODSEMESTRE \n"
                    + "FROM carreraprofesional AS CP \n"
                    + "INNER JOIN programacionmateria AS PM ON CP.CODCARRERA = PM.CODCARRERA\n"
                    + "WHERE PM.CODSEMESTRE = ?;";
            pt = cn.prepareStatement(sql);
            pt.setInt(1, matriculaBean.getCODSEMESTRE());

            rs = pt.executeQuery();
            while (rs.next()) {
                CarreraProfesionalBean objCarreraProfesionalBean = new CarreraProfesionalBean();
                objCarreraProfesionalBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objCarreraProfesionalBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));
                ListaCarrera.add(objCarreraProfesionalBean);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return ListaCarrera;
    }

    public ArrayList<MateriaBean> ListarMateriasMatriculas(MatriculaBean matriculaBean) {
        ArrayList<MateriaBean> ListaMateria = new ArrayList<MateriaBean>();
        try {
            cn = ConexionBD.getConexionBD();
            String sql = "SELECT DISTINCT M.CODMATERIA,\n"
                    + "		 M.NOMBMATERIA,\n"
                    + "		 PM.CODSEMESTRE,\n"
                    + "		 PM.CODCARRERA\n"
                    + "FROM materia AS M \n"
                    + "INNER JOIN programacionmateria AS PM ON PM.CODMATERIA = M.CODMATERIA\n"
                    + "WHERE PM.CODSEMESTRE = ? \n"
                    + "AND PM.CODCARRERA =  ?;";
            pt = cn.prepareStatement(sql);
            pt.setInt(1, matriculaBean.getCODSEMESTRE());
            pt.setInt(2, matriculaBean.getCODCARRERAPROFECIONAL());

            rs = pt.executeQuery();
            while (rs.next()) {
                MateriaBean objMateriaBean = new MateriaBean();
                objMateriaBean.setCODMATERIA(rs.getInt("CODMATERIA"));
                objMateriaBean.setNOMBMATERIA(rs.getString("NOMBMATERIA"));
                ListaMateria.add(objMateriaBean);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return ListaMateria;
    }

    public ArrayList<DocenteBean> ListarDocenteMatriculas(MatriculaBean matriculaBean) {
        ArrayList<DocenteBean> ListaDocente = new ArrayList<DocenteBean>();
        try {
            cn = ConexionBD.getConexionBD();
            String sql = "SELECT DISTINCT D.CODDOCENTE,\n"
                    + "		 concat(D.NOMBDOCENTE,' ',D.APEPATERDOCENTE) AS NOMBREDOCENTE \n"
                    + "FROM docente AS D \n"
                    + "INNER JOIN programacionmateria AS PM ON PM.CODDOCENTE = D.CODDOCENTE\n"
                    + "WHERE PM.CODSEMESTRE = ? \n"
                    + "AND PM.CODCARRERA =  ?\n"
                    + "AND PM.CODMATERIA = ?;";
            pt = cn.prepareStatement(sql);
            pt.setInt(1, matriculaBean.getCODSEMESTRE());
            pt.setInt(2, matriculaBean.getCODCARRERAPROFECIONAL());
            pt.setInt(3, matriculaBean.getCODMATERIA());

            rs = pt.executeQuery();
            while (rs.next()) {
                DocenteBean objDocenteBean = new DocenteBean();
                objDocenteBean.setCODDOCENTE(rs.getInt("CODDOCENTE"));
                objDocenteBean.setNOMBDOCENTE(rs.getString("NOMBREDOCENTE"));
                ListaDocente.add(objDocenteBean);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return ListaDocente;
    }

    public int InsertarMatricula(MatriculaBean vl_MatriculaBean) {
        int estado = 0;
        try {
            if (vl_MatriculaBean.getCODMATRICULA() == 0) {
                vl_MatriculaBean.setCODMATRICULA(generarCodigo());
            }
            java.util.Date date = new java.util.Date();
            int dia = date.getDate();
            int mes = date.getMonth() + 1;
            int anio = date.getYear() + 1900;

            String Fecha;
            
            Fecha=anio+"-";
            if (mes < 10) {
                Fecha += "0" + mes + "-" ;
            } else {
                Fecha += mes + "-" ;
            }

            if (dia < 10) {
                Fecha += "0" + dia ;
            } else {
                Fecha += dia ;
            }

            
            vl_MatriculaBean.setFECHAMATRICULA(Fecha);
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("INSERT INTO matricula(CODMATRICULA,CODALU,CODSEMESTRE,FECHAMATRICULA,ESTADO,CODCARRERAPROCESIONAL)\n"
                    + "VALUES(?,?,?,?,?,?);");
            pt.setInt(1, vl_MatriculaBean.getCODMATRICULA());
            pt.setInt(2, vl_MatriculaBean.getCODALU());
            pt.setInt(3, vl_MatriculaBean.getCODSEMESTRE());
            pt.setString(4, vl_MatriculaBean.getFECHAMATRICULA());
            pt.setString(5, "A");
            pt.setInt(6, vl_MatriculaBean.getCODCARRERAPROFECIONAL());
            estado = pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
            javax.swing.JOptionPane.showMessageDialog(null, e.getMessage());
        }
        return estado;
    }

    public void InsertarDetalleMatricula(Collection<ProgramacionMateriaBean> ListaProgramacionMateriaBean, MatriculaBean objMatriculaBean) {
        try {
            int estado = 0;
            for (ProgramacionMateriaBean objProgramacionMateria : ListaProgramacionMateriaBean) {
                objProgramacionMateria.setCODPROGRAMAT(ObtenerCodigoProgramacionMateria(objProgramacionMateria));
                int CODDETALLEMATRICULA = generarCodigoDetalleMatricula();
                cn = ConexionBD.getConexionBD();
                pt = cn.prepareStatement( "INSERT INTO detallematricula(CODDETAMATRI,CODMATRICULA,CODPROGRAMAT)\n"
                                        + "VALUES(?,?,?);");

                pt.setInt(1, CODDETALLEMATRICULA);
                pt.setInt(2, objMatriculaBean.getCODMATRICULA());
                pt.setInt(3, objProgramacionMateria.getCODPROGRAMAT());
                estado = pt.executeUpdate();
                pt.close();
                cn.close();
            }
        } catch (Exception e) {
            javax.swing.JOptionPane.showMessageDialog(null, e.getMessage());
        }
    }

    private int generarCodigo() {
        int i = 0;
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT MAX(CODMATRICULA) FROM  matricula;");
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

    private int generarCodigoDetalleMatricula() {
        int i = 0;
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT MAX(CODDETAMATRI) FROM  detallematricula;");
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

    private int ObtenerCodigoProgramacionMateria(ProgramacionMateriaBean objProgramacionMateria) {
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT CODPROGRAMAT  FROM programacionmateria  WHERE CODDOCENTE=? and CODCARRERA=?  and CODMATERIA=? and CODSEMESTRE=? AND ESTADO = 'A';");
            pt.setInt(1, objProgramacionMateria.getCODDOCENTE());
            pt.setInt(2, objProgramacionMateria.getCODCARRERA());
            pt.setInt(3, objProgramacionMateria.getCODMATERIA());
            pt.setInt(4, objProgramacionMateria.getCODSEMESTRE());
            rs = pt.executeQuery();
            if (rs.next()) {
                objProgramacionMateria.setCODPROGRAMAT(rs.getInt("CODPROGRAMAT"));
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return objProgramacionMateria.getCODPROGRAMAT();
    }

    public MatriculaBean getMatricula(MatriculaBean vl_MatriculaBean) {
        try {
            cn = ConexionBD.getConexionBD();
            String sql = "SELECT M.CODMATRICULA,\n"
                        + "	M.CODSEMESTRE,\n"
                        + "       M.CODCARRERAPROCESIONAL,\n"
                        + "       M.CODALU,\n"
                        + "       M.FECHAMATRICULA,\n"
                        + "       M.ESTADO,\n"
                        + "       concat(A.NOMBALU,' ',A.APEPATERALU) AS NOMBREALUMNO,\n"
                        + "       CP.NOMBCARRERA,\n"
                        + "       S.NOMBSEMESTRE\n"
                        + "FROM Matricula AS M\n"
                        + "INNER JOIN Alumno AS A ON A.CODALU = M.CODALU\n"
                        + "INNER JOIN Semestre AS S ON S.CODSEMESTRE = M.CODSEMESTRE\n"
                        + "INNER JOIN Carreraprofesional AS CP ON CP.CODCARRERA = M.CODCARRERAPROCESIONAL\n"
                        + "WHERE M.CODMATRICULA = ?";
            pt = cn.prepareStatement(sql);
            pt.setInt(1, vl_MatriculaBean.getCODMATRICULA());

            rs = pt.executeQuery();            
            objMatriculaBean = new MatriculaBean();

            if (rs.next()) {
                objMatriculaBean.setCODMATRICULA(rs.getInt("CODMATRICULA"));
                objMatriculaBean.setCODSEMESTRE(rs.getInt("CODSEMESTRE"));
                objMatriculaBean.setCODCARRERAPROFECIONAL(rs.getInt("CODCARRERAPROCESIONAL"));
                objMatriculaBean.setCODALU(rs.getInt("CODALU"));
                objMatriculaBean.setFECHAMATRICULA(rs.getString("FECHAMATRICULA"));
                objMatriculaBean.setESTADO(rs.getString("ESTADO"));
                objMatriculaBean.setNOMBREALUMNO(rs.getString("NOMBREALUMNO"));
                objMatriculaBean.setNOMBRECARRERAPROFECIONAL(rs.getString("NOMBCARRERA"));
                objMatriculaBean.setNOMBRESEMESTRE(rs.getString("NOMBSEMESTRE"));
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return objMatriculaBean;
    }

    public ArrayList<ProgramacionMateriaBean> getDetalleMatricula(MatriculaBean vl_MatriculaBean) {
        try {
            cn = ConexionBD.getConexionBD();
            String sql = "SELECT PM.CODPROGRAMAT,\n" +//
                        "	 PM.CODDOCENTE,\n" +//
                        "       PM.CODCARRERA,\n" +//
                        "       PM.CODMATERIA,\n" +//
                        "       PM.CODSEMESTRE,\n" +//
                        "       PM.ESTADO,\n" +
                        "       M.NOMBMATERIA,\n" +
                        "       concat(D.NOMBDOCENTE,' ',D.APEPATERDOCENTE) AS NOMBREDOCENTE\n" +
                        "FROM programacionmateria AS PM \n" +
                        "INNER JOIN detallematricula AS DM ON DM.CODPROGRAMAT = PM.CODPROGRAMAT\n" +
                        "INNER JOIN materia AS M ON M.CODMATERIA = PM.CODMATERIA\n" +
                        "INNER JOIN docente AS D ON D.CODDOCENTE = PM.CODDOCENTE	\n" +
                        "WHERE DM.CODMATRICULA = ?";
            
            pt = cn.prepareStatement(sql);
            pt.setInt(1, vl_MatriculaBean.getCODMATRICULA());

            rs = pt.executeQuery();
            listaProgramacionMateriaBean = new ArrayList<ProgramacionMateriaBean>();
            while (rs.next()) {
                objProgramacionMateriaBean = new ProgramacionMateriaBean();
                objProgramacionMateriaBean.setCODSEMESTRE(rs.getInt("CODSEMESTRE"));
                objProgramacionMateriaBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objProgramacionMateriaBean.setCODMATERIA(rs.getInt("CODMATERIA"));
                objProgramacionMateriaBean.setCODDOCENTE(rs.getInt("CODDOCENTE"));
                objProgramacionMateriaBean.setCODPROGRAMAT(rs.getInt("CODPROGRAMAT"));
                objProgramacionMateriaBean.setESTADO(rs.getString("ESTADO"));
                objProgramacionMateriaBean.setNOMBREMATERIA(rs.getString("NOMBMATERIA"));
                objProgramacionMateriaBean.setNOMBREDOCENTE(rs.getString("NOMBREDOCENTE"));
                listaProgramacionMateriaBean.add(objProgramacionMateriaBean);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return listaProgramacionMateriaBean;
    }

    public void ModificarDetalleMatricula(Collection<ProgramacionMateriaBean> ListaProgramacionMateriaBean, MatriculaBean vl_MatriculaBean) {
    try {
        cn = ConexionBD.getConexionBD();
                pt = cn.prepareStatement(   "DELETE FROM detallematricula\n" +
                                            "WHERE CODMATRICULA=?");
                pt.setInt(1,vl_MatriculaBean.getCODMATRICULA() );
                pt.executeUpdate();
                pt.close();
                cn.close();
            int estado = 0;
            for (ProgramacionMateriaBean objProgramacionMateria : ListaProgramacionMateriaBean) {
                objProgramacionMateria.setCODPROGRAMAT(ObtenerCodigoProgramacionMateria(objProgramacionMateria));
                int CODDETALLEMATRICULA = generarCodigoDetalleMatricula();
                cn = ConexionBD.getConexionBD();
                pt = cn.prepareStatement( "INSERT INTO detallematricula(CODDETAMATRI,CODMATRICULA,CODPROGRAMAT)\n"
                                        + "VALUES(?,?,?);");

                pt.setInt(1, CODDETALLEMATRICULA);
                pt.setInt(2, vl_MatriculaBean.getCODMATRICULA());
                pt.setInt(3, objProgramacionMateria.getCODPROGRAMAT());
                estado = pt.executeUpdate();
                pt.close();
                cn.close();
            }
        } catch (Exception e) {
            javax.swing.JOptionPane.showMessageDialog(null, e.getMessage());
        }    
    }

}
