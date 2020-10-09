package com.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Period;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.obrs.AvailableBikesDAO;

@WebServlet("/updatebooking")
public class updatebooking extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd;
		HttpSession session1=request.getSession();
		String rent_sdate=request.getParameter("rent_sdate");
		String rent_edate=request.getParameter("rent_edate");
		String email_id=(String) session1.getAttribute("email_id");
		SimpleDateFormat myFormat= new SimpleDateFormat("dd-mm-yyyy");
		System.out.println(rent_sdate);
		System.out.println(rent_edate);
		LocalDate date1 = LocalDate.parse(rent_sdate);
		LocalDate date2 = LocalDate.parse(rent_edate);
		Period period=Period.between(date1, date2);
		int n=period.getDays();
		String pay_status=null;
		String 	ret_status=null;
		int rent=Integer.valueOf(request.getParameter("pday_rent"));
		int total_rent=n*rent;
		 //LocalDate today = LocalDate.now();
		//int b_id=Integer.valueOf((String) session1.getAttribute("b_id"));
		
		//int book_id=AvailableBikesDAO.maxb_id()+1;
		request.setAttribute("rent", total_rent);
		request.setAttribute("sdate", rent_sdate);
		request.setAttribute("nodays", n);
		rd=request.getRequestDispatcher("bike_book.jsp");
		rd.forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
