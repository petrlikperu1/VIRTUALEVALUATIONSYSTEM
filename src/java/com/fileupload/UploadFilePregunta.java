/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fileupload;


import BEAN.DocenteSBean;
import BEAN.PreguntaBean;

import DAO.PreguntaDAO;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
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

public class UploadFilePregunta extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
        String name =null;
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
        String UPLOAD_DIRECTORY = request.getContextPath()+"/web/fotos/Preguntas";
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
                
                String rutaimagen = "/fotos/Preguntas/"+name;
                        System.out.println(rutaimagen);
                        
               String          codpreguntacad=(String)session.getAttribute("CODPREGUNTA");
               int   codpregunta=Integer.parseInt(codpreguntacad);
               System.out.println("codigo Pregunta : "+codpregunta);
               PreguntaDAO   objPreguntaDAO=new PreguntaDAO();
                        
                            objPreguntaDAO.ActualizarImagenPregunta( codpregunta,rutaimagen);
                 response.setContentType("text/html;charset=UTF-8");
                 PrintWriter out = response.getWriter();
                out.print("holaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");      
                
                
                
	}
}
}