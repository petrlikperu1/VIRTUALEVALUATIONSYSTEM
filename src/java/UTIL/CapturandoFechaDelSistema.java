
package UTIL;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.swing.JOptionPane;
public class CapturandoFechaDelSistema 
{
    public static String CalcularFechaSistema()
    {
        Date fechaActual = new Date(); 
        SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd"); 
        String  cadenaFecha = formato.format(fechaActual); 
        return  cadenaFecha;
    }
    
}
