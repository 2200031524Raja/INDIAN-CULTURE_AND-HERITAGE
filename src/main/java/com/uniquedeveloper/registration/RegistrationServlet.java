package com.uniquedeveloper.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Uname = request.getParameter("name");
		String Uemail = request.getParameter("email");
		String Upwd = request.getParameter("pass");
		String ReUpwd = request.getParameter("re_pass");
		String Umobile = request.getParameter("contact");
		RequestDispatcher dispatcher= null;
		Connection con =null;
		if(Uname==null||Uname.equals(" ")) {
			request.setAttribute("status", "InvalidName");
			dispatcher =request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		if(Uemail==null||Uemail.equals(" ")) {
			request.setAttribute("status", "InvalidEmail");
			dispatcher =request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		if(Upwd==null||Upwd.equals(" ")) {
			request.setAttribute("status", "Invalidpwd");
			dispatcher =request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		} else if(!Upwd.equals(ReUpwd)) {
			request.setAttribute("status", "InvalidRePwd");
			dispatcher =request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		if(Umobile==null||Umobile.equals(" ")) {
			request.setAttribute("status", "Invalidcontact");
			dispatcher =request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		else if(Umobile.length()>10) {
			request.setAttribute("status", "InvalidNumber");
			dispatcher =request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con= DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","387964@");
			PreparedStatement pst = con.prepareStatement("insert into user(Uname,Upwd,Uemail,Umobile) values(?,?,?,?)");
			pst.setString(1, Uname);
			pst.setString(2, Upwd);
			pst.setString(3, Uemail);
			pst.setString(4, Umobile);
			int rowcount =pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("registration.jsp");
			if(rowcount >0) {
				request.setAttribute("status", "success");
			}
			else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
			
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}

}
