
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<link rel="stylesheet" href="IDPWfind.css">
<link rel="stylesheet" href="Template.css">
<meta charset="UTF-8">
<title>Template</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript" src="resources/js/IDPWfind.js"/>

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


		<div id="loginer">
			<form id="id_form" action="" method="post">
				<div>아이디찾기</div>

				<fieldset>
					이름 : <input type="text" id="name" name="data" placeholder=""size="20" >
					<br><br>
					핸드폰 번호  <input type="text" id="phone1"name="phone" placeholder="" size="20" >
					<button value="">인증</button>
					<br> 
					<input type="hidden" value="0" name="check">
				</fieldset>
			</form>
			<input type="button" value="아이디 찾기!" onclick="">

		</div>

		<form id="pwd_form" action="" method="post">
			<div>비밀번호 찾기</div>

			<fieldset>
				아이디 : <input type="text" id="id" name="" placeholder="">
				 <br>
				이름: <input type="text" id="name2" name="" placeholder=""> 
				<br>
				핸드폰번호 <input type="text" id="phone2" name="" placeholder="">
				<button value="">인증</button>
				<br> <input type="hidden" value="1" name="check">
			</fieldset>
		</form>
		<input type="button" value="비밀번호 찾기!" onclick="">

	</section>

	<div id="side">
		<div class="sidebar">
			<span class="t">1:1</span>
		</div>
		<div class="sidebar">
			<span class="t">Top</span>
		</div>
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