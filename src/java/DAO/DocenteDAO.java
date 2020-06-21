package DAO;
import BEAN.DocenteBean;
import BEAN.DocenteSBean;
import UTIL.ConexionBD;
import java.util.ArrayList;
import java.sql.*;
public class DocenteDAO
{
    Connection              cn=null;
    PreparedStatement       pt=null;
    ResultSet               rs=null;
    ArrayList<DocenteBean>   lista=null;
    DocenteBean              objDocenteBean=null;
    DocenteSBean            objDocenteSBean=null;

    public ArrayList<DocenteBean> ListarDocente(){   
        try{
            cn=ConexionBD.getConexionBD();
            String sql= "SELECT D.CODDOCENTE, D.NOMBDOCENTE, D.APEPATERDOCENTE, D.APEMATERDOCENTE, D.USUARIO, D.CLAVE, D.ESTADO, DM.DOCENTEXMATERIA, PES.PROGRAMACIONEXAMENXSUPERVISOR, RD.ROLXDOCENTE \n" +
                        "FROM docente D \n" +
                        "LEFT JOIN (SELECT CODDOCENTE, COUNT(*) AS DOCENTEXMATERIA FROM `docentexmateria` GROUP BY CODDOCENTE) DM ON D.CODDOCENTE = DM.CODDOCENTE\n" +
                        "LEFT JOIN (SELECT CODDOCENTE, COUNT(*) AS PROGRAMACIONEXAMENXSUPERVISOR FROM `programacionexamenxsupervisor` GROUP BY CODDOCENTE) PES ON D.CODDOCENTE = PES.CODDOCENTE \n" +
                        "LEFT JOIN (SELECT CODDOCENTE, COUNT(*) AS ROLXDOCENTE FROM `rolxdocente` GROUP BY CODDOCENTE) RD ON D.CODDOCENTE = RD.CODDOCENTE";
            pt=cn.prepareStatement(sql);
            rs=pt.executeQuery();
            lista=new ArrayList<DocenteBean>(); 
            while(rs.next()){
                objDocenteBean=new DocenteBean ();
                objDocenteBean.setCODDOCENTE(rs.getInt("CODDOCENTE"));
                objDocenteBean.setNOMBDOCENTE(rs.getString("NOMBDOCENTE"));
                objDocenteBean.setAPEPATERDOCENTE(rs.getString("APEPATERDOCENTE"));
                objDocenteBean.setAPEMATERDOCENTE(rs.getString("APEMATERDOCENTE"));
                objDocenteBean.setUSUARIO(rs.getString("USUARIO"));
                objDocenteBean.setCLAVE(rs.getString("CLAVE"));
                objDocenteBean.setESTADO(rs.getString("ESTADO"));
                int docentexmateria = rs.getInt("DOCENTEXMATERIA");
                int programacionexamenxsupervisor = rs.getInt("PROGRAMACIONEXAMENXSUPERVISOR");
                int rolxdocente = rs.getInt("ROLXDOCENTE");
                objDocenteBean.setOFFSPRING(docentexmateria+programacionexamenxsupervisor+rolxdocente);
                lista.add(objDocenteBean);           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){ }
        return  lista;  
    }
    
     public DocenteBean TraerAlumno(int codigo){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT * FROM docente WHERE CODDOCENTE=?;");
            pt.setInt(1, codigo);
            rs=pt.executeQuery();
            while(rs.next()){
             DocenteBean   objDocenteBean=new DocenteBean ();
                objDocenteBean.setCODDOCENTE(rs.getInt("CODDOCENTE"));
                objDocenteBean.setNOMBDOCENTE(rs.getString("NOMBDOCENTE"));
                objDocenteBean.setAPEPATERDOCENTE(rs.getString("APEPATERDOCENTE"));
                objDocenteBean.setAPEMATERDOCENTE(rs.getString("APEMATERDOCENTE"));
               objDocenteBean.setUSUARIO(rs.getString("USUARIO"));
               objDocenteBean.setCLAVE(rs.getString("CLAVE"));
                objDocenteBean.setESTADO(rs.getString("ESTADO"));
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){
        }
        return objDocenteBean;  
    }
    public DocenteBean TraerDocente(int codigo){   
        try{
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT A.CODDOCENTE,A.NOMBDOCENTE,A.APEPATERDOCENTE,"
                    + " A.APEMATERDOCENTE,A.USUARIO,A.CLAVE,A.ESTADO,A.CODCARRERA,B.NOMBCARRERA,"
                    + "A.EMAIL,A.NROTELEFONO,A.DIRECCION "
                    + " FROM docente A,carreraprofesional B WHERE A.CODDOCENTE=?;");
            pt.setInt(1, codigo);
            rs=pt.executeQuery();
            while(rs.next()){
                objDocenteBean=new DocenteBean ();
                objDocenteBean.setCODDOCENTE(rs.getInt("CODDOCENTE"));
                objDocenteBean.setNOMBDOCENTE(rs.getString("NOMBDOCENTE"));
                objDocenteBean.setAPEPATERDOCENTE(rs.getString("APEPATERDOCENTE"));
                objDocenteBean.setAPEMATERDOCENTE(rs.getString("APEMATERDOCENTE"));
                objDocenteBean.setUSUARIO(rs.getString("USUARIO"));
                objDocenteBean.setCLAVE(rs.getString("CLAVE"));
                objDocenteBean.setESTADO(rs.getString("ESTADO"));
                objDocenteBean.setCODCARRERA(rs.getInt("CODCARRERA"));
                objDocenteBean.setNOMBCARRERA(rs.getString("NOMBCARRERA"));
                objDocenteBean.setEMAIL(rs.getString("EMAIL"));
                objDocenteBean.setNROTELEFONO(rs.getString("NROTELEFONO"));
                objDocenteBean.setDIRECCION(rs.getString("DIRECCION"));
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e){ }
        return objDocenteBean;  
    }  
    public int InsertarDocente(DocenteBean objDocenteBean){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            String  sql="INSERT INTO docente(CODDOCENTE,NOMBDOCENTE,APEPATERDOCENTE,APEMATERDOCENTE,EMAIL,NROTELEFONO,DIRECCION,USUARIO,CLAVE,FOTO,ESTADO,CODCARRERA) " +
                        "VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
                       
            
            pt=cn.prepareStatement(sql);
            pt.setInt(1, objDocenteBean.getCODDOCENTE());
            pt.setString(2, objDocenteBean.getNOMBDOCENTE());
            pt.setString(3, objDocenteBean.getAPEPATERDOCENTE());
            pt.setString(4, objDocenteBean.getAPEMATERDOCENTE());
            pt.setString(5, objDocenteBean.getEMAIL());
            pt.setString(6, objDocenteBean.getNROTELEFONO());
            pt.setString(7, objDocenteBean.getDIRECCION());
            pt.setString(8, objDocenteBean.getUSUARIO());
            pt.setString(9, objDocenteBean.getCLAVE());
            pt.setString(10, objDocenteBean.getFOTO());
            pt.setString(11, objDocenteBean.getESTADO());
            pt.setInt(12, objDocenteBean.getCODCARRERA());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){ }
        return estado;    
    }  
    public int ModificarDocente(DocenteBean objDocenteBean){
        int estado=0;
        try {
            cn=ConexionBD.getConexionBD();
            String  sql="UPDATE docente SET NOMBDOCENTE=?,APEPATERDOCENTE=?,APEMATERDOCENTE=?,USUARIO=?,CLAVE=?,ESTADO=? ,CODCARRERA=? " +
                        "WHERE CODDOCENTE=?";
            pt=cn.prepareStatement(sql);
            pt.setString(1, objDocenteBean.getNOMBDOCENTE());
            pt.setString(2, objDocenteBean.getAPEPATERDOCENTE());
            pt.setString(3, objDocenteBean.getAPEMATERDOCENTE());
            pt.setString(4, objDocenteBean.getUSUARIO());
            pt.setString(5, objDocenteBean.getCLAVE());
            pt.setString(6, objDocenteBean.getESTADO());
             pt.setInt(7, objDocenteBean.getCODCARRERA());
            pt.setInt(8, objDocenteBean.getCODDOCENTE());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) { }
       return estado;    
    }    
    public void EliminarDocente(DocenteBean objDocenteBean){  
        try { 
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("DELETE FROM docente WHERE CODDOCENTE=?");
            pt.setInt(1, objDocenteBean.getCODDOCENTE());
            pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) { }
    }    
    public int  GenerarCodigoDocente(){
        int i=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT MAX(CODDOCENTE) FROM docente;");
            rs=pt.executeQuery();
            if(rs.next()){ i=rs.getInt(1)+1;}
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) { }
        return i;
    }    
    public int ValidarDocente(DocenteSBean objDocenteSBean){
        int val=0;
         System.out.println("Usuario: "+objDocenteSBean.getUSUARIO()+"\nClave :"+objDocenteSBean.getCLAVE()+"\nTipo :"+objDocenteSBean.getTIPO());
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT COUNT(*) FROM rolxdocente  A,docente  B , rol  C  WHERE  "
                    + " A.coddocente=B.coddocente  AND   A.codrol=C.codrol  AND  A.usuario =? AND  A.clave=?  AND A.codrol=? ;");
            pt.setString(1, objDocenteSBean.getUSUARIO());
            pt.setString(2, objDocenteSBean.getCLAVE());
            pt.setInt(3, Integer.parseInt(objDocenteSBean.getTIPO()));
            rs=pt.executeQuery();
            if(rs.next()){
                val=rs.getInt(1);
                System.out.println("Mira  estoooo :"+val);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        
         System.out.println("ZZZZZZZZZZZZZZZZZZZZZZZZZZ=>"+e.getMessage());
        }
        return val;
    }    
    public DocenteSBean DatosDocente(DocenteSBean objDocenteSBean){
        DocenteSBean  obj=null;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT B.coddocente, B.nombdocente,B.apepaterdocente,B.apematerdocente,A.usuario,A.clave ,B.foto,A.codrol,B.email  "
                    + " FROM rolxdocente  A,docente  B , rol  C  WHERE   A.coddocente=B.coddocente  AND   A.codrol=C.codrol AND  A.usuario =? "
                    + "AND  A.clave=? AND A.codrol=?  ;");
            pt.setString(1, objDocenteSBean.getUSUARIO());
            pt.setString(2, objDocenteSBean.getCLAVE());
            pt.setInt(3, Integer.parseInt(objDocenteSBean.getTIPO()));
            
          
            rs=pt.executeQuery();
            if(rs.next()){
              obj=new DocenteSBean();
              obj.setCODDOCENTE(rs.getInt(1));
              obj.setNOMBDOCENTE(rs.getString(2));
              obj.setAPEPATERDOCENTE(rs.getString(3));
              obj.setAPEMATERDOCENTE(rs.getString(4));
              obj.setUSUARIO(rs.getString(5));
              obj.setCLAVE(rs.getString(6));
              obj.setFOTO(rs.getString(7));
              obj.setTIPO(rs.getString(8));
              obj.setEMAIL(rs.getString(9));
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) 
        {
        }
        return obj;
    }
    
    
   public int ActualizarClaveDocente(DocenteSBean objDocenteBean){
        int estado=0;
        
        try {
            cn=ConexionBD.getConexionBD();
            String  sql="update  rolxdocente set clave=?  WHERE  coddocente=?  and usuario =? and  codrol=?  ;";
            
                        
            pt=cn.prepareStatement(sql);
           
            pt.setString(1, objDocenteBean.getCLAVENUEVA());
            pt.setInt(2, objDocenteBean.getCODDOCENTE());
            pt.setString(3, objDocenteBean.getUSUARIO());
            pt.setInt(4, Integer.parseInt(objDocenteBean.getTIPO()));
            
            estado= pt.executeUpdate();
            System.out.print("hola >>>> "+estado);
            pt.close();
            cn.close();
        } catch (Exception e) {
         
        }
       return estado;    
    }      
    
    
   public boolean BuscarClaveActualDocente(DocenteSBean objDocenteSBean){
       
         boolean estado=false; 
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT * FROM  rolxdocente  A,docente  B , rol  C  WHERE "
                    + "  A.coddocente=B.coddocente  AND A.codrol=C.codrol  AND  A.usuario =? AND "
                    + "    A.clave  like '%"+objDocenteSBean.getCLAVE()+"%' AND  A.coddocente=? AND A.codrol=? ; ");
           
            pt.setString(1, objDocenteSBean.getUSUARIO());
            pt.setInt(2, objDocenteSBean.getCODDOCENTE());
            pt.setInt(3, Integer.parseInt(objDocenteSBean.getTIPO()));
            rs=pt.executeQuery();
            if(rs.next()){ 
                
               estado=true;
            
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return  estado;
    } 
   public  void  ActualizarImagenDocente(int  coddocente,String  rutafoto){
       int  estado=0;
      try {
          
            cn=ConexionBD.getConexionBD();
            String  sql="update  docente set foto=?  WHERE  coddocente=?   ;";     
           
            pt=cn.prepareStatement(sql);
            pt.setString(1,rutafoto);
            pt.setInt(2, coddocente);
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
           System.out.println(e.getMessage());
        }     
    } 
   
   public  int  ActualizarDatosPersonalesDocente(DocenteBean objDocenteSBean){
       int  estado=0;
      try {
         System.out.println(objDocenteSBean.getCODDOCENTE()+"     "+objDocenteSBean.getNOMBDOCENTE()+"   "+objDocenteSBean.getAPEPATERDOCENTE()+"    "+objDocenteSBean.getAPEMATERDOCENTE()+"     "+objDocenteSBean.getEMAIL());
            cn=ConexionBD.getConexionBD();
            String  sql="update  docente set nombdocente=?,apepaterdocente=?,apematerdocente=?,email=?,nrotelefono=?,direccion=? WHERE  coddocente=?   ;";     
           
            pt=cn.prepareStatement(sql);
            pt.setString(1,objDocenteSBean.getNOMBDOCENTE());
            pt.setString(2,objDocenteSBean.getAPEPATERDOCENTE());
            pt.setString(3,objDocenteSBean.getAPEMATERDOCENTE());
            pt.setString(4,objDocenteSBean.getEMAIL());
           
            pt.setString(5,objDocenteSBean.getNROTELEFONO());
            pt.setString(6,objDocenteSBean.getDIRECCION());            
            
            pt.setInt(7, objDocenteSBean.getCODDOCENTE());
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
             System.out.println(objDocenteSBean.getCODDOCENTE()+"     "+objDocenteSBean.getNOMBDOCENTE()+"   "+objDocenteSBean.getAPEPATERDOCENTE()+"    "+objDocenteSBean.getAPEMATERDOCENTE()+"     "+objDocenteSBean.getEMAIL());
        
      System.out.println("El Estado :"+estado);
      
      } catch (Exception e) {
           
        } 
      return  estado;
    } 
   
   
   
   
   
}
