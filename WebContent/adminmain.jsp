<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<link rel="stylesheet" href="resources/css/main.css">
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
                       <li onclick="location.href=''">공공체육시설</li>
                       <li>-</li>
                   </ol>
               </li>
               <li>
               	<span class="menu_title">운동상품</span>
                   <ol class="bottom_menu">
                       <li onclick="location.href=''">운동기구찾기</li>
                       <li onclick="location.href='item.jsp'">상품판매</li>
                   </ol>
               </li>
               <li>
               	<span class="menu_title">커뮤니티</span>
                   <ol class="bottom_menu">
                       <li onclick="location.href=''">리뷰</li>
                       <li onclick="location.href=''">실시간채팅</li>
                   </ol>
               </li>
               <li>
               	<span class="menu_title">고객지원</span>
                   <ol class="bottom_menu">
                       <li onclick="location.href=''">공지사항</li>
                       <li onclick="location.href=''">QnA</li>
                   </ol>
               </li>
           </ul>
       </nav>
   </header>
   
   <span class="target"></span>
   
   <section class="secssion">
   	<div id="blank">
   	</div>
   	<div id="banner_box">
		<ul>
			<li><img src="resources/img/banner1.png" onclick="location.href=''"/></li>
			<li><img src="resources/img/banner2.png" onclick="location.href=''"/></li>
			<li><img src="resources/img/banner3.png" onclick="location.href=''"/></li>
			<li><img src="resources/img/banner4.png" onclick="location.href=''"/></li>
			<li><img src="resources/img/banner5.png" onclick="location.href=''"/></li>
		</ul>
		
		<div class="banner_nav">
	  		<img src="resources/img/prev.png" class="prev"/>
	  		<img src="resources/img/next.png" class="next"/>
  		</div>
		
		<div class="indicator">
  		</div>
	</div>
   
   	<div id="ranking_box">
   		<div id="ranking_a">
   			<div class="ranking_content">
   				<ul>
					<li onclick="location.href=''"><div class="divbox">Best ProG</div><br/>Best 1<img src="resources/img/2.jpg"/></li>
					<li onclick="location.href=''"><div class="divbox">Best ProG</div><br/>Best 2<img src="resources/img/3.jpg"/></li>
					<li onclick="location.href=''"><div class="divbox">Best ProG</div><br/>Best 3<img src="resources/img/4.jpg"/></li>
				</ul>
			</div>
   		</div>
   		
   		<div id="ranking_b">
   			<div class="ranking_content">
	   			<ul>
					<li onclick="location.href=''"><div class="divbox">Best Item</div><br/>Best 1<img src="resources/img/5.jpg"/></li>
					<li onclick="location.href=''"><div class="divbox">Best Item</div><br/>Best 2<img src="resources/img/6.jpg"/></li>
					<li onclick="location.href=''"><div class="divbox">Best Item</div><br/>Best 3<img src="resources/img/2.jpg"/></li>
				</ul>
			</div>
   		</div>
   	</div>
   	
	<div id="review_box">
		<div class="review_content1">
			<img src="resources/img/re1.jpg" class="re1">
			<div class="divbox">Review Best 1</div>
		</div>
		
		<div class="review_content2">
			<img src="resources/img/re2.jpg" id="re2">
			<div class="divbox">Review Best 2</div>
		</div>
		
		<div class="review_content1">
			<img src="resources/img/re3.jpg" class="re1">
			<div class="divbox">Review Best 3</div>
		</div>
	</div>   

   </section>
   
   <div id="side">
   	<div class="sidebar" onclick=""><br/><span class="t">1:1</span></div>
   	<div class="sidebar" id="topbutton"><br/><span class="t">Top</span></div>
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