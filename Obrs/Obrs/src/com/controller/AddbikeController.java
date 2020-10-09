package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.model.*;
import com.obrs.RegistrationDAO;
/**
 * Servlet implementation class AddbikeController
 */
@WebServlet("/AddbikeController")
public class AddbikeController extends HttpServlet {
	int n=1;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd;
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		int b_id=Integer.valueOf(request.getParameter("b_id"));
        String model=request.getParameter("model");
        String pday_rent=request.getParameter("pday_rent");
		String b_colour=request.getParameter("b_colour");
		String reg_number=request.getParameter("reg_number");
		String category=request.getParameter("category");
		String engine_cc=request.getParameter("engine_cc");
		String status=request.getParameter("status");
		String rent_type=request.getParameter("rent_type");
		RegistrationModel ab=new RegistrationModel(model,pday_rent,b_colour,rent_type,reg_number,status, category,engine_cc,b_id);
	    if(RegistrationDAO.register(ab)==true)
	    {
	    	rd=request.getRequestDispatcher("bike_admin.html");
	    	rd.forward(request, response);
	    }
	    else
	    {
	    	out.println("please enter the credential");
	    	rd=request.getRequestDispatcher("addbike.html");
	    	rd.forward(request, response);
	    }
		
		
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
