package com.poly.servlet;

import java.io.File;
import java.io.IOException;

import javax.print.Doc;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet("/upload")
public class Servletbai1 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/bai1.jsp").forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		File dir = new File(req.getServletContext().getRealPath("/files"));
		if (!dir.exists()) {
			dir.mkdir();
		}
		try {
			Part photo = req.getPart("photo_file");
			File photoFile = new File(dir, photo.getSubmittedFileName());
			photo.write(photoFile.getAbsolutePath());
			Part docPart = req.getPart("doc_file");
			File docfiFile = new File(dir, docPart.getSubmittedFileName());
			docPart.write(docfiFile.getAbsolutePath());
			
			req.setAttribute("img", photoFile);
			req.setAttribute("doc", docfiFile);
			req.getRequestDispatcher("/views/result_1.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
		

	
	}
}
