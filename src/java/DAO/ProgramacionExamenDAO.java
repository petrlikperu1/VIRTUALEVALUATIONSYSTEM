package DAO;
import BEAN.DocenteSBean;
import BEAN.HorariodeLaboratorioDisponiblesBean;
import BEAN.LaboratorioBean;
import BEAN.ProgramacionExamenBean;
import BEAN.EstructuraExamenBean;
import BEAN.ProgramacionExamenxSupervisorBean;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;
import javax.swing.JOptionPane;

public class ProgramacionExamenDAO {
    Connection          cn=null;
    PreparedStatement   pt=null;
    ResultSet           rs=null;
    ArrayList<ProgramacionExamenBean>  lista=null;
    ProgramacionExamenBean             objProgramacionExamenBean=null;
    
    public ArrayList<ProgramacionExamenBean> ListarProgramacionExamen(String nombmateria){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT p.CODPROGHORARIO,p.CODPROGEXAMEN,p.CODESTRUCEXAMEN,p.CODHORARIOLAB,h.HORAINICIO,h.HORAFIN,l.DESCRIPLAB, d.NOMBDIA,p.ESTADO FROM programacionexamen p\n" +
"				INNER JOIN estructuraexamen as e ON  e.CODESTRUCEXAMEN=p.CODESTRUCEXAMEN\n" +
"				INNER JOIN materia as m ON m.CODMATERIA=e.CODMATERIA\n" +
"                INNER JOIN horariodelaboratoriodisponibles as h ON h.CODHORARIOLAB=p.CODHORARIOLAB\n" +
"                INNER JOIN laboratorio as l ON l.CODLAB=h.CODLAB\n" +
"                INNER JOIN dia as d ON d.CODDIA=h.CODDIA\n" +
"                WHERE p.ESTADO='A' and m.NOMBMATERIA=?;");
            pt.setString(1,nombmateria);
            rs=pt.executeQuery();
            lista=new ArrayList<ProgramacionExamenBean>(); 
            while(rs.next()){
                objProgramacionExamenBean=new ProgramacionExamenBean();
                objProgramacionExamenBean.setCODPROGEXAMEN(rs.getInt(2));
                objProgramacionExamenBean.setCODESTRUCEXAMEN(rs.getInt(3));
                objProgramacionExamenBean.setCODHORARIOLAB(rs.getInt(4));
                objProgramacionExamenBean.setHORAINICIO(rs.getString(5));
                objProgramacionExamenBean.setHORAFIN(rs.getString(6));
                objProgramacionExamenBean.setDESCRIPLAB(rs.getString(7));
                objProgramacionExamenBean.setNOMBDIA(rs.getString(8));
                objProgramacionExamenBean.setESTADO(rs.getString(9));

                lista.add(objProgramacionExamenBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
    
    public ArrayList<ProgramacionExamenBean> ListarProgExamen(EstructuraExamenBean objEstructuraExamenBean){
        try {
            int[] a=new int[4];
            a[0] = 1;
            String sql= "SELECT L.DESCRIPLAB, D.NOMBDIA, CONCAT(DATE_FORMAT(H.HORAINICIO,'%h:%i %p'),' - ',DATE_FORMAT(H.HORAFIN,'%h:%i %p')) AS HORARIO, " +
                        "T.NOMBTURNO, P.ESTADO, P.CODPROGHORARIO, P.CODPROGEXAMEN, P.CODESTRUCEXAMEN\n" +
                        "FROM programacionexamen P \n" +
                        "INNER JOIN horariodelaboratoriodisponibles H ON H.CODHORARIOLAB = P.CODHORARIOLAB \n" +
                        "INNER JOIN laboratorio L ON L.CODLAB = H.CODLAB \n" +
                        "INNER JOIN dia D ON D.CODDIA = H.CODDIA \n" +
                        "INNER JOIN turno T ON T.CODTURNO = H.CODTURNO \n" +
                        "WHERE P.CODESTRUCEXAMEN IN (SELECT CODESTRUCEXAMEN FROM estructuraexamen \n" +
                        "WHERE CODSEMESTRE=? ";
            a[1]=a[0];
            if(objEstructuraExamenBean.getCODCARRERA() != 0){
                sql+= "AND CODCARRERA=? ";
                a[1]=a[0]+1;
            }
            a[2]=a[1];
            if(objEstructuraExamenBean.getCODTIPEXAMEN() != 0){
                sql+= "AND CODTIPEXAMEN=? ";
                a[2]=a[1]+1;
            }
            a[3]=a[2];
            if(objEstructuraExamenBean.getCODMATERIA() != 0){
                sql+= "AND CODMATERIA=?";
                a[3]=a[2]+1;
            }
            sql+= ")";
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement(sql);
            pt.setInt(a[0], objEstructuraExamenBean.getCODSEMESTRE());
            if(objEstructuraExamenBean.getCODCARRERA() != 0){
                pt.setInt(a[1], objEstructuraExamenBean.getCODCARRERA());
            }
            if(objEstructuraExamenBean.getCODTIPEXAMEN() != 0){
                pt.setInt(a[2], objEstructuraExamenBean.getCODTIPEXAMEN());
            }
            if(objEstructuraExamenBean.getCODMATERIA() != 0){
                pt.setInt(a[3], objEstructuraExamenBean.getCODMATERIA());
            }
            rs=pt.executeQuery();
            lista=new ArrayList<ProgramacionExamenBean>();
            while(rs.next()){
                objProgramacionExamenBean =new ProgramacionExamenBean();
                objProgramacionExamenBean.setDESCRIPLAB(rs.getString("DESCRIPLAB"));
                objProgramacionExamenBean.setNOMBDIA(rs.getString("NOMBDIA"));
                objProgramacionExamenBean.setHORARIO(rs.getString("HORARIO"));
                objProgramacionExamenBean.setNOMBTURNO(rs.getString("NOMBTURNO"));
                objProgramacionExamenBean.setCODPROGHORARIO(rs.getInt("CODPROGHORARIO"));
                objProgramacionExamenBean.setCODPROGEXAMEN(rs.getInt("CODPROGEXAMEN"));
                objProgramacionExamenBean.setCODESTRUCEXAMEN(rs.getInt("CODESTRUCEXAMEN"));
                lista.add(objProgramacionExamenBean);
            }
            rs.close();
            pt.close();
            cn.close();
        } catch (Exception e) { }
        return lista;
    }
    
    public ProgramacionExamenBean FiltrarProgramacionExamen(String check){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT p.CODPROGHORARIO,p.CODPROGEXAMEN,p.CODESTRUCEXAMEN,p.CODHORARIOLAB,h.HORAINICIO,h.HORAFIN,l.DESCRIPLAB, d.NOMBDIA,p.ESTADO FROM programacionexamen p\n" +
                "INNER JOIN horariodelaboratoriodisponibles as h ON h.CODHORARIOLAB=p.CODHORARIOLAB\n" +
                "INNER JOIN laboratorio as l ON l.CODLAB=h.CODLAB\n" +
                "INNER JOIN dia as d ON d.CODDIA=h.CODDIA\n" +
                "WHERE p.ESTADO='A' and p.CODPROGEXAMEN=?;");
            int codProgExamen = Integer.parseInt(check);
            pt.setInt(1,codProgExamen);
            
            rs=pt.executeQuery();
            lista=new ArrayList<ProgramacionExamenBean>(); 
            while(rs.next()){
                objProgramacionExamenBean=new ProgramacionExamenBean();
                objProgramacionExamenBean.setCODPROGEXAMEN(rs.getInt(2));
                objProgramacionExamenBean.setCODESTRUCEXAMEN(rs.getInt(3));
                objProgramacionExamenBean.setCODHORARIOLAB(rs.getInt(4));
                objProgramacionExamenBean.setHORAINICIO(rs.getString(5));
                objProgramacionExamenBean.setHORAFIN(rs.getString(6));
                objProgramacionExamenBean.setDESCRIPLAB(rs.getString(7));
                objProgramacionExamenBean.setNOMBDIA(rs.getString(8));
                objProgramacionExamenBean.setESTADO(rs.getString(9));

                //lista.add(objProgramacionExamenBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  objProgramacionExamenBean;  
    }
    
    public ProgramacionExamenBean FiltrarProgramacionExamen2(String check){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT p.CODPROGHORARIO,p.CODPROGEXAMEN,p.CODESTRUCEXAMEN,p.CODHORARIOLAB,h.HORAINICIO,h.HORAFIN,l.DESCRIPLAB, d.NOMBDIA,p.ESTADO FROM programacionexamen p\n" +
                "INNER JOIN horariodelaboratoriodisponibles as h ON h.CODHORARIOLAB=p.CODHORARIOLAB\n" +
                "INNER JOIN laboratorio as l ON l.CODLAB=h.CODLAB\n" +
                "INNER JOIN dia as d ON d.CODDIA=h.CODDIA\n" +
                "WHERE p.CODPROGEXAMEN=?;");
            int codProgExamen = Integer.parseInt(check);
            pt.setInt(1,codProgExamen);
            
            rs=pt.executeQuery();
            lista=new ArrayList<ProgramacionExamenBean>(); 
            while(rs.next()){
                objProgramacionExamenBean=new ProgramacionExamenBean();
                objProgramacionExamenBean.setCODPROGEXAMEN(rs.getInt(2));
                objProgramacionExamenBean.setCODESTRUCEXAMEN(rs.getInt(3));
                objProgramacionExamenBean.setCODHORARIOLAB(rs.getInt(4));
                objProgramacionExamenBean.setHORAINICIO(rs.getString(5));
                objProgramacionExamenBean.setHORAFIN(rs.getString(6));
                objProgramacionExamenBean.setDESCRIPLAB(rs.getString(7));
                objProgramacionExamenBean.setNOMBDIA(rs.getString(8));
                objProgramacionExamenBean.setESTADO(rs.getString(9));
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  objProgramacionExamenBean;  
    }
    
    public ArrayList<ProgramacionExamenBean> FiltrarProgramacionExamenxMateriaySemestre(int codmateria, int codsemestre){   
        try{
            cn=ConexionBD.getConexionBD();
            
            pt=cn.prepareStatement("select pe.CODPROGEXAMEN, m.NOMBMATERIA, l.DESCRIPLAB, d.NOMBDIA, h.HORAINICIO, h.HORAFIN from programacionexamen as pe\n" +
                "inner join estructuraexamen as ee ON ee.CODESTRUCEXAMEN=pe.CODESTRUCEXAMEN\n" +
                "inner join materia as m ON m.CODMATERIA=ee.CODMATERIA\n" +
                "inner join semestre as s ON s.CODSEMESTRE=ee.CODSEMESTRE\n" +
                "inner join horariodelaboratoriodisponibles as h ON h.CODHORARIOLAB=pe.CODHORARIOLAB\n" +
                "inner join laboratorio as l ON l.CODLAB=h.CODLAB\n" +
                "inner join dia as d ON d.CODDIA=h.CODDIA\n" +
                "where ee.CODSEMESTRE=? and ee.CODMATERIA=?;");
            pt.setInt(1,codsemestre);
            pt.setInt(2,codmateria);
            rs=pt.executeQuery();
            lista=new ArrayList<ProgramacionExamenBean>(); 
            while(rs.next()){
                objProgramacionExamenBean=new ProgramacionExamenBean();
                objProgramacionExamenBean.setCODPROGEXAMEN(rs.getInt(1));
                objProgramacionExamenBean.setDESCRIPLAB(rs.getString(3));
                objProgramacionExamenBean.setNOMBDIA(rs.getString(4));
                objProgramacionExamenBean.setHORAINICIO(rs.getString(5));
                objProgramacionExamenBean.setHORAFIN(rs.getString(6));
                lista.add(objProgramacionExamenBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
  
    public int InsertarProgramacionExamenxSupervisor(ProgramacionExamenxSupervisorBean objProgExamxSup){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("INSERT INTO programacionexamenxsupervisor(CODROLXDOCENTE,CODDOCENTE,CODROL,CODPROGEXAMEN,CODPROGHORARIO,CODESTRUCEXAMEN,ESTADO) VALUES (?,null,null,?,0,?,'A');");
            pt.setInt(1, objProgExamxSup.getCODROLXDOCENTE());
            pt.setInt(2, objProgExamxSup.getCODPROGEXAMEN());
            pt.setInt(3, objProgExamxSup.getCODESTRUCEXAMEN());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return estado;    
    }
    
    public int InsertarAlumnoxMateriaxProgramacionxExamen(int codprogexam, int codmatri){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("INSERT INTO alumnoxmateriaxprogramacionexam(CODMATRICULA,CODALU,CODCARRERA,CODMATERIA,CODPROGEXAMEN,CODESTRUCEXAMEN,CODPROGHORARIO,ESTADO) VALUES (?,null,null,null,?,null,null,'A');");
            pt.setInt(1, codmatri);
            pt.setInt(2, codprogexam);
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return estado;    
    }
    
    public int DeshabilitarProgramacionExamen(ProgramacionExamenxSupervisorBean objProgExamxSup){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("UPDATE programacionexamen set ESTADO='I' where CODPROGEXAMEN=?;");
            pt.setInt(1, objProgExamxSup.getCODPROGEXAMEN());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return estado;    
    }
  
    public int ModificarLaboratorio(LaboratorioBean objLaboratorioBean){
        int estado=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("UPDATE laboratorio SET DESCRIPLAB=?,NROPCSLAB=?,ESTADO=? WHERE CODLAB=?;");
            pt.setString(1, objLaboratorioBean.getDESCRIPLAB());
            pt.setInt(2, objLaboratorioBean.getNROPCSLAB());
            pt.setString(3, objLaboratorioBean.getESTADO());
            pt.setInt(4, objLaboratorioBean.getCODLAB());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
       return estado;    
    }
    
    public void EliminarLaboratorio(LaboratorioBean objLaboratorioBean){  
        try { 
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("DELETE FROM laboratorio WHERE CODLAB=?");
            pt.setInt(1, objLaboratorioBean.getCODLAB());
            pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
    }
    
    public int  GenerarCodigoLaboratorio( ){
        int i=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT MAX(CODLAB) FROM laboratorio");
            rs=pt.executeQuery();
            if(rs.next()){ i=rs.getInt(1)+1;}
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return i;
    }
    
    public int InsertarProgramacionExamen(ProgramacionExamenBean objProgramacionExamenBean){
         int estado=0;
        try{
            if(objProgramacionExamenBean.getCODPROGEXAMEN()==0){
                objProgramacionExamenBean.setCODPROGEXAMEN(GenerarCodigoProgramacionExamen());
            }
            java.util.Date Fecha = new java.util.Date();
            String FechaActual = "";
            int dia,mes,anio;
            
            dia=Fecha.getDate();
            mes=Fecha.getMonth()+1;
            anio=Fecha.getYear()+1900;
           
            if(dia<10){
                FechaActual="0"+dia+"/";
            }else{
                FechaActual=dia+"/";
            }
            
            if(mes<10){
                FechaActual+="0"+mes+"/";
            }else{
                FechaActual+=mes+"/";
            }
            FechaActual=FechaActual+anio;
            
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement(
                    "INSERT INTO programarexamen(CODPROGRAEXA,CODPROGRAMAT,CODESTRUCEXAMEN,FECHAREGISTRO,FECHAEJECUCION,HORAINICIO,CODDIA,ESTADO,OBSERVACIONES,CODHORARIOLAB,estadoProgramarExamen)\n" +
                    "VALUES(?,?,?,?,?,?,?,?,?,?,?);");
            
            pt.setInt(1, objProgramacionExamenBean.getCODPROGEXAMEN());
            pt.setInt(2, objProgramacionExamenBean.getCODPROGMAT());
            pt.setInt(3, objProgramacionExamenBean.getCODESTRUCEXAMEN());
            pt.setString(4, FechaActual);
            pt.setString(5, objProgramacionExamenBean.getFECHA());
            pt.setString(6, objProgramacionExamenBean.getHORAINICIO());
            pt.setInt(7, objProgramacionExamenBean.getCODDIA());
            pt.setString(8, "A");
            pt.setString(9, "Examen Programado");
            pt.setInt(10, objProgramacionExamenBean.getCODHORARIOLAB());
            pt.setString(11, "P");
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return estado; 
    }
    
    public int  GenerarCodigoProgramacionExamen( ){
        int i=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT MAX(CODPROGRAEXA) FROM programarexamen");
            rs=pt.executeQuery();
            if(rs.next()){ i=rs.getInt(1)+1;}
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return i;
    }
    
    public ProgramacionExamenBean GetProgramacionExamen_CODESTRUCTURAEXAMEN(int CODESTRUCTURAEXAMEN){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT p.CODPROGHORARIO,p.CODPROGEXAMEN,p.CODESTRUCEXAMEN,p.CODHORARIOLAB,"
                    + "h.HORAINICIO,h.HORAFIN,l.DESCRIPLAB, d.NOMBDIA,p.ESTADO,p.Fecha FROM programacionexamen p\n" +
"				INNER JOIN estructuraexamen as e ON  e.CODESTRUCEXAMEN=p.CODESTRUCEXAMEN\n" +
"				INNER JOIN materia as m ON m.CODMATERIA=e.CODMATERIA\n" +
"                INNER JOIN horariodelaboratoriodisponibles as h ON h.CODHORARIOLAB=p.CODHORARIOLAB\n" +
"                INNER JOIN laboratorio as l ON l.CODLAB=h.CODLAB\n" +
"                INNER JOIN dia as d ON d.CODDIA=h.CODDIA\n" +
"                WHERE p.CODESTRUCEXAMEN=?;");
            pt.setInt(1,CODESTRUCTURAEXAMEN);
            rs=pt.executeQuery();
            lista=new ArrayList<ProgramacionExamenBean>(); 
            if(rs.next()){
                objProgramacionExamenBean=new ProgramacionExamenBean();
                objProgramacionExamenBean.setCODPROGEXAMEN(rs.getInt(2));
                objProgramacionExamenBean.setCODESTRUCEXAMEN(rs.getInt(3));
                objProgramacionExamenBean.setCODHORARIOLAB(rs.getInt(4));
                objProgramacionExamenBean.setHORAINICIO(rs.getString(5));
                objProgramacionExamenBean.setHORAFIN(rs.getString(6));
                objProgramacionExamenBean.setDESCRIPLAB(rs.getString(7));
                objProgramacionExamenBean.setNOMBDIA(rs.getString(8));
                objProgramacionExamenBean.setESTADO(rs.getString(9));
                objProgramacionExamenBean.setFECHA(rs.getString(10));
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  objProgramacionExamenBean;  
    }
    
    
    
    
        public ArrayList<ProgramacionExamenBean> MostrarProgramacionExamenxdocente(ProgramacionExamenBean pe_ProgramacionExamenBean,DocenteSBean pe_DocenteSBean){
        try
        {   cn=ConexionBD.getConexionBD();            
            pt=cn.prepareStatement("  select MA.NOMBMATERIA,CL.NOMBCARRERA,TN.NOMBTIPEXAMEN,SE.NOMBSEMESTRE,PE.HORAINICIO,PE.DIA,PE.FECHAEJECUCION FROM programarexamen AS PE INNER JOIN programacionmateria PM ON PM.CODPROGRAMAT = PE.CODPROGRAMAT INNER JOIN estructuraexamen AS EE ON EE.CODESTRUCEXAMEN = PE.CODESTRUCEXAMEN INNER JOIN semestre AS SE ON SE.CODSEMESTRE = EE.CODSEMESTRE INNER JOIN tipoexamen AS TN ON TN.CODTIPEXAMEN = EE.CODTIPEXAMEN INNER JOIN materia AS MA ON MA.CODMATERIA = EE.CODMATERIA INNER JOIN carreraprofesional AS CL ON CL.CODCARRERA = MA.CODCARRERA  ;    ");
          
            rs=pt.executeQuery();
            lista=new ArrayList<ProgramacionExamenBean>(); 
            while(rs.next())
            {   objProgramacionExamenBean= new ProgramacionExamenBean();                
                objProgramacionExamenBean.setNOMBMATERIA(rs.getString("NOMBMATERIA"));
                objProgramacionExamenBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));        
                objProgramacionExamenBean.setNOMBTIPEXAMEN(rs.getString("NOMBTIPEXAMEN"));
                objProgramacionExamenBean.setFECHAEJECUCION(rs.getString("FECHAEJECUCION"));
                objProgramacionExamenBean.setHORAINICIO(rs.getString("HORAINICIO"));
                objProgramacionExamenBean.setNOMBDIA(rs.getString("DIA"));
                objProgramacionExamenBean.setNOMBSEMESTRE(rs.getString("NOMBSEMESTRE"));
               
                lista.add(objProgramacionExamenBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
            JOptionPane.showMessageDialog(null,"Hola"+ e.getMessage());
        }
        return  lista; 
    }
    
    
    
    
    
    
    
    
    public ArrayList<ProgramacionExamenBean> ListarProgramacionExamenxdocente(ProgramacionExamenBean pe_ProgramacionExamenBean,DocenteSBean pe_DocenteSBean){
        try{
            cn=ConexionBD.getConexionBD();
            
            pt=cn.prepareStatement("SELECT      PE.CODPROGRAEXA,\n" +
                                "		PE.CODPROGRAMAT,\n" +
                                "		PE.CODESTRUCEXAMEN,\n" +
                                "		PE.FECHAREGISTRO,\n" +
                                "		PE.FECHAEJECUCION,\n" +
                                "		PE.estadoProgramarExamen,\n" +
                                //"		PE.HORAINICIO,\n" +
                                "		PE.CODDIA,\n" +
                                "		PE.ESTADO,\n" +
                                "		PE.OBSERVACIONES,\n" +
                                "		PE.CODHORARIOLAB,\n" +
                                "		PM.CODDOCENTE,\n" +
                                "		PM.CODCARRERA,\n" +
                                "		PM.CODMATERIA,\n" +
                                "		PM.CODSEMESTRE,\n" +
                                "               EE.CODUNIDAD,\n" +
                                "		EE.CODTIPEXAMEN,\n" +
                                "		HLD.HORAINICIO,\n" +
                                "		HLD.HORAFIN,\n" +
                                "		HLD.CODLAB,\n" +
                                "		HLD.CODTURNO,\n" +
                                "               CP.NOMBCARRERA,\n" +
                                "		M.NOMBMATERIA,\n" +
                                "               S.NOMBSEMESTRE,\n" +
                                "               UT.NOMBUNIDTEMA,\n" +
                                "		TE.NOMBTIPEXAMEN,\n" +
                                "		L.DESCRIPLAB,\n" +
                                "		L.NROPCSLAB,\n" +
                                "		T.NOMBTURNO,\n" +
                                "		D.NOMBDIA\n" +
                                "FROM programarexamen AS PE \n" +
                                "INNER JOIN programacionmateria PM ON PM.CODPROGRAMAT = PE.CODPROGRAMAT\n" +
                                "INNER JOIN estructuraexamen AS EE ON EE.CODESTRUCEXAMEN = PE.CODESTRUCEXAMEN\n" +
                                "INNER JOIN horariodelaboratoriodisponibles AS HLD ON HLD.CODHORARIOLAB = PE.CODHORARIOLAB\n" +
                                "INNER JOIN carreraprofesional AS CP ON CP.CODCARRERA = PM.CODCARRERA\n" +
                                "INNER JOIN materia AS M ON M.CODMATERIA = PM.CODMATERIA\n" +
                                "INNER JOIN semestre AS S ON S.CODSEMESTRE = PM.CODSEMESTRE\n" +
                                "INNER JOIN unidadtematica AS UT ON EE.CODUNIDAD = UT.CODUNIDTEMA\n" +
                                "INNER JOIN tipoexamen AS TE ON TE.CODTIPEXAMEN = EE.CODTIPEXAMEN\n" +
                                "INNER JOIN laboratorio AS L ON L.CODLAB = HLD.CODLAB\n" +
                                "INNER JOIN turno AS T ON T.CODTURNO = HLD.CODTURNO\n" +
                                "INNER JOIN dia AS D ON D.CODDIA	= PE.CODDIA\n" +
                                "WHERE PM.CODDOCENTE = ?\n" +
                                " AND  1 = CASE WHEN ? = 0 THEN 1\n" +
                                "		WHEN PM.CODSEMESTRE = ? THEN 1\n" +
                                "               ELSE 0\n" +
                                "          END\n" +
                                " AND  1 = CASE WHEN ? = 0 THEN 1\n" +
                                "		WHEN PM.CODCARRERA = ? THEN 1\n" +
                                "               ELSE 0\n" +
                                "          END\n" +
                                " AND  1 = CASE WHEN ? = 0 THEN 1\n" +
                                "		WHEN PM.CODMATERIA = ? THEN 1\n" +
                                "               ELSE 0\n" +
                                "          END	");
            //pe_ProgramacionExamenBean, pe_DocenteSBean
            pt.setInt(1,pe_DocenteSBean.getCODDOCENTE());
            pt.setInt(2,pe_ProgramacionExamenBean.getCODSEMESTRE());
            pt.setInt(3,pe_ProgramacionExamenBean.getCODSEMESTRE());
            pt.setInt(4,pe_ProgramacionExamenBean.getCODCARRERA());
            pt.setInt(5,pe_ProgramacionExamenBean.getCODCARRERA());
            pt.setInt(6,pe_ProgramacionExamenBean.getCODMATERIA());
            pt.setInt(7,pe_ProgramacionExamenBean.getCODMATERIA());
            rs=pt.executeQuery();
            lista=new ArrayList<ProgramacionExamenBean>(); 
            while(rs.next()){
                objProgramacionExamenBean= new ProgramacionExamenBean();
                objProgramacionExamenBean.setCODPROGEXAMEN(rs.getInt("CODPROGRAEXA"));
                objProgramacionExamenBean.setCODPROGMAT(rs.getInt("CODPROGRAMAT"));
                objProgramacionExamenBean.setCODESTRUCEXAMEN(rs.getInt("CODESTRUCEXAMEN"));
                objProgramacionExamenBean.setCODDIA(rs.getInt("CODDIA"));
                objProgramacionExamenBean.setCODHORARIOLAB(rs.getInt("CODHORARIOLAB"));
                objProgramacionExamenBean.setCODDOCENTE(rs.getInt("CODDOCENTE"));
                objProgramacionExamenBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objProgramacionExamenBean.setCODMATERIA(rs.getInt("CODMATERIA"));
                objProgramacionExamenBean.setCODSEMESTRE(rs.getInt("CODSEMESTRE"));
                objProgramacionExamenBean.setCODUNIDAD(rs.getInt("CODUNIDAD"));
                objProgramacionExamenBean.setCODTIPEXAMEN(rs.getInt("CODTIPEXAMEN"));
                objProgramacionExamenBean.setCODLAB(rs.getInt("CODLAB"));
                objProgramacionExamenBean.setCODTURNO(rs.getInt("CODTURNO"));
                objProgramacionExamenBean.setNROPCSLAB(rs.getInt("NROPCSLAB"));

                objProgramacionExamenBean.setFECHAREGISTRO(rs.getString("FECHAREGISTRO"));
                objProgramacionExamenBean.setFECHAEJECUCION(rs.getString("FECHAEJECUCION"));
                objProgramacionExamenBean.setHORAINICIO(rs.getString("HORAINICIO"));
                objProgramacionExamenBean.setESTADO(rs.getString("ESTADO"));
                objProgramacionExamenBean.setOBSERVACIONES(rs.getString("OBSERVACIONES"));
                objProgramacionExamenBean.setHORAINICIO(rs.getString("HORAINICIO"));
                objProgramacionExamenBean.setHORAFIN(rs.getString("HORAFIN"));
                objProgramacionExamenBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));
                objProgramacionExamenBean.setNOMBMATERIA(rs.getString("NOMBMATERIA"));
                objProgramacionExamenBean.setNOMBSEMESTRE(rs.getString("NOMBSEMESTRE"));
                objProgramacionExamenBean.setNOMBUNIDTEMA(rs.getString("NOMBUNIDTEMA"));
                objProgramacionExamenBean.setNOMBTIPEXAMEN(rs.getString("NOMBTIPEXAMEN"));
                objProgramacionExamenBean.setDESCRIPLAB(rs.getString("DESCRIPLAB"));
                objProgramacionExamenBean.setNOMBTURNO(rs.getString("NOMBTURNO"));
                objProgramacionExamenBean.setNOMBDIA(rs.getString("NOMBDIA"));
                objProgramacionExamenBean.setESTADOPROGRAMAREXAMEN(rs.getString("estadoProgramarExamen"));
                
                lista.add(objProgramacionExamenBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
        return  lista; 
    }

    public void GenerarExamen(int int_CODPROGEXAMEN) {
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement( "SELECT  DM.CODDETAMATRI\n" +
                                    "FROM programarexamen AS PE \n" +
                                    "INNER JOIN detallematricula AS DM ON PE.CODPROGRAMAT = DM.CODPROGRAMAT\n" +
                                    "WHERE PE.CODPROGRAEXA = ?;");
            pt.setInt(1,int_CODPROGEXAMEN);
            rs=pt.executeQuery();
            ArrayList<Integer> listaCODDETAMATRI=new ArrayList<Integer>(); 
            while(rs.next()){
                listaCODDETAMATRI.add(rs.getInt("CODDETAMATRI"));
            }
            pt.close();
            rs.close();
            
            for(Integer CODDETAMATRI:listaCODDETAMATRI){
                CallableStatement cst = cn.prepareCall("{call USP_GEN_EXAMEN (?,?)}");
                cst.setInt(1, int_CODPROGEXAMEN);
                cst.setInt(2, CODDETAMATRI);
                cst.execute();
                cst.close();
            }
            
            pt=cn.prepareStatement( " UPDATE programarexamen SET  OBSERVACIONES = 'Examen Generado',\n" +
                                                               " estadoProgramarExamen = 'G' \n" +
                                    " WHERE CODPROGRAEXA = ?;");
            
            pt.setInt(1,int_CODPROGEXAMEN);
            pt.executeUpdate();
            pt.close();
            cn.close();
            
        } catch (Exception e){
        }
    }
    public void IniciarExamen(int int_CODPROGEXAMEN) {
         try{
             cn=ConexionBD.getConexionBD();
               pt=cn.prepareStatement( " UPDATE programarexamen SET  OBSERVACIONES = 'Examen Iniciado',\n" +
                                                               " estadoProgramarExamen = 'I' \n" +
                                    " WHERE CODPROGRAEXA = ?;");
            
            pt.setInt(1,int_CODPROGEXAMEN);
            pt.executeUpdate();
            pt.close();
            cn.close();
         } catch (Exception e){
        }
    }

    public void FinalizarExamen(int int_CODPROGEXAMEN) {
        try{
             cn=ConexionBD.getConexionBD();
               pt=cn.prepareStatement( " UPDATE programarexamen SET  OBSERVACIONES = 'Examen Finalizado',\n" +
                                                               " estadoProgramarExamen = 'F' \n" +
                                    " WHERE CODPROGRAEXA = ?;");
            
            pt.setInt(1,int_CODPROGEXAMEN);
            pt.executeUpdate();
            pt.close();
            cn.close();
         } catch (Exception e){
        }
    }
}
