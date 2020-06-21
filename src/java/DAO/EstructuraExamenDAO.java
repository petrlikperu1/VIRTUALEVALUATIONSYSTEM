package DAO;
import BEAN.EstructuraExamenBean;
import BEAN.Alternativa;
import BEAN.DetalleEstructuraExamenBean;
import BEAN.PreguntaBean;
import BEAN.TipoExamenBean;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;
import java.util.Collection;
import java.util.List;

public class EstructuraExamenDAO {
    Connection                      cn=null;
    PreparedStatement               pt=null;
    ResultSet                       rs=null;
    ArrayList<EstructuraExamenBean> lista=null;
    EstructuraExamenBean            objEstructuraExamenBean=null;
    
    public EstructuraExamenBean BuscarEstructuraExamen(int Codigo) {
        try {
            cn = ConexionBD.getConexionBD();
            String sql = "   SELECT C.CODESTRUCEXAMEN, S.CODSEMESTRE, S.NOMBSEMESTRE, TE.CODTIPEXAMEN, \n" +
                             "TE.NOMBTIPEXAMEN, D.CODCARRERA, D.NOMBCARRERA, M.CODMATERIA, M.NOMBMATERIA, \n" +
                             "C.ESTADO,C.Tiempo FROM `programarexamen`  AS  E \n" +
                             " INNER JOIN  estructuraexamen as C ON  E.CODESTRUCEXAMEN=C.CODESTRUCEXAMEN \n" +
                             " INNER JOIN carreraprofesional as D ON C.CODCARRERA=D.CODCARRERA\n" +
                             " INNER JOIN materia as M ON C.CODMATERIA=M.CODMATERIA \n" +
                             " INNER JOIN  semestre as S ON C.CODSEMESTRE=S.CODSEMESTRE\n" +
                             " INNER JOIN tipoexamen as TE ON C.CODTIPEXAMEN=TE.CODTIPEXAMEN WHERE C.CODMATERIA = ?               ";

            
          
            
            
            pt = cn.prepareStatement(sql);
            pt.setInt(1, Codigo);
            rs = pt.executeQuery();
            if (rs.next()) {
                objEstructuraExamenBean = new EstructuraExamenBean();
                objEstructuraExamenBean.setCODESTRUCEXAMEN(rs.getInt(1));
                objEstructuraExamenBean.setCODSEMESTRE(rs.getInt(2));
                objEstructuraExamenBean.setNOMBSEMESTRE(rs.getString(3));
                objEstructuraExamenBean.setCODTIPEXAMEN(rs.getInt(4));
                objEstructuraExamenBean.setNOMBTIPEXAMEN(rs.getString(5));
                objEstructuraExamenBean.setCODCARRERA(rs.getInt(6));
                objEstructuraExamenBean.setNOMBCARRERA(rs.getString(7));
                objEstructuraExamenBean.setCODMATERIA(rs.getInt(8));
                objEstructuraExamenBean.setNOMBMATERIA(rs.getString(9));               
                objEstructuraExamenBean.setESTADO(rs.getString(10));
                objEstructuraExamenBean.setTiempoMinutos(rs.getInt(11));
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return objEstructuraExamenBean;
    }

    public ArrayList<EstructuraExamenBean> BuscarEstructuraExamen(EstructuraExamenBean objEstructuraBean) {
        try {
            cn = ConexionBD.getConexionBD();
            StringBuilder sql = new StringBuilder();
            sql.append("SELECT E.CODESTRUCEXAMEN,");
            sql.append("S.NOMBSEMESTRE,");
            sql.append(" TE.NOMBTIPEXAMEN,");
            sql.append(" C.CODCARRERA,");
            sql.append("C.NOMBCARRERA,");
            sql.append(" M.CODMATERIA,");
            sql.append(" M.NOMBMATERIA,");
            sql.append(" E.ESTADO, E.Tiempo ");
            sql.append(" from  estructuraexamen as E "
                    + "INNER JOIN carreraprofesional as C ON E.CODCARRERA=C.CODCARRERA ");
            sql.append(" INNER JOIN materia as M ON E.CODMATERIA=M.CODMATERIA "                   
                    + "INNER JOIN semestre as S ON S.CODSEMESTRE=E.CODSEMESTRE "
                    + "INNER JOIN tipoexamen as TE ON TE.CODTIPEXAMEN=E.CODTIPEXAMEN "
                    + "WHERE 1 = 1 ");

            if (objEstructuraBean.getCODSEMESTRE() > 0 && objEstructuraBean.getCODCARRERA() == 0 && objEstructuraBean.getCODMATERIA() == 0) {
                sql.append("  and    E.CODSEMESTRE=?");
            }
            if (objEstructuraBean.getCODCARRERA() > 0 && objEstructuraBean.getCODSEMESTRE() == 0 && objEstructuraBean.getCODMATERIA() == 0) {
                sql.append("  and    C.CODCARRERA=?");
            }
            if (objEstructuraBean.getCODCARRERA() == 0 && objEstructuraBean.getCODSEMESTRE() == 0 && objEstructuraBean.getCODMATERIA() > 0) {
                sql.append("  and    M.CODMATERIA=?");
            }

            if (objEstructuraBean.getCODCARRERA() > 0 && objEstructuraBean.getCODSEMESTRE() > 0 && objEstructuraBean.getCODMATERIA() == 0) {
                sql.append("  and  E.CODSEMESTRE=?  and  C.CODCARRERA=?");
            }

            if (objEstructuraBean.getCODCARRERA() > 0 && objEstructuraBean.getCODSEMESTRE() > 0 && objEstructuraBean.getCODMATERIA() > 0) {
                sql.append("  and  E.CODSEMESTRE=?  and  C.CODCARRERA=?  and  M.CODMATERIA=?");
            }

            if (objEstructuraBean.getCODCARRERA() > 0 && objEstructuraBean.getCODSEMESTRE() == 0 && objEstructuraBean.getCODMATERIA() > 0) {
                sql.append(" and  C.CODCARRERA=? and  M.CODMATERIA=?");
            }
            
//            if(objEstructuraBean.getCODTIPEXAMEN()>0){
//                sql.append(" and  TE.CODTIPEXAMEN= "+objEstructuraBean.getCODTIPEXAMEN());
//            }
            pt = cn.prepareStatement(sql.toString());
            if (objEstructuraBean.getCODSEMESTRE() > 0 && objEstructuraBean.getCODCARRERA() == 0 && objEstructuraBean.getCODMATERIA() == 0) {
                pt.setInt(1, objEstructuraBean.getCODSEMESTRE());
            }
            if (objEstructuraBean.getCODCARRERA() > 0 && objEstructuraBean.getCODSEMESTRE() == 0 && objEstructuraBean.getCODMATERIA() == 0) {
                pt.setInt(1, objEstructuraBean.getCODCARRERA());
            }
            if (objEstructuraBean.getCODCARRERA() == 0 && objEstructuraBean.getCODSEMESTRE() == 0 && objEstructuraBean.getCODMATERIA() > 0) {
                pt.setInt(1, objEstructuraBean.getCODMATERIA());
            }

            if (objEstructuraBean.getCODCARRERA() > 0 && objEstructuraBean.getCODSEMESTRE() > 0 && objEstructuraBean.getCODMATERIA() == 0) {
                pt.setInt(1, objEstructuraBean.getCODSEMESTRE());
                pt.setInt(2, objEstructuraBean.getCODCARRERA());
            }
            if (objEstructuraBean.getCODCARRERA() > 0 && objEstructuraBean.getCODSEMESTRE() == 0 && objEstructuraBean.getCODMATERIA() > 0) {
                pt.setInt(1, objEstructuraBean.getCODCARRERA());
                pt.setInt(2, objEstructuraBean.getCODMATERIA());
            }
            if (objEstructuraBean.getCODCARRERA() > 0 && objEstructuraBean.getCODSEMESTRE() > 0 && objEstructuraBean.getCODMATERIA() > 0) {
                pt.setInt(1, objEstructuraBean.getCODSEMESTRE());
                pt.setInt(2, objEstructuraBean.getCODCARRERA());
                pt.setInt(3, objEstructuraBean.getCODMATERIA());
            }

            rs = pt.executeQuery();
            lista = new ArrayList<EstructuraExamenBean>();
            while (rs.next()) {
                objEstructuraExamenBean = new EstructuraExamenBean();
                objEstructuraExamenBean.setCODESTRUCEXAMEN(rs.getInt(1));
                objEstructuraExamenBean.setNOMBSEMESTRE(rs.getString(2));
                objEstructuraExamenBean.setNOMBTIPEXAMEN(rs.getString(3));
                objEstructuraExamenBean.setCODCARRERA(rs.getInt(4));
                objEstructuraExamenBean.setNOMBCARRERA(rs.getString(5));
                objEstructuraExamenBean.setCODMATERIA(rs.getInt(6));
                objEstructuraExamenBean.setNOMBMATERIA(rs.getString(7));
                objEstructuraExamenBean.setESTADO(rs.getString(8));
                objEstructuraExamenBean.setTiempoMinutos(rs.getInt(9));
                lista.add(objEstructuraExamenBean);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return lista;
    }

    
                        
    
    
    
    
    public ArrayList<EstructuraExamenBean>  ListarEstructuraExamen(){
        try{
            cn=ConexionBD.getConexionBD();
            String sql = "  SELECT \n" +
"                        E.CODESTRUCEXAMEN, \n" +
"                        S.CODSEMESTRE, \n" +
"                        S.NOMBSEMESTRE, \n" +
"                        TE.CODTIPEXAMEN, \n" +
"                        TE.NOMBTIPEXAMEN, \n" +
"                        C.CODCARRERA, \n" +
"                        C.NOMBCARRERA, \n" +
"                        M.CODMATERIA, \n" +
"                        M.NOMBMATERIA, \n" +
"                        E.ESTADO                      \n" +
"                        FROM estructuraexamen as E \n" +
"                        INNER JOIN carreraprofesional as C ON E.CODCARRERA=C.CODCARRERA \n" +
"                        INNER JOIN materia as M ON E.CODMATERIA=M.CODMATERIA \n" +
"                        INNER JOIN semestre as S ON S.CODSEMESTRE=E.CODSEMESTRE \n" +
"                        INNER JOIN tipoexamen as TE ON TE.CODTIPEXAMEN=E.CODTIPEXAMEN ";
            pt=cn.prepareStatement(sql);
            rs=pt.executeQuery();
            lista=new ArrayList<EstructuraExamenBean>(); 
            while(rs.next()){
                objEstructuraExamenBean=new EstructuraExamenBean();
                objEstructuraExamenBean.setCODESTRUCEXAMEN(rs.getInt(1));
                objEstructuraExamenBean.setCODSEMESTRE(rs.getInt(2));
                objEstructuraExamenBean.setNOMBSEMESTRE(rs.getString(3));
                objEstructuraExamenBean.setCODTIPEXAMEN(rs.getInt(4));
                objEstructuraExamenBean.setNOMBTIPEXAMEN(rs.getString(5));
                objEstructuraExamenBean.setCODCARRERA(rs.getInt(6));
                objEstructuraExamenBean.setNOMBCARRERA(rs.getString(7));
                objEstructuraExamenBean.setCODMATERIA(rs.getInt(8));
                objEstructuraExamenBean.setNOMBMATERIA(rs.getString(9));           
                objEstructuraExamenBean.setESTADO(rs.getString(10));
               
                lista.add(objEstructuraExamenBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){ }
        return  lista;  
    }
    
    public int InsertarEstructuraExamen(EstructuraExamenBean objEstructuraExamenBean){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
         /*   pt=cn.prepareStatement("Insert into  estructuraexamen(CODESTRUCEXAMEN,CODSEMESTRE,CODCARRERA,CODMATERIA,CODUNIDAD,CODTEMA,CODTIPEXAMEN,ESTADO)"+
                                    "VALUES(?,?,?,?,?,?,?,?)");
            */
             pt=cn.prepareStatement("Insert into  estructuraexamen(CODESTRUCEXAMEN,CODSEMESTRE,CODCARRERA,CODMATERIA,CODTIPEXAMEN,Tiempo,ESTADO)"+
                                    "VALUES(?,?,?,?,?,?,?)");
            
                                    pt.setInt(1,objEstructuraExamenBean.getCODESTRUCEXAMEN());
                                    pt.setInt(2,objEstructuraExamenBean.getCODSEMESTRE());        
                                    pt.setInt(3,objEstructuraExamenBean.getCODCARRERA());
                                    pt.setInt(4,objEstructuraExamenBean.getCODMATERIA());                                   
                                    pt.setInt(5,objEstructuraExamenBean.getCODTIPEXAMEN()); 
                                    pt.setInt(6,objEstructuraExamenBean.getTiempoMinutos());
                                    pt.setString(7,"A");
                                    estado= pt.executeUpdate();
                                    pt.close();
                                    cn.close();
        } catch (Exception e){
             System.out.println("===>"+e.getMessage());
        }
        return estado;    
    }
    public int ModificarEstructuraExamen(EstructuraExamenBean objEstructuraExamenBean){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("update  estructuraexamen "
                                            + "set "
                                            + "CODSEMESTRE= ? ,"
                                            + "CODCARRERA= ? ,"
                                            + "CODMATERIA= ? ,"
                                            + "CODUNIDAD= ? ,"
                                            + "CODTEMA= ? ,"
                                            + "CODTIPEXAMEN= ? ,"
                                            + "ESTADO= ? ,"
                                            + "Tiempo= ? "
                                            + "where CODESTRUCEXAMEN = ?");
            
            
            pt.setInt(1,objEstructuraExamenBean.getCODSEMESTRE());        
            pt.setInt(2,objEstructuraExamenBean.getCODCARRERA());
            pt.setInt(3,objEstructuraExamenBean.getCODMATERIA());
            pt.setInt(4,objEstructuraExamenBean.getCODUNIDAD());
            pt.setInt(5,0);
            pt.setInt(6,objEstructuraExamenBean.getCODTIPEXAMEN());
            pt.setString(7,"A");
            pt.setInt(8,objEstructuraExamenBean.getTiempoMinutos());
            pt.setInt(9,objEstructuraExamenBean.getCODESTRUCEXAMEN());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
            EliminarDetalleEstructuraExamen(objEstructuraExamenBean);
        } catch (Exception e){
             System.out.println("===>"+e.getMessage());
        }
        return estado;    
    }
    
    public void InsertarDetalleEstructuraExamen(DetalleEstructuraExamenBean  objDetalleEstructuraExamenBean,String  lista0[],String  lista1[],String lista2[],String lista3[],String lista4[],String lista5[]){
        int estado=0;
        
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("Insert into detalleestructuraexamen(CODESTRUCEXAMEN,NUMITEM,CODNIVEL,CANTPREG,PUNTAJEXPREG,PENALIDADXPREG,PENALIDADAYUDA)"+
                                    " VALUES(?,?,?,?,?,?,?)");
            
           for(int  i=0;i<lista1.length;i++)
           {
                    pt.setInt(1,objDetalleEstructuraExamenBean.getCODESTRUCEXAMEN());                    
                    pt.setInt(2,(i+1));
                    pt.setInt(3,Integer.parseInt(lista0[i])); // CODNIVEL
                    pt.setInt(4,Integer.parseInt(lista2[i]));  // CANTIDAD  PREGUNTAS
                    pt.setDouble(5,Double.parseDouble(lista3[i]));// PUNTAJE PREGUNTAS
                    pt.setDouble(6,Double.parseDouble(lista4[i]));// PENALIDAD PREGUNTAS
                    pt.setDouble(7,Double.parseDouble(lista5[i]));// PENALIDAD AYUDAS
                    pt.executeUpdate();  
                  
           }
            pt.close();
            cn.close();
        } catch (Exception e){
         System.out.println("===>"+e.getMessage());
        
        }   
    } 
    public void InsertarDetalleEstructuraExamen(Collection<DetalleEstructuraExamenBean>  ListobjDetalleEstructuraExamenBean,EstructuraExamenBean vl_EstructuraExamenBean){
        int estado=0;
        
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("Insert into detalleestructuraexamen(CODESTRUCEXAMEN,NUMITEM,CODCARRERA,CODMATERIA,CODUNIDAD,CODTEMA,CODNIVEL,CANTPREG,PUNTAJEXPREG,PENALIDADXPREG,PENALIDADAYUDA,TIEMPOXPREG)"+
                                    " VALUES(?,?,?,?,?,?,?,?,?,?,?,?)");
            
           for(DetalleEstructuraExamenBean vl_DetalleEstructuraExamenBean:ListobjDetalleEstructuraExamenBean)
           {
                    pt.setInt(1,vl_EstructuraExamenBean.getCODESTRUCEXAMEN());                    
                    pt.setInt(2,vl_DetalleEstructuraExamenBean.getNUMITEM());
                    
                 
                    pt.setInt(3,vl_DetalleEstructuraExamenBean.getCODCARRERA());
                    pt.setInt(4,vl_DetalleEstructuraExamenBean.getCODMATERIA());
                     pt.setInt(5,vl_DetalleEstructuraExamenBean.getCODUNIDAD());
                     pt.setDouble(6,vl_DetalleEstructuraExamenBean.getCODTEMA());// Tiempo por pregunta
                    
                    
                    pt.setInt(7,vl_DetalleEstructuraExamenBean.getCODNIVEL()); // CODNIVEL
                    pt.setInt(8,vl_DetalleEstructuraExamenBean.getCANTPREG());  // CANTIDAD  PREGUNTAS
                    pt.setDouble(9,vl_DetalleEstructuraExamenBean.getPUNTAJEXPREG());// PUNTAJE PREGUNTAS
                    pt.setDouble(10,vl_DetalleEstructuraExamenBean.getPENALIDADXPREG());// PENALIDAD PREGUNTAS
                    pt.setDouble(11,vl_DetalleEstructuraExamenBean.getPENALIDADAYUDA());// PENALIDAD AYUDAS
                    pt.setDouble(12,vl_DetalleEstructuraExamenBean.getTIEMPOXPREG());// Tiempo por pregunta
                   
                    pt.executeUpdate(); 
               
//              System.out.println(vl_EstructuraExamenBean.getCODESTRUCEXAMEN()+"   "+vl_DetalleEstructuraExamenBean.getNUMITEM()+"   "+
//                      vl_DetalleEstructuraExamenBean.getCODNIVEL()+"     "+vl_DetalleEstructuraExamenBean.getCANTPREG()+"  "+
//                      vl_DetalleEstructuraExamenBean.getCANTPREG()+"     "+vl_DetalleEstructuraExamenBean.getPUNTAJEXPREG()+"  "+
//                      vl_DetalleEstructuraExamenBean.getPUNTAJEXPREG()+"  "+vl_DetalleEstructuraExamenBean.getPENALIDADXPREG()+"  "+
//                      vl_DetalleEstructuraExamenBean.getPENALIDADAYUDA()+"     "+vl_DetalleEstructuraExamenBean.getTIEMPOXPREG()+"   "+
//                      vl_DetalleEstructuraExamenBean.getCODTEMA()+"      "+vl_DetalleEstructuraExamenBean.getCODUNIDAD()) ;
//               
               
           }
            pt.close();
            cn.close();
        } catch (Exception e){
         System.out.println("===>"+e.getMessage());
        
        }   
    } 
  
    public int InsertarAlternativa(DetalleEstructuraExamenBean objDetalle, int codigoE, int contador){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("Insert into  detalleestructuraexamen(CODESTRUCEXAMEN,NUMITEM,CODNIVEL,CANTPREG)"+
                                    "VALUES("+codigoE+","+contador+",?,?)");
            pt.setInt(1,objDetalle.getCODNIVEL());
            pt.setInt(2,objDetalle.getCANTPREG());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){ }
        return estado;
    }
    
    public int ModificarPregunta(PreguntaBean objPreguntaBean){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("UPDATE  materia set ENUNCIADOPREG=?, ENUNCIADOALTER=?, CODCARRERA=?,CODMATERIA=?,CODNIVEL=?,CODTEMA=?,CODUNIDTEMA=? WHERE CODPREG=?");
            pt.setString(1,objPreguntaBean.getENUNCIADOPREG());
            pt.setString(2,objPreguntaBean.getENUNCIADOALTER());       
            pt.setInt(3,objPreguntaBean.getCODCARRERA());
            pt.setInt(4,objPreguntaBean.getCODMATERIA());
            pt.setInt(5,objPreguntaBean.getCODNIVEL());
            pt.setInt(6,objPreguntaBean.getCODTEMA());
            pt.setInt(7,objPreguntaBean.getCODUNIDTEMA());
            pt.setInt(8,objPreguntaBean.getCODPREG());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){ }
        return estado;
    }
    
