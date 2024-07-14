package com.poly.servlet;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.beanutils.converters.DateTimeConverter;

import com.poly.models.Staff;
import com.poly.models.StaffVip;
@MultipartConfig
@WebServlet("/dangky3")
public class Servletbai3 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");

		req.getRequestDispatcher("/views/bai_3.jsp").forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		try {

			File dir = new File(req.getServletContext().getRealPath("/files"));
			if (!dir.exists()) {
				dir.mkdir();
			}

			Part photo = req.getPart("photo_file");
			File photoFile = new File(dir, photo.getSubmittedFileName());
			photo.write(photoFile.getAbsolutePath());

		

			

		

			DateTimeConverter dtc = new DateConverter();
			dtc.setPatterns(new String[] { "yyyy-MM-dd" });
			ConvertUtils.register(dtc, Date.class);
			StaffVip staff = new StaffVip();
			staff.setPhoto_file(photoFile.getName());

			BeanUtils.populate(staff, req.getParameterMap());

			req.setAttribute("bean", staff);
			System.out.println(staff.getFormatedDate());
			req.getRequestDispatcher("/views/result_3.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
