<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>    

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/Template.css">
<meta charset="UTF-8">
<title>Template</title>
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/Template.js"></script>
    
</head>
<body>
   
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
   <div id="box">
	<form action="cal.do?" method="post">
		<input type="hidden" name="command" value="muldel" />
		<jsp:useBean id="utils" class="com.atg.util.Utils" />
		
		<table border="1">
			<col width="50px" />
			<col width="50px" />
			<col width="300px" />
			<col width="200px" />
			<col width="100px" />
			<tr>
				<th><input type="checkbox" name="all" onclick="allChk(checked)" /></th>
				<th>번   호</th>
				<th>제   목</th>
				<th>일   정</th>
				<th>작성일</th>
			</tr>
			<c:choose>
				<c:when test="${empty list }">
					<tr>
						<td colspan="5">-----일정이 없습니다.-----</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${list }" var="dto">
						<tr>
							<td><input type="checkbox" name="chk" value="${dto.ca_no }" /></td>
							<td>${dto.seq}</td>
							<td><a href="CalController.do?command=cal_detail&ca_no=${dto.ca_no }">${dto.ca_title }</a></td>
							<td>
								<!-- setter, getter메서드와 같은 의미, property에는 필드명을, name에는 빈 이름을, value에는 값을 -->
								<!-- set : useBean 액션태그로 생성한 자바빈 객체에 대해서 프로퍼티에 값을 설정 -->
								<!-- get : 자바빈 파일의 getter 메서드에서 저장된 값을 읽어온다 -->
								<jsp:setProperty property="toDates" name="utils" value="${dto.ca_mdate }" />
								<jsp:getProperty property="toDates" name="utils" />
							</td>
							<td>
								<!-- value값을 pattern 형식으로 바꿔서 출력해준다. -->
								<!-- value속성에 date를 넣어서 처리하기 위해서는 java.util.Date 클래스로 객체를 생성해야한다. -->
								<fmt:formatDate value="${dto.ca_regdate }" pattern="yyyy:MM:dd"/>
							</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			<tr>
				<td colspan="5" align="right">
					<input type="submit" value="삭제" />
					<input type="button" value="달력 보기" onclick="location.href='calendar.jsp'" />
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



