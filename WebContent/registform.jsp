<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<script type="text/javascript" src="resources/js/registform.js"></script>
<link rel="stylesheet" href="resources/css/registform.css">
<meta charset="UTF-8">
<title>Template</title>
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>    
    
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
   	
   	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<h1>회원가입 form</h1>
	
	<form action="Registercontroller.do" method="post">
		<input type="hidden" name="command" value="insert"/>
		<table border="1" >
			<tr>
				<th>이름</th>
				<td><input type="text" required="required" autofocus="autofocus" width="500px" name="name"></td>
			</tr>
			<tr>
				<th>성별</th>
           		 <td>
          		 		남 <input type="radio" name="gender" value="M"/>
            			여 <input type="radio" name="gender" value="F"/>
        	    </td>
			</tr>
			<tr>
				<th>아이디</th>
				<td>
					<input type="text" required="required" name="id"  maxlength="20">
					<input type="button" value="아이디 중복 확인"  onclick="idCheck();">
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<input type="password" required="required" maxlength="12" name="pw">
				</td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td><input type="password" required="required" maxlength="12"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>
					<input type="email" required="required" maxlength="50" name="email"> 
					<input type="button" value="이메일 인증" onclick="" >
				</td>
			</tr>
			<tr >
				<th>주소</th>
				<td>
					<input type="text" value="" name="addr">
					<input type="button" value="우편번호 찾기" onclick=""><br>
					<input type="text" required="required"><br>
					<input type="text" required="required">
				</td>
			</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="submit" id="goregist" value="회원가입하기">
				<input type="button" value="취소" onclick="location.href='regist.jsp'">
			</td>
		</tr>
		</table>
	</form>

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