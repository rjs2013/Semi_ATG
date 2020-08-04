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
	
	
	<h1>회원가입 form</h1>
	<form action="RegisterController.do" id="target" name="form"   method="post" class="" >
		<input type="hidden" name="command" value="insert"/>
		<table border="1" >
			<tr>
				<th><b>이름</b></th>
				<td>
				<input type="text" id="name" required="required" autofocus="autofocus" width="500px" min="2" name="name" maxlength="10" placeholder="이름입력">
				</td>
			</tr>
			<tr>
				<th>성별</th>
           		 <td>
          		 		남 <input type="radio" name="gender" value="M" required="required" >
            			여 <input type="radio" name="gender" value="F" required="required" >
        	    </td>
			</tr>
			<tr>
				<th><b>아이디</b></th>
				<td>
					<input type="text" id="ID" required="required" name="id"  min="2"  autocomplete="off" maxlength="12" title="아이디는 4~12자의 대소문자와 숫자로만 입력 가능합니다" placeholder="아이디를 입력해주세요">
					<input type="button" value="아이디 중복 확인" placeholder="아이디를 입력" onclick="idCheck();">
				</td>
			</tr>
			<tr>
				<th><b>비밀번호</b></th>
				<td>
					<input type="password" id="password1"  placeholder="비밀번호입력"  min="4" maxlength="12" name="pw" required="required">
				</td>
			</tr>
			<tr>
				<th><b>비밀번호확인</b></th>
				<td><input type="password" id="password2"  placeholder="비밀번호확인"  min="4" maxlength="12" required="required" onkeyup="fn_compare_pwd()">
										<span id="s_result">비밀번호가 일치하지 않습니다.</span>				
				</td>
			</tr>
			<tr>
				<th><b>이메일</b></th>
					<td>
					<input type="email"  id="email"    maxlength="50" autocomplete="off" name="email" class="" placeholder="이메일을 입력해주세요" required="required"> 
					<button id="echeck" onclick="emailCheck();">이메일중복</button>
			</tr>
			
		 <%-- 	<table border="0" class="numcheck" >
					<tr>
						<td>
							<b>인증번호</b>
							<input maxlength="5" type="text" name="code" id="code" onkeyup="checkCode()" placeholder="인증번호를 입력하세여"  required="required"/>
							<div id="checkCode"></div></td>
							<td>
							<input type="hidden" readonly="readonly" name="code_check"
								id="code_check" value="<%=request.getAttribute("code")%>" />
						</td>
					</tr>+
					9
				</table>
				<input id="hi" type="hidden" value="인증하기" onclick="ck();"> --%>
			
			<tr>
				<th><b>주소</b></th>
				<td>
				<input type="text" id="sample6_postcode" class="addr1" name="addr1" placeholder="우편번호" readonly="readonly">
				<input type="button" onclick="sample6_execDaumPostcode()"    value="우편번호 찾기" ><br>
				<input type="text" id="sample6_address"  class="addr1" name="addr2" placeholder="주소" readonly="readonly"><br>
				<input type="text" id="sample6_detailAddress"  class="addr1" name="addr3" placeholder="상세주소" required="required">
				</td>
			</tr>
		<tr>
			<td colspan="2" align="right">
					<input type="submit" id="btnSend"  value="회원가입하기" />
				 <input type="reset" name="reset" value="다시 입력"/>
				<input type="button" value="취소" onclick="location.href='login.jsp'"/>
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