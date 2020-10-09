package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.RegistrationModel;
import com.obrs.AvailableBikesDAO;

import java.util.*;

import java.util.*;
@WebServlet("/Booking")
public class Booking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
   
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		RequestDispatcher rd;
		int b_id=0;
		System.out.println("welcoming");
		HttpSession session1=request.getSession();
		ArrayList<RegistrationModel> arr1=new ArrayList<RegistrationModel>();
		if(request.getParameter("oper")!=null )
		{
			b_id=Integer.valueOf((String) request.getParameter("b_id"));
			System.out.println(b_id);
			session1.setAttribute("b_id", b_id);
				arr1=AvailableBikesDAO.booking(b_id);
				for(RegistrationModel r:arr1)
				{
					System.out.println(r.getB_id());
				}
				request.setAttribute("arr", arr1);
				
		}
		rd=request.getRequestDispatcher("bikebooked.jsp");
		rd.forward(request,response);
		
	}
		
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
