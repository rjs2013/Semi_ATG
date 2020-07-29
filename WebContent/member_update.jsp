<%@page import="com.atg.Member.biz.MemberBizImpl"%>
<%@page import="com.atg.Member.biz.MemberBiz"%>
<%@page import="com.atg.Member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>    

<!DOCTYPE html>
<head>
<link rel="stylesheet" href="resources/css/Template.css">
<link rel="stylesheet" href="resources/css/member.css">
<meta charset="UTF-8">
<title>Template</title>
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/Template.js"></script>
    
</head>
<body>
<%
	int mb_no = Integer.parseInt(request.getParameter("mb_no"));
	MemberBiz member_biz = new MemberBizImpl();
	MemberDto dto = member_biz.selectOne(mb_no);
%>
   
  <header id="header">
   	<span><h1 onclick="location.href='main.jsp'">AT-G</h1></span>
        <ul class="nav_icon">
             <li><img src="resources/img/user.png" onclick="location.href=''"></li>
             <li><img src="resources/img/basket.png" onclick="location.href=''"></li>
             <li><img src="resources/img/login.png" onclick="location.href='login.jsp'"></li>
         </ul>
          
       <nav class="top_menu">          
           <ul>
               <li>
               	<span class="menu_title">프로그램</span>
                   <ol class="bottom_menu">
                       <li onclick="location.href='tutorial.jsp'">튜토리얼</li>
                       <li onclick="location.href='program.jsp'">루틴운동</li>
                   </ol>
               </li>
               <li>
               	<span class="menu_title">외부활동</span>
                   <ol class="bottom_menu">
                       <li onclick="location.href='public.jsp'">공공체육시설</li>
                       <li>-</li>
                   </ol>
               </li>
               <li>
               	<span class="menu_title">운동상품</span>
                   <ol class="bottom_menu">
                       <li onclick="location.href='itemsearch.jsp'">운동기구찾기</li>
                       <li onclick="location.href='item.jsp'">상품판매</li>
                   </ol>
               </li>
               <li>
               	<span class="menu_title">커뮤니티</span>
                   <ol class="bottom_menu">
                       <li onclick="location.href='review.jsp'">리뷰</li>
                       <li onclick="location.href=''">실시간채팅</li>
                   </ol>
               </li>
               <li>
               	<span class="menu_title">고객지원</span>
                   <ol class="bottom_menu">
                       <li onclick="location.href='NoticeController.do?command=notice_list'">공지사항</li>
                       <li onclick="location.href='qna_user.jsp'">QnA</li>
                   </ol>
               </li>
           </ul>
       </nav>
   </header>
   
   <section class="secssion">
	<div class="box">
		<h1>회원 등급 수정</h1>
   		<form action="member.do" method="post">
   			<input type="hidden" name="command" value="member_update" />
   			<input type="hidden" name="mb_no" value="<%=dto.getMb_no() %>" />
   			<table id="box_tb" border="1">
   				<tr>
   					<th>이름</th>
   					<td><%=dto.getMb_name() %></td>
   				</tr>
   				<tr>
   					<th>성별</th>
   					<td><%=dto.getMb_gender() %></td>
   				</tr>
   				<tr>
   					<th>이메일</th>
   					<td><%=dto.getMb_email() %></td>
   				</tr>
   				<tr>
   					<th>회원등급</th>
   					<td>
   						<input type="radio" name="mb_grade" value="ADMIN" />관리자
   						<input type="radio" name="mb_grade" value="USER" />일반 회원
   					</td>
   				</tr>
   				<tr>
   					<td colspan="2" align="right">
   						<input type="button" value="취소" onclick="location.href='adminpage.jsp'" />
   						<input type="submit" value="수정">
   					</td>
   				</tr>
   			</table>
   		</form>
   	</div>
   </section>
   
   <div id="side">
   	<div class="sidebar"><span class="t">1:1</span></div>
   	<div class="sidebar"><span class="t" id="topbutton">Top</span></div>
   </div>
   
   <footer class="footer">
       <div class="footer_info">
           <p>
               <span>사업자번호</span> : 0000-0000-0000
           </p>
           <p>
               <span>위치</span> : 서울시 강남구 테헤란로 14번길 남도빌딩
           </p>
           <p>
               <span>연락처</span> : 000-0000-0000
           </p>
       </div>
   </footer>   
    
</body>
</html>