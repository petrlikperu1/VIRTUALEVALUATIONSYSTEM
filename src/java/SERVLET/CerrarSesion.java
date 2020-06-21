package SERVLET;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class CerrarSesion extends HttpServlet 
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       
         HttpSession    session = request.getSession();
                        session.invalidate();
         String   opcioncad=request.getParameter("opciones");
         int  opciones=Integer.parseInt(opcioncad);
         if(opciones==1)
          getServletContext().getRequestDispatcher("/Seguridad/loginAcceso/Docente/FrmLoginDocente.jsp").forward(request, response);
         else
          getServletContext().getRequestDispatcher("/Seguridad/loginAcceso/Alumno/FrmLoginAlumno.jsp").forward(request, response);   
        
    }    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
