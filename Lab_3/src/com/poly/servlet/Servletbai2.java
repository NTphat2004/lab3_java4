package com.poly.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.beanutils.converters.DateTimeConverter;




import com.poly.models.Staff;
@WebServlet("/dangky2")
public class Servletbai2 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");

		req.getRequestDispatcher("/views/bai_2.jsp").forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {

			req.setCharacterEncoding("utf-8");
			resp.setCharacterEncoding("utf-8");

			DateTimeConverter dtc = new DateConverter();
		    dtc.setPatterns(new String[] { "yyyy-MM-dd" });
			ConvertUtils.register(dtc, Date.class);
			Staff staff = new Staff();
		
			BeanUtils.populate(staff, req.getParameterMap());
			
		
			req.setAttribute("bean", staff);
			System.out.println(staff.getFormatedDate());
			req.getRequestDispatcher("/views/result_2.jsp").forward(req, resp);
			} catch (Exception e) {
			e.printStackTrace();
			}

	}
}
