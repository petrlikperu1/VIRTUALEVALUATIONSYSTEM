package UTIL;
import  java.sql.*;
public class ConexionBD 
{
    public  static Connection getConexionBD()
    { Connection  cn=null;
        try 
        {
          Class.forName("com.mysql.jdbc.Driver");
        
    // cn=DriverManager.getConnection("jdbc:mysql://mysql9384-evaluacion1.j.facilcloud.com/mydb4","root","DeIB2lyuUB");
         
             cn=DriverManager.getConnection("jdbc:mysql://localhost/mydb6","root",""); 
      //   cn=DriverManager.getConnection("jdbc:mysql://s156.eatj.com/carlalarissaperu","carlalarissaperu","131206ivan");
        System.out.println("Se Conecto !!!!");
        } catch (Exception e) 
        {  System.out.println("No Se Conecto !!!!");
        }    
    return  cn;
    }
  public  static void main(String  args[])
  {
      getConexionBD();
  }
}
