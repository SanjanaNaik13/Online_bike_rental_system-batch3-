package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.RegistrationModel;
import com.obrs.RegistrationDAO;
import com.obrs.ViewProfileDAO;

@WebServlet("/editProfile")
public class editProfile extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd;
		response.setContentType("text/html");
		PrintWriter out= response.getWriter(); 
		String email_id=request.getParameter("email_id");
        String name=request.getParameter("name");
		String ph_no=request.getParameter("mobno");
		String location=request.getParameter("location");
		String s_quest=request.getParameter("secque");
		String s_ans=request.getParameter("secans");
	    RegistrationModel r1=new  RegistrationModel(email_id, name,  ph_no, location, s_quest, s_ans);
	    if(ViewProfileDAO.ViewProfileDAO(email_id, r1)==true)
	    {
	    	rd=request.getRequestDispatcher("bike_home.jsp");
	    	rd.forward(request, response);
	    }
	    else
	    {
	    	out.println("please enter the credential");
	    	rd=request.getRequestDispatcher("viewprofile.jsp");
	    	rd.forward(request, response);
	    }
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
