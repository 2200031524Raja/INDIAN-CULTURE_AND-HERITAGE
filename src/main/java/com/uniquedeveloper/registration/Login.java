package com.uniquedeveloper.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Uemail = request.getParameter("username");
		String Upwd = request.getParameter("password");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher= null;
		if(Uemail==null||Uemail.equals(" ")) {
			request.setAttribute("status", "InvalidEmail");
			dispatcher =request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
		if(Upwd==null||Upwd.equals(" ")) {
			request.setAttribute("status", "InvalidPassword");
			dispatcher =request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","387964@");
			PreparedStatement pst = con.prepareStatement("select * from user where Uemail=? and Upwd=?");
			pst.setString(1, Uemail);
			pst.setString(2, Upwd);
			ResultSet rs= pst.executeQuery();
			if(rs.next()) {
				session.setAttribute("name", rs.getString("Uname"));
				dispatcher =request.getRequestDispatcher("index.jsp");
			}
			else {
				request.setAttribute("status", "failed");
				dispatcher =request.getRequestDispatcher("login.jsp");
			}
			dispatcher.forward(request, response);
		}catch(Exception e) {
			
		}
	}

}