    public void EliminarPregunta(PreguntaBean objPreguntaBean){
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("DELETE  FROM pregunta  WHERE CODCARRERA=?,CODMATERIA=?,CODNIVEL=?,CODTEMA=?,CODUNIDTEMA=? AND CODPREG=?");
            pt.setInt(1,objPreguntaBean.getCODCARRERA());
            pt.setInt(2,objPreguntaBean.getCODMATERIA());
            pt.setInt(3,objPreguntaBean.getCODNIVEL());
            pt.setInt(4,objPreguntaBean.getCODTEMA()); 
            pt.setInt(5,objPreguntaBean.getCODUNIDTEMA());
            pt.setInt(6,objPreguntaBean.getCODPREG());
            pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){ }
    }
    
    public int generarCodigo( ){
        int i=0;
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT MAX(CODESTRUCEXAMEN) FROM  estructuraexamen");
            rs = pt.executeQuery();
            if(rs.next()) i = rs.getInt(1)+1;
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) { }
        return i;
    }
      
    public int generarCodigo2( ){
        int i=1;
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT MAX(CODESTRUCEXAMEN) FROM  estructuraexamen");
            rs = pt.executeQuery();
            if(rs.next()) i = rs.getInt(1);
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) { }
        return i;
    }
    
    public int TraerCodEstrucExamen(EstructuraExamenBean objEstructuraExamenBean){
        int codigo = 0;
        try {
            String sql="SELECT CODESTRUCEXAMEN FROM estructuraexamen " +
                       "WHERE CODSEMESTRE=? AND CODTIPEXAMEN=? AND CODCARRERA=? AND CODMATERIA=?";
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement(sql);
            pt.setInt(1, objEstructuraExamenBean.getCODSEMESTRE());
            pt.setInt(2, objEstructuraExamenBean.getCODTIPEXAMEN());
            pt.setInt(3, objEstructuraExamenBean.getCODCARRERA());
            pt.setInt(4, objEstructuraExamenBean.getCODMATERIA());
            rs=pt.executeQuery();
            if (rs.next()) codigo=rs.getInt("CODESTRUCEXAMEN");
        } catch (Exception e) { }
        return codigo;
    }
    
    public String  obtenerNombNivel(int codnivel){
        String nivel="";
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT NOMBNIVEL FROM niveldificultad WHERE CODNIVEL=?");
            pt.setInt(1, codnivel);
            rs = pt.executeQuery();
            if(rs.next()) nivel = rs.getString(1);
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {    }
        return nivel;
    }
    
    
    public void EliminarCebaceraEstructuraExamen(EstructuraExamenBean objEstructuraExamenBean){
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("DELETE  FROM estructuraexamen  WHERE CODESTRUCEXAMEN=?");
            pt.setInt(1,objEstructuraExamenBean.getCODESTRUCEXAMEN());           
            pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){ }
    }   
    
    public void EliminarDetalleEstructuraExamen(EstructuraExamenBean objEstructuraExamenBean){
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("DELETE  FROM detalleestructuraexamen  WHERE CODESTRUCEXAMEN=?");
            pt.setInt(1,objEstructuraExamenBean.getCODESTRUCEXAMEN());           
            pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){ }
    }    
    

      
    
    
   
    
    
    
}