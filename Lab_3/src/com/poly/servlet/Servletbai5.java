package com.poly.servlet;

import java.io.File;
import java.io.IOException;
import java.net.Authenticator;
import java.util.Properties;

import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class MailServlet
 */
@WebServlet("/mail")
public class Servletbai5 extends HttpServlet {
	private static final long serialVersionUID = 1L;

   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("/views/bai_5.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			Properties p = new Properties();
            p.put("mail.smtp.auth", "true");
            p.put("mail.smtp.starttls.enable", "true");
            p.put("mail.smtp.ssl.protocols", "TLSv1.2");
            p.put("mail.smtp.host", "smtp.gmail.com");
            p.put("mail.smtp.port", 587);
            p.put("mail.debug", "true");  
            Session s = Session.getDefaultInstance(p, new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("phongnguyen.0091@gmail.com", "pswo gqnk susl qwez");
                }
            });
            javax.mail.Message msg = new MimeMessage(s);
            msg.setFrom(new InternetAddress("phongnguyen.0091@gmail.com"));
            String email = request.getParameter("To");
            msg.setRecipients(javax.mail.Message.RecipientType.TO, InternetAddress.parse(email));
            String subject = request.getParameter("Subject");
            msg.setSubject(subject);
            String content = request.getParameter("body");
            
            MimeMultipart mimeMultipart = new MimeMultipart();
            MimeBodyPart mimeBodyPart = new MimeBodyPart();
            mimeBodyPart.setContent(content, "text/html; charset=utf-8");
            mimeMultipart.addBodyPart(mimeBodyPart);
            
            
        	//Part photo = request.getPart("photo_file");
    		//File photoFile = new File(dir, photo.getSubmittedFileName());
            
            msg.setContent(mimeMultipart);
            Transport.send(msg);
	        request.setAttribute("message", "Send email success!");
		}
		catch (Exception e) {
			
			e.printStackTrace();
			request.setAttribute("message", "Send email fail!");
		}
		request.getRequestDispatcher("/views/bai_5.jsp").forward(request, response);
	}

}
