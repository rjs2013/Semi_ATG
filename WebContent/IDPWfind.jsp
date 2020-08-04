





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


<script type="text/javascript" src="resources/js/IDPWfind.js"/></script>


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

	
<%!

	int random = 0;

	public int getRandom(){
	
	random = (int)Math.floor((Math.random()*(99999-10000+1)))+10000;
	return random;
	}
%>


		<br><br>
		<br><br>
		<div id="loginer">
		<!--아이디 찾기 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  -->
				<fieldset id="ids">
				<div id="title"><h1>아이디찾기</h1></div>
				<br>
					 <input type="text" id="name" name="name" placeholder="이름"size="20" required="required" >
					<br><br>
					
          				<input type="text" id="email" name="email" autocomplete="off" placeholder="이메일" >@<select name="emadress" id="emadress"><option value="naver.com">naver.com</option><option value="nate.com">nate.com</option>
              			 <option value="hanmail.com">hanmail.com</option><option value="gmail.com">gmail.com</option></select>
              			 <button id="checkEmail" value="" onclick="emailCheck('<%=getRandom()%>');">인증번호전송</button>
						
						<br>
						<br> <!-- emailCheck값에  getRandom 매개변수로 넣어서 전송  -->
						<input type="text" id="confirm" name="" placeholder="인증번호입력 ">
						<input type="button" onclick="checkNum('<%= random %>')" value="인증확인" />
						<br>
						<br>
					<input type="hidden" value="아이디찾기" id="idsearch" onclick="idfind();" ><span id="result"></span>
					<button id="move" onclick="location.href='login.jsp'">로그인하러가기</button>
				</fieldset>
		</div>
		
		<br><br>
		<br><br>
		
		
		<!-- ~~~~~~~~~~~~~~~~~~~~~~~~비밀번호 찾기 ~~~~~~~~~~~~~~~~~~~~~~~~~~  -->

			<fieldset id="pws">
			<div id="title"><h1>비밀번호찾기</h1></div>
			<br>
			<input type="text" id="PWid" name="pwid" placeholder="아이디 " required="required">
				 <br><br>
				
			<input type="text" id="PWname" name="pwname" placeholder="이름" required="required"> 
				<br><br>
              
              <input type="text" name="pwemailAdress" id="PWemail" autocomplete="off" placeholder="이메일">@<select name="pwemadress" id="PWemadress"><option value="naver.com">naver.com</option><option value="nate.com">nate.com</option>
                <option value="hanmail.com">hanmail.com</option><option value="gmail.com">gmail.com</option></select>
                <button id="PWcheckEmail" value="" onclick="PWemailCheck('<%=getRandom()%>');">인증번호전송</button>
                
                <br>
                <br>
                <input type="text" id="pwconfirm" name="" placeholder="인증번호입력 ">
				<input type="button" onclick="PWcheckNum('<%= random %>')" value="인증확인"/>
				<br><br>
				<input type="hidden" id="pwsearch" value="비밀번호찾기"  onclick="pwfind();"><span id="pwresult"></span>
				<button id="move" onclick="location.href='login.jsp'">로그인하러가기</button>
			</fieldset>	

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