<%@page import="java.util.List"%>
<%@page import="com.atg.Cal.dto.CalDto"%>
<%@page import="com.atg.Member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<link rel="stylesheet" href="resources/css/Template.css">
<link rel="stylesheet" href="resources/css/weather.css">
<meta charset="UTF-8">
<title>Template</title>
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/Template.js"></script>
<script type="text/javascript" src="resources/js/weather2.js"></script>
    
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
               	<span>프로그램</span>
                   <ol class="bottom_menu">
                       <li onclick="location.href='tutorial.jsp'">튜토리얼</li>
                       <li onclick="location.href='program.jsp'">루틴운동</li>
                   </ol>
               </li>
               <li>
               	<span>외부활동</span>
                   <ol class="bottom_menu">
                       <li onclick="location.href=''">공공체육시설</li>
                       <li>-</li>
                   </ol>
               </li>
               <li>
               	<span>운동상품</span>
                   <ol class="bottom_menu">
                       <li onclick="location.href=''">운동기구찾기</li>
                       <li onclick="location.href=''">상품판매</li>
                   </ol>
               </li>
               <li>
               	<span>커뮤니티</span>
                   <ol class="bottom_menu">
                       <li onclick="location.href=''">리뷰</li>
                       <li onclick="location.href=''">실시간채팅</li>
                   </ol>
               </li>
               <li>
               	<span>고객지원</span>
                   <ol class="bottom_menu">
                       <li onclick="location.href=''">공지사항</li>
                       <li onclick="location.href='calendar.jsp'">QnA</li>
                   </ol>
               </li>
           </ul>
       </nav>
   </header>
   
   <section class="secssion">
   	<div id="box">
   	<form action="WeatherController.do" method="post">
		<table id="box_tb" border="1">
		<caption>날씨</caption>
			<tr>
				<td colspan="8" bgcolor="skyblue"><b>* 지 역 *</b></td>
			</tr>
			<tr>
				<td colspan="4">
					<input type="search"  id="address" name="search" placeholder="검색어를 입력하세요." style="width : 95%;" />
   					<button class="search_bt" id="weaView"><img class="search_img" width="15" hright="15" src="resources/img/glass1.jpg" alt="검색" /></button>
				</td>
			</tr>
			<tr>
				<td colspan="4" bgcolor="skyblue"><b>* 현재 날씨 *</b></td>
			</tr>
			<tr>
				<td>기준시간</td>
				<td colspan="2"><input type="text" id="pubDate" size="50%" readonly></td>	
				<td rowspan="5" align="center"><img src="" id="weather_img" width="150" height="150"></td>	
			</tr>
			<tr>
				<td>날씨</td>
				<td colspan="2"><input type="text" id="wfKor" readonly></td>		
			</tr>
			<tr>	
				<td>기온</td>
				<td colspan="2"><input type="text" id="temp" readonly></td>		
			</tr>
			<tr>
				<td>강수확률</td>
				<td><input type="text" id="pop" readonly></td>		
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