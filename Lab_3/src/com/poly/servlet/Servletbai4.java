package com.poly.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.models.CookieUtils;
import com.poly.models.Staff;
@WebServlet("/dangnhap2")
public class Servletbai4 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = CookieUtils.get("username", req);
		String password = CookieUtils.get("password", req);
		System.out.println(username);
		System.out.println(password);
		req.setAttribute("u", username);
		req.setAttribute("p", password);
		req.getRequestDispatcher("/views/bai_4.jsp").forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String username = req.getParameter("username");
		System.out.println(username);
		String password = req.getParameter("password");
		String remember = req.getParameter("remember");

		if(!username.equalsIgnoreCase("poly")) {
		req.setAttribute("message", "Sai tên đăng nhập!");
		}
		else if(password.length() < 6) {
		req.setAttribute("message", "Sai mật khẩu!");
		}
		else {
		req.setAttribute("message", "Đăng nhập thành công!");
		int hours = (remember == null) ? 0 : 30*24; 
		CookieUtils.add("username", username, hours, resp);
		CookieUtils.add("password", password, hours, resp);
	
	
		
		}
		req.setAttribute("username", username);
		req.setAttribute("username", password);
		req.getRequestDispatcher("/views/bai_4.jsp").forward(req, resp);
	}
}
