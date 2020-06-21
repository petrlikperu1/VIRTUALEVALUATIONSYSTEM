package DAO;
import BEAN.AlumnoBean;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;
import javax.swing.JOptionPane;

public class AlumnoDAO {
    Connection              cn=null;
    PreparedStatement       pt=null;
    ResultSet               rs=null;
    ArrayList<AlumnoBean>   lista=null;
    AlumnoBean              objAlumnoBean=null;

    
    
    
     public ArrayList<AlumnoBean> MostrarAlumno(){   
        try{
            cn=ConexionBD.getConexionBD();
            String sql ="SELECT CODALU, NOMBALU, APEPATERALU, APEMATERALU, USUARIO, CLAVE, ESTADO   FROM alumno ;";
            pt=cn.prepareStatement(sql);
            rs=pt.executeQuery();
            lista=new ArrayList<AlumnoBean>(); 
            while(rs.next())
            {
                objAlumnoBean=new AlumnoBean ();
                objAlumnoBean.setCODALU(rs.getInt("CODALU"));
                objAlumnoBean.setNOMBALU(rs.getString("NOMBALU"));
                objAlumnoBean.setAPEPATERALU(rs.getString("APEPATERALU"));
                objAlumnoBean.setAPEMATERALU(rs.getString("APEMATERALU"));
                objAlumnoBean.setUSUARIO(rs.getString("USUARIO"));
                objAlumnoBean.setCLAVE(rs.getString("CLAVE"));
                objAlumnoBean.setESTADO(rs.getString("ESTADO"));             
                lista.add(objAlumnoBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
    
    
    
    
    public ArrayList<AlumnoBean> ListarAlumno(){   
        try{
            cn=ConexionBD.getConexionBD();
            String sql ="SELECT A.CODALU, A.NOMBALU, A.APEPATERALU, A.APEMATERALU, A.USUARIO, A.CLAVE, A.ESTADO, AM.ALUMNOXMATERIA, AMPE.ALUMNOXMATERIAXPROGRAMACIONEXAM\n" +
                        "FROM alumno A \n" +
                        "LEFT JOIN (SELECT CODALU, COUNT(*) AS ALUMNOXMATERIA FROM `alumnoxmateria` GROUP BY CODALU) AM ON A.CODALU = AM.CODALU \n" +
                        "LEFT JOIN (SELECT CODALU, COUNT(*) AS ALUMNOXMATERIAXPROGRAMACIONEXAM FROM `alumnoxmateriaxprogramacionexam` GROUP BY CODALU) AMPE ON A.CODALU = AMPE.CODALU";
            pt=cn.prepareStatement(sql);
            rs=pt.executeQuery();
            lista=new ArrayList<AlumnoBean>(); 
            while(rs.next()){
                objAlumnoBean=new AlumnoBean ();
                objAlumnoBean.setCODALU(rs.getInt("CODALU"));
                objAlumnoBean.setNOMBALU(rs.getString("NOMBALU"));
                objAlumnoBean.setAPEPATERALU(rs.getString("APEPATERALU"));
                objAlumnoBean.setAPEMATERALU(rs.getString("APEMATERALU"));
                objAlumnoBean.setUSUARIO(rs.getString("USUARIO"));
                objAlumnoBean.setCLAVE(rs.getString("CLAVE"));
                objAlumnoBean.setESTADO(rs.getString("ESTADO"));
                int alumnoxmateria = rs.getInt("ALUMNOXMATERIA");
                int alumnoxmateriaxprogramacionexam = rs.getInt("ALUMNOXMATERIAXPROGRAMACIONEXAM");
                objAlumnoBean.setOFFSPRING(alumnoxmateria+alumnoxmateriaxprogramacionexam);
                lista.add(objAlumnoBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return  lista;  
    }
    
    public AlumnoBean TraerAlumno(int codigo){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT A.CODALU,A.NOMBALU,A.APEPATERALU,A.APEMATERALU,A.USUARIO,A.CLAVE,A.ESTADO ,A.CODCARRERA   ,B.NOMBCARRERA FROM alumno A,carreraprofesional B  WHERE A.CODALU=?;");
           
            pt.setInt(1, codigo);
            rs=pt.executeQuery();
            while(rs.next()){
                objAlumnoBean=new AlumnoBean ();
                objAlumnoBean.setCODALU(rs.getInt("CODALU"));
                objAlumnoBean.setNOMBALU(rs.getString("NOMBALU"));
                objAlumnoBean.setAPEPATERALU(rs.getString("APEPATERALU"));
                objAlumnoBean.setAPEMATERALU(rs.getString("APEMATERALU"));
                objAlumnoBean.setUSUARIO(rs.getString("USUARIO"));
                objAlumnoBean.setCLAVE(rs.getString("CLAVE"));
                objAlumnoBean.setESTADO(rs.getString("ESTADO"));
                objAlumnoBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objAlumnoBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return objAlumnoBean;  
    }
  
    
       public AlumnoBean TraerDatosAlumno(int codigo){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement(" SELECT A.CODALU,A.NOMBALU,A.APEPATERALU, \n" +
                 "                    A.APEMATERALU,A.USUARIO,A.CLAVE,A.ESTADO,A.CODCARRERA,B.NOMBCARRERA, \n" +
                 "                    A.EMAIL,A.NROTELEFONO,A.DIRECCION \n" +
                 "                    FROM alumno A,carreraprofesional B WHERE A.CODALU=?;");
           
            pt.setInt(1, codigo);
            rs=pt.executeQuery();
            while(rs.next()){
                objAlumnoBean=new AlumnoBean ();
                objAlumnoBean.setCODALU(rs.getInt("CODALU"));
                objAlumnoBean.setNOMBALU(rs.getString("NOMBALU"));
                objAlumnoBean.setAPEPATERALU(rs.getString("APEPATERALU"));
                objAlumnoBean.setAPEMATERALU(rs.getString("APEMATERALU"));
                objAlumnoBean.setUSUARIO(rs.getString("USUARIO"));
                objAlumnoBean.setCLAVE(rs.getString("CLAVE"));
                objAlumnoBean.setESTADO(rs.getString("ESTADO"));      
                objAlumnoBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objAlumnoBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));
                objAlumnoBean.setEMAIL(rs.getString("EMAIL"));
                objAlumnoBean.setNROTELEFONO(rs.getString("NROTELEFONO"));
                objAlumnoBean.setDIRECCION(rs.getString("DIRECCION"));
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return objAlumnoBean;  
    } 
    
    
    public int InsertarAlumno(AlumnoBean objAlumnoBean){
//        System.out.print("Codigo:"+objAlumnoBean.getCODALU()+"\n"+
//                         "Nombre :"+objAlumnoBean.getNOMBALU()+"\n"+
//                         "Apellido Paterno :"+objAlumnoBean.getAPEPATERALU()+"\n"+
//                         "Apellido Materno :"+objAlumnoBean.getAPEMATERALU()+"\n"+
//                         "EMAIL :"+objAlumnoBean.getEMAIL()+"\n"+
//                         "Usuario :"+objAlumnoBean.getUSUARIO()+"\n"+
//                         "Clave :"+objAlumnoBean.getCLAVE()+"\n"+
//                         "Foto :"+objAlumnoBean.getFOTO()+"\n"+
//                         "Estado :"+objAlumnoBean.getESTADO()+"\n"+
//                        "cod Carrera :"+ objAlumnoBean.getCODCARRERA());
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            String  sql="INSERT INTO alumno(CODALU,NOMBALU,APEPATERALU,APEMATERALU,EMAIL,NROTELEFONO,DIRECCION,USUARIO,CLAVE,FOTO,ESTADO,CODCARRERA) " +
                        "VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
            pt=cn.prepareStatement(sql);
            pt.setInt(1, objAlumnoBean.getCODALU());
            pt.setString(2, objAlumnoBean.getNOMBALU());
            pt.setString(3, objAlumnoBean.getAPEPATERALU());
            pt.setString(4, objAlumnoBean.getAPEMATERALU());
            pt.setString(5, objAlumnoBean.getEMAIL());
             pt.setString(6, objAlumnoBean.getNROTELEFONO());
              pt.setString(7, objAlumnoBean.getDIRECCION());
            pt.setString(8, objAlumnoBean.getUSUARIO());
            pt.setString(9, objAlumnoBean.getCLAVE());
            pt.setString(10, objAlumnoBean.getFOTO());
            pt.setString(11, objAlumnoBean.getESTADO());
            pt.setInt(12, objAlumnoBean.getCODCARRERA());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
            System.out.println("==========================>>>>"+e.getMessage());
        }
        return estado;    
    }
  
    public int ModificarAlumno(AlumnoBean objAlumnoBean){
        int estado=0;
        try {
            cn=ConexionBD.getConexionBD();
            String  sql="UPDATE alumno SET NOMBALU=?,APEPATERALU=?,APEMATERALU=?,USUARIO=?,CLAVE=?,ESTADO=? ,CODCARRERA=? " +
                        " WHERE CODALU=?";
            pt=cn.prepareStatement(sql);
            pt.setString(1, objAlumnoBean.getNOMBALU());
            pt.setString(2, objAlumnoBean.getAPEPATERALU());
            pt.setString(3, objAlumnoBean.getAPEMATERALU());
            pt.setString(4, objAlumnoBean.getUSUARIO());
            pt.setString(5, objAlumnoBean.getCLAVE());
            pt.setString(6, objAlumnoBean.getESTADO());
            pt.setInt(7, objAlumnoBean.getCODCARRERA());
            pt.setInt(8, objAlumnoBean.getCODALU());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
       return estado;    
    }
    
    public void EliminarAlumno(AlumnoBean objAlumnoBean){  
        try { 
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("DELETE FROM alumno WHERE CODALU=?");
            pt.setInt(1, objAlumnoBean.getCODALU());
            pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
    }
    
    public int  GenerarCodigoAlumno(){
        int i=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT MAX(CODALU) FROM alumno;");
            rs=pt.executeQuery();
            if(rs.next()){ i=rs.getInt(1)+1;}
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return i;
    }
    
    public int ValidarAlumno(AlumnoBean objAlumnoBean){
        int val=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT COUNT(*) FROM alumno WHERE USUARIO=? AND CLAVE=?");
            pt.setString(1, objAlumnoBean.getUSUARIO());
            pt.setString(2, objAlumnoBean.getCLAVE());
            rs=pt.executeQuery();
            if(rs.next())
            { val=rs.getInt(1);
           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
            
        }
        return val;
    }
    
    public AlumnoBean DatosAlumno(AlumnoBean objAlumnoBean){
        AlumnoBean  obj=null;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT * FROM alumno WHERE USUARIO=? AND CLAVE=?");
            pt.setString(1, objAlumnoBean.getUSUARIO());
            pt.setString(2, objAlumnoBean.getCLAVE());
            rs=pt.executeQuery();
            if(rs.next()){
              obj=new AlumnoBean();
              obj.setCODALU(rs.getInt(1));
              obj.setNOMBALU(rs.getString(2));
              obj.setAPEPATERALU(rs.getString(3));
              obj.setAPEMATERALU(rs.getString(4));
              obj.setEMAIL(rs.getString(5));
              obj.setNROTELEFONO(rs.getString(6));
              obj.setDIRECCION(rs.getString(7));              
              obj.setUSUARIO(rs.getString(8));
              obj.setCLAVE(rs.getString(9));
              obj.setFOTO(rs.getString(10));
              obj.setESTADO(rs.getString(11));
              obj.setCODCARRERA(rs.getInt(12));
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return obj;
    } 
    
   public boolean BuscarClaveActualDocente(AlumnoBean objAlumnoBean)
   {    boolean estado=false; 
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT * FROM  alumno   WHERE "
                    + "   usuario =? AND  "
                    + "   clave  like '%"+objAlumnoBean.getCLAVE()+"%' AND  codalu=? ; ");
           
            pt.setString(1, objAlumnoBean.getUSUARIO());
            pt.setInt(2, objAlumnoBean.getCODALU());
           
            rs=pt.executeQuery();
            if(rs.next())
            { estado=true;
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return  estado;
    }  
    
    public int ActualizarClaveAlumno(AlumnoBean objAlumnoBean){
        int estado=0;
        
        try {
            cn=ConexionBD.getConexionBD();
            String  sql="update  alumno set clave=?  WHERE  codalu=?  and usuario =?   ;";
            
                        
            pt=cn.prepareStatement(sql);
           
            pt.setString(1, objAlumnoBean.getCLAVENUEVA());
            pt.setInt(2, objAlumnoBean.getCODALU());
            pt.setString(3,objAlumnoBean.getUSUARIO());
                       
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
         System.out.print(e.getMessage());
        }
       return estado;    
    }      
    
    
    public  int  ActualizarDatosPersonalesAlumno(AlumnoBean objAlumnoBean){
       int  estado=0;
      try {
        
            cn=ConexionBD.getConexionBD();
            String  sql="update  alumno set nombalu=?,apepateralu=?,apemateralu=?,email=?,nrotelefono=?,direccion=? WHERE  codalu=?   ;";     
           
            pt=cn.prepareStatement(sql);
            pt.setString(1,objAlumnoBean.getNOMBALU());
            pt.setString(2,objAlumnoBean.getAPEPATERALU());
            pt.setString(3,objAlumnoBean.getAPEMATERALU());
            pt.setString(4,objAlumnoBean.getEMAIL());
           
            pt.setString(5,objAlumnoBean.getNROTELEFONO());
            pt.setString(6,objAlumnoBean.getDIRECCION());            
            
            pt.setInt(7, objAlumnoBean.getCODALU());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
            
        
      System.out.println("El Estado :"+estado);
      
      } catch (Exception e) {
           
        } 
      return  estado;
    } 
    
    
     public  void  ActualizarImagenAlumno(int  codalumno,String  rutafoto){
       int  estado=0;
      try {
          
            cn=ConexionBD.getConexionBD();
            String  sql="update  alumno set foto=?  WHERE  codalu=?   ;";     
           
            pt=cn.prepareStatement(sql);
            pt.setString(1,rutafoto);
            pt.setInt(2, codalumno);
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
           System.out.println(e.getMessage());
        }     
    } 
    
    
    
    
}
