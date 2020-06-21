
package com.fileupload;

import BEAN.DocenteSBean;
import DAO.DocenteDAO;
import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class UploadFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
        String name =null;
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
        String UPLOAD_DIRECTORY = request.getContextPath()+"/web/fotos/Perfil";
        HttpSession session= request.getSession();
        
	boolean isMultipart = ServletFileUpload.isMultipartContent(request);

	// process only if its multipart content
	if (isMultipart) {
		// Create a factory for disk-based file items
		FileItemFactory factory = new DiskFileItemFactory();

		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);
		try {
			// Parse the request
			List<FileItem> multiparts = upload.parseRequest(request);

			for (FileItem item : multiparts) {
				if (!item.isFormField()) {
					name = new File(item.getName()).getName();
					item.write(new File(UPLOAD_DIRECTORY + File.separator + name));
				}
			}
		} 
		catch (Exception e) 
		{
		  e.printStackTrace();
		}
                
                String rutaimagen = "/fotos/Perfil/"+name;
                        System.out.println(rutaimagen);
                DocenteSBean    objDocenteBean1 = (DocenteSBean) session.getAttribute("SESION");  
               DocenteDAO   objDocenteDAO=new DocenteDAO();
                     
                            objDocenteDAO.ActualizarImagenDocente(objDocenteBean1.getCODDOCENTE(),rutaimagen);
                      
                
                
                
	}
}
}