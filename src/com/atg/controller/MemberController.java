package com.atg.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atg.Member.biz.MemberBiz;
import com.atg.Member.biz.MemberBizImpl;
import com.atg.Member.dto.MemberDto;

@WebServlet("/member.do")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String command = request.getParameter("command");
		
		MemberBiz biz = new MemberBizImpl();
		
		if(command.equals("member_detail")) {
			int mb_no = Integer.parseInt(request.getParameter("mb_no"));
			
			MemberDto dto = biz.selectOne(mb_no);
			
			request.setAttribute("dto", dto);
			
			RequestDispatcher dispatch = request.getRequestDispatcher("member_detail.jsp");
			dispatch.forward(request, response);
		} else if(command.equals("member_update")) {
			int mb_no = Integer.parseInt(request.getParameter("mb_no"));
			String mb_grade = request.getParameter("mb_grade");
			
			int res = biz.update(new MemberDto(mb_no, mb_grade));
			
			if(res > 0) {
				response.sendRedirect("adminpage.jsp");
			}
		} else if(command.equals("member_search")) {
			String search_op = request.getParameter("search_op");
			String search = request.getParameter("search");

			List<MemberDto> list = biz.search(search_op, search);
			
			request.setAttribute("list", list);
			
			RequestDispatcher dispatch = request.getRequestDispatcher("member_search.jsp");
			dispatch.forward(request, response);
		}
	}

}
