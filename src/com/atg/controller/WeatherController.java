package com.atg.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/weatherOpen")
public class WeatherController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request,response);
	}
	
	// code 값을 가져와서 저장한 후에, 저장한 code 값을 가지고 weatherInfo.jsp로 이동
	// 우리가 보는(표시되고있는) 창은 weatherView.html이지만 요청, 응답 값은 weatherInfo.jsp에서 왔다.
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("search");
		request.setAttribute("name", name);
		RequestDispatcher rd = request.getRequestDispatcher("weatherInfo2.jsp");
		rd.forward(request, response);
	}

}
