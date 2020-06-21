
package DAO;
        import BEAN.*;
        import UTIL.ConexionBD;
        import java.util.ArrayList;
        import java.sql.*;
public class UsuarioDAO 
{  
    Connection cn = null;
    PreparedStatement pt = null;
    ResultSet rs = null;
    ArrayList<UsuarioBean> listadoUsuario = null;
  
    CarreraProfesionalBean objCarreraProfesionalBean = null;
    UsuarioBean objUsuBean = null;
    
    
   public ArrayList<UsuarioBean> FiltrarListaUsuariosEstudiantes(UsuarioBean   objUsuarioBean) {
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT codalu,concat(nombalu,' ',apepateralu,'   ',apemateralu) AS nombalu FROM alumno    where  codcarrera=?  ; ");
            pt.setInt(1,objUsuarioBean.getCODCARRERA());
            rs = pt.executeQuery();
            listadoUsuario = new ArrayList<UsuarioBean>();
            int i=0;
            while (rs.next()) 
            {
             objUsuarioBean=new UsuarioBean();
             objUsuarioBean.setCODIGO(rs.getInt("codalu"));
             objUsuarioBean.setNOMBRE(rs.getString("nombalu"));
             listadoUsuario.add(objUsuarioBean);
           
            }     
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
          
        }
        return listadoUsuario;
    }  
    
    
    
   public ArrayList<UsuarioBean> FiltrarListaUsuariosDocentes(UsuarioBean   objUsuarioBean) {
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT coddocente,concat(nombdocente,' ',apepaterdocente,'   ',apematerdocente) AS nombdocente FROM docente    where  codcarrera=?  ; ");
            pt.setInt(1,objUsuarioBean.getCODCARRERA());
            rs = pt.executeQuery();
            listadoUsuario = new ArrayList<UsuarioBean>();
            int i=0;
            while (rs.next()) 
            {
             objUsuarioBean=new UsuarioBean();
             objUsuarioBean.setCODIGO(rs.getInt("coddocente"));
             objUsuarioBean.setNOMBRE(rs.getString("nombdocente"));
             listadoUsuario.add(objUsuarioBean);
           
            }     
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
          
        }
        return listadoUsuario;
    } 
   
   
     public ArrayList<UsuarioBean> ListarUsuariosDocentes(UsuarioBean   objUsuarioBean) {
          
         StringBuilder  sql=new StringBuilder();
        try {
            cn = ConexionBD.getConexionBD();
            
              sql.append(" select    B.coddocente,B.nombdocente,B.apepaterdocente,B.apematerdocente,C.nombrol,D.nombcarrera ,A.codrolxdocente,A.estado from  rolxdocente  AS A   " );
              sql.append(" INNER JOIN docente  AS B ON A.coddocente = B.coddocente   " );
              sql.append(" INNER  JOIN rol  AS C ON C.codrol = A.codrol   " );
              sql.append(" INNER  JOIN  carreraprofesional  AS D ON D.codcarrera = B.codcarrera  " );
            
            if(   objUsuarioBean.getCODCARRERA()!=0  && objUsuarioBean.getCODIGO()==0)
            {
                   sql.append("  where  B.codcarrera=?  ;");
            }
            else if(   objUsuarioBean.getCODCARRERA()!=0  && objUsuarioBean.getCODIGO()!=0)
                    {
                       sql.append("   where  B.codcarrera =?  and B.coddocente =? "); 
                    } 
            pt = cn.prepareStatement(sql.toString());
           
            
           if(   objUsuarioBean.getCODCARRERA()!=0  && objUsuarioBean.getCODIGO()==0)
            {
                  pt.setInt(1,objUsuarioBean.getCODCARRERA());
                 
            }
            else if(   objUsuarioBean.getCODCARRERA()!=0  && objUsuarioBean.getCODIGO()!=0)
                    {
                      pt.setInt(1,objUsuarioBean.getCODCARRERA());
                      pt.setInt(2,objUsuarioBean.getCODIGO());
                     
                    }   
            
            
            rs = pt.executeQuery();
            listadoUsuario = new ArrayList<UsuarioBean>();
          
            while (rs.next()) 
            {
                 objUsuarioBean=new UsuarioBean();
                 objUsuarioBean.setCODIGO(rs.getInt("coddocente"));
                 objUsuarioBean.setNOMBRE(rs.getString("nombdocente"));
                 objUsuarioBean.setAPELLIDOPATERNO(rs.getString("apepaterdocente"));
                 objUsuarioBean.setAPELLIDOMATERNO(rs.getString("apematerdocente"));
                 objUsuarioBean.setNOMBTIPO(rs.getString("nombrol"));
                 objUsuarioBean.setNOMBCARRERA(rs.getString("nombcarrera"));
                 objUsuarioBean.setCODROLXDOCENTE(rs.getInt("codrolxdocente"));
                 objUsuarioBean.setESTADO(rs.getString("estado"));
             listadoUsuario.add(objUsuarioBean);
           
            }     
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
          System.out.println(e.getMessage());
        }
        return listadoUsuario;
    } 
    
   
     public ArrayList<UsuarioBean> ListarUsuariosEstudiantes(UsuarioBean   objUsuarioBean) {
          
         StringBuilder  sql=new StringBuilder();
        try {
            cn = ConexionBD.getConexionBD();
            
              sql.append(" select    codalu,concat(nombalu,' ',apepateralu,'   ',apemateralu) AS nombalu,estado  from  alumno   " );             
            
            if(   objUsuarioBean.getCODCARRERA()!=0  && objUsuarioBean.getCODIGO()==0)
            {
                   sql.append("  where  codcarrera=?  ;");
            }
            else if(   objUsuarioBean.getCODCARRERA()!=0  && objUsuarioBean.getCODIGO()!=0)
                    {
                       sql.append("   where  codcarrera =?  and   codalu =? "); 
                    } 
            pt = cn.prepareStatement(sql.toString());
           
            
           if(   objUsuarioBean.getCODCARRERA()!=0  && objUsuarioBean.getCODIGO()==0)
            {
                  pt.setInt(1,objUsuarioBean.getCODCARRERA());
                 
            }
            else if( objUsuarioBean.getCODCARRERA()!=0  && objUsuarioBean.getCODIGO()!=0)
                    {
                      pt.setInt(1,objUsuarioBean.getCODCARRERA());
                      pt.setInt(2,objUsuarioBean.getCODIGO());
                     
                    }   
            
            
            rs = pt.executeQuery();
            listadoUsuario = new ArrayList<UsuarioBean>();
          
            while (rs.next()) 
            {
                 objUsuarioBean=new UsuarioBean();
                 objUsuarioBean.setCODIGO(rs.getInt("codalu"));
                 objUsuarioBean.setNOMBRE(rs.getString("nombalu"));

                 objUsuarioBean.setESTADO(rs.getString("estado"));
             listadoUsuario.add(objUsuarioBean);
           
            }     
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
          System.out.println(e.getMessage());
        }
        return listadoUsuario;
    } 
     
     
     
   public void   DarBajaUsuariosDocentes(UsuarioBean   objUsuarioBean) {
          
         StringBuilder  sql=new StringBuilder();
        try {
            cn = ConexionBD.getConexionBD();
            
              sql.append(" Update   rolxdocente  set  estado=?  " );
              sql.append("  where  codrolxdocente=?  ;" );
           
            pt = cn.prepareStatement(sql.toString());
            pt.setString(1,"I");
            pt.setInt(2,objUsuarioBean.getCODROLXDOCENTE());            
            
            pt.executeUpdate();
            
            pt.close();            
            cn.close();
        } catch (Exception e) {
          System.out.println(e.getMessage());
        }
    }
   
    public void   HabilitarUsuariosDocentes(UsuarioBean   objUsuarioBean) {
          
         StringBuilder  sql=new StringBuilder();
        try {
            cn = ConexionBD.getConexionBD();
            
              sql.append(" Update   rolxdocente  set  estado=?  " );
              sql.append("  where  codrolxdocente=?  ;" );
           
            pt = cn.prepareStatement(sql.toString());
            pt.setString(1,"A");
            pt.setInt(2,objUsuarioBean.getCODROLXDOCENTE());            
            
            pt.executeUpdate();
            
            pt.close();            
            cn.close();
        } catch (Exception e) {
          System.out.println(e.getMessage());
        }
    } 
   
   public int  GenerarCodigoRolxDocente(){
        int i=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT MAX(codrolxdocente) FROM rolxdocente;");
            rs=pt.executeQuery();
            if(rs.next()){ i=rs.getInt(1)+1;}
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return i;
    }
     public int  GenerarCodigoEstudiante(){
        int i=0;
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT MAX(codalu) FROM alumno;");
            rs=pt.executeQuery();
            if(rs.next()){ i=rs.getInt(1)+1;}
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return i;
    }
     
     public void   RegistrarNuevoUsuarioAlu(UsuarioBean  objUsuBean){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            String  sql="INSERT INTO alumno(CODROLXDOCENTE,CODDOCENTE,CODROL,USUARIO,CLAVE,ESTADO ) " +
                        " VALUES (?,?,?,?,?,?)";
            pt=cn.prepareStatement(sql);
            pt.setInt(1, objUsuBean.getCODROLXDOCENTE());
            pt.setInt(2, objUsuBean.getCODIGO());
            pt.setInt(3,objUsuBean.getCODROL());
            pt.setString(4, objUsuBean.getUSUARIO());
            pt.setString(5, objUsuBean.getPASSWORD());
            pt.setString(6, objUsuBean.getESTADO());            
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
        }
    }
   
    public void   RegistrarNuevoUsuario(UsuarioBean  objUsuBean){
        int estado=0;
        try{
            cn=ConexionBD.getConexionBD();
            String  sql="INSERT INTO rolxdocente(CODROLXDOCENTE,CODDOCENTE,CODROL,USUARIO,CLAVE,ESTADO ) " +
                        " VALUES (?,?,?,?,?,?)";
            pt=cn.prepareStatement(sql);
            pt.setInt(1, objUsuBean.getCODROLXDOCENTE());
            pt.setInt(2, objUsuBean.getCODIGO());
            pt.setInt(3,objUsuBean.getCODROL());
            pt.setString(4, objUsuBean.getUSUARIO());
            pt.setString(5, objUsuBean.getPASSWORD());
            pt.setString(6, objUsuBean.getESTADO());            
            estado= pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e){
        }
    }
   
   
   
   
   
   
   
}
