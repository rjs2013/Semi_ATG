<%@page import="com.atg.Member.dto.MemberDto"%>
<%@page import="com.atg.Member.biz.MemberBizImpl"%>
<%@page import="com.atg.Member.biz.MemberBiz"%>
<%@page import="com.atg.Notice.biz.NoticeBizImpl"%>
<%@page import="com.atg.Notice.biz.NoticeBiz"%>
<%@page import="com.atg.Notice.dto.NoticeDto"%>
<%@page import="java.util.List"%>
<%@page import="com.atg.Notice.dao.NoticeDaoImpl"%>
<%@page import="com.atg.Notice.dao.NoticeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>    

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="resources/css/Template.css">
    <link rel="stylesheet" href="resources/css/adminpage.css">
	<meta charset="UTF-8">
	<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="resources/js/adminpage.js"></script>
    <script type="text/javascript" src="resources/js/Template.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Admin page</title>
</head>
<body>
<%
	NoticeBiz notice_biz = new NoticeBizImpl();
	List<NoticeDto> notice_list = notice_biz.selectList();
	
	MemberBiz member_biz = new MemberBizImpl();
	List<MemberDto> member_list = member_biz.selectList();
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
	<h1>관리자 페이지</h1>
   	
   	<aside>
   	
   		 <ul class="admin">
             <li class="li_tab" id="tab1">회원조회</li>
             <li class="li_tab" id="tab2">공지사항 관리</li>
             <li class="li_tab" id="tab3">QnA 관리</li>
         </ul>
	   	
   	</aside>
   	
   	<div class="box">
   		<form id="user_admin" action="MemberController.do" method="post" >
   			<input type="hidden" name="command" value="member_search" />
   			<table id="box_tb" border="1" style="text-align : center;">
   				<col width="100" />
   				<col width="100" />
   				<col width="100" />
   				<col width="200" />
   				<col width="200" />
   				<col width="100" />
   				<tr>
   					<th>회원 번호</th>
   					<th>이       름</th>
   					<th>아  이  디</th>
   					<th>이  메  일</th>
   					<th>주       소</th>
   					<th>회원 등급</th>
   				</tr>
   				<tr>
   				<%
   					if(member_list.size() == 0) {
   				%>
   				<tr>
   					<td colspan="6">-----회원이 한 명도 없다.....-----</td>
   				</tr>
   				<%
   					} else {
   						for(MemberDto dto : member_list) {
   				%>
   					<td><a style="color:blue;" href="../../MemberController.do?command=member_detail&mb_no=<%=dto.getMb_no() %>"><%=dto.getMb_no() %></a></td>
   					<td><%=dto.getMb_name() %></td>
   					<td><%=dto.getMb_id() %></td>
   					<td><%=dto.getMb_email() %></td>
   					<td><%=dto.getMb_addr() %></td>
   					<td><%=dto.getMb_grade() %></td>
   				</tr>
   				<%
   						}
   					}
   				%>
   				<tr>
   					<td colspan="6" align="center">
   						<select name="search_op">
   							<option value="mb_name" selected>이름으로 검색  </option>
   							<option value="mb_id">아이디로 검색</option>
   						</select>
   						<input type="search" name="search" placeholder="검색어를 입력하세요." />
   						<button class="search_bt" type="submit"><img class="search_img" width="15" hright="15" src="../../resources/img/glass1.jpg" alt="검색" /></button>
   					</td>
   				</tr>
   			</table>
   		</form>
   		<form id="notice" action="NoticeController.do" method="post" >
   			<input type="hidden" name="command" value="notice_search" />
   			<table border="1" style="text-align : center;">
   				<col width="100" />
   				<col width="300" />
   				<col width="300" />
   				<tr>
   					<th>번      호</th>
   					<th>제      목</th>
   					<th>작성시간</th>
   				</tr>
   				<% 
   					if(notice_list.size() == 0) { 
   				%>
   				<tr>
   					<td colspan="3">-----글이 존재하지 않습니다.-----</td>
   				</tr>
   				<%
   					} else {
   						for(NoticeDto dto : notice_list) {
   				%>
   				<tr>
   					<td><%=dto.getNt_no() %></td>
   					<td><a style="color:blue;" href="NoticeController.do?command=notice_detail&nt_no=<%=dto.getNt_no() %>"><%=dto.getNt_title() %></a></td>
   					<td><%=dto.getNt_date() %></td>
   				</tr>
   				<%
   						}
   					}
   				%>
   				<tr>
   					<td colspan="3" align="center">
   						<select name="search_op">
   							<option value="nt_title" selected>제목으로 검색  </option>
   							<option value="nt_content">내용으로 검색</option>
   						</select>
   						<input type="search" name="search" placeholder="검색어를 입력하세요." />
   						<button class="search_bt" type="submit"><img class="search_img" width="15" height="15" src="resources/img/glass1.jpg" alt="검색" /></button>
   					</td>
   				</tr>
   				<tr>
   					<td colspan="3" align="right">
   						<input type="button" value="글 작성" onclick="location.href='notice_write.jsp'" />
   					</td>
   				</tr>
   			</table>
   		</form>
   		<form id="QnA">
   			<table border="1" style="text-align : center;">
   				<col width="50" />
   				<col width="300" />
   				<col width="100" />
   				<col width="300" />
   				<tr>
   					<th>번     호</th>
   					<th>제     목</th>
   					<th>작 성 자</th>
   					<th>작성시간</th>
   				</tr>
   				<tr>
   					<td></td>
   					<td></td>
   					<td></td>
   					<td></td>
   				</tr>
   				<tr>
   					<td colspan="4" align="center">
   						<div class="search">
   							<input type="search" placeholder="제목 입력" />
   							<button class="search_bt" onclick=""><img class="search_img" width="15" hright="15" src="resources/img/glass1.jpg" alt="검색" /></button>
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td colspan="4" align="right">
   						<input type="submit" value="삭제" />
   					</td>
   				</tr>
   			</table>
   		</form>
   	</div>
   </section>
   
   <div id="side">
   	<div class="sidebar"><span class="t">1:1</span></div>
   	<div class="sidebar"><span class="t">Top</span></div>
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