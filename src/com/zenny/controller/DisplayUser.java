package com.zenny.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zenny.model.DBUser;


@WebServlet("/DisplayUser")
public class DisplayUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DisplayUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DBUser dbuser = new DBUser();
		ResultSet rs = dbuser.getlsuser();
		request.setAttribute("rs", rs);
		request.getRequestDispatcher("showuser.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
