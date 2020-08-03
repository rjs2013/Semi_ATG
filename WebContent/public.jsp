<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>Template</title>
    
<!-- 부트스트랩 css -->
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.css">
<!-- 두개는 메뉴바 css -->
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/navbar.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<!-- 두개는 순서 그대로!! 변경ㄴㄴ -->
<script type="text/javascript"
	src="resources/bootstrap/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript"
	src="resources/bootstrap/js/bootstrap.min.js"></script>
	
<!-- 날씨 css(public.jsp 전체 csS) -->
<script type="text/javascript" src="resources/js/weather.js"></script>
    
    
</head>
<body>

   <!-- 메뉴바 -->
	<nav class="navbar navbar-light navbar-nav ">
		<a class="navbar-brand navbar-nav " href="main.jsp"><h1>AT-G</h1></a>
	</nav>
	<ul class="nav justify-content-end mt-1">
		<li class="nav-item"><a class="mr-3" href="">마이페이지</a></li>
		<li class="nav-item"><a class="mr-3" href="">장바구니</a></li>
		<li class="nav-item"><a class="mr-5" href="login.jsp">로그인</a></li>
	</ul>


	<div class="nav_cus sticky-top">
		<nav
			class="navbar navbar-expand-lg navbar-dark bg-dark justify-content-center dropdown sticky-top">
			<ul class="nav justify-content-center ">
				<li class="nav-item dropdown mr-5"><a
					class="nav-link text-white " id="navbarDropdown" href="">프로그램</a>
					<div class="dropdown-menu mt-2">
						<a class="dropdown-item" href="">튜토리얼</a> <a class="dropdown-item"
							href="">루틴운동</a>
					</div></li>
				<li class="nav-item dropdown mr-5"><a
					class="nav-link text-white" id="navbarDropdown" href="">외부활동</a>
					<div class="dropdown-menu mt-2"
						aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="public.jsp">공공체육시설</a>
						<a class="dropdown-item text-white" href="">-</a>
					</div></li>
				<li class="nav-item dropdown mr-5"><a
					class="nav-link text-white" id="navbarDropdown" href="">운동상품</a>
					<div class="dropdown-menu mt-2"
						aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="">운동기구찾기</a> <a
							class="dropdown-item" href="Itemcontroller.do?command=itemlist">상품판매</a>
					</div></li>
				<li class="nav-item dropdown mr-5"><a
					class="nav-link text-white" id="navbarDropdown" href="">커뮤니티</a>
					<div class="dropdown-menu mt-2"
						aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="">리뷰</a> <a class="dropdown-item"
							href="">실시간 채팅</a>
					</div></li>
				<li class="nav-item dropdown "><a class="nav-link text-white" id="navbarDropdown" href="">고객지원</a>
					<div class="dropdown-menu mt-2" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="NoticeController.do?command=notice_list">공지사항</a> 
						<a class="dropdown-item" href="">QnA</a>
					</div></li>
			</ul>
		</nav>
	</div>

   
   <section class="secssion">
 
   	
   		<div id="box">
   	<form action="WeatherController.do" method="post">
		<table id="box_tb" border="1" style="width : 100%;">
		<caption>날씨</caption>
			<tr>
				<td colspan="8" bgcolor="skyblue"><b>* 지 역 *</b></td>
			</tr>
			<tr>
				<td colspan="3">주소를 선택 하세요
				<select id="address">
					<option value= "4111757000">경기도 수원시 영통1동</option>
					<option value= "4141051000">경기도 군포시 군포1동</option>
				</select>
				<td><input type="button" id="weaView" value="날씨보기"></td>	
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
   	
   	<div id="map" style="width:100%;height:400px;" ></div>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7d52e34abe5fdbd54eb68fb7865afd73&libraries=services,clusterer"></script>
	<script type="text/javascript" src="resources/js/public.js"></script>
	
	<br>
	<br>
   </section>
   
   <!-- side bar -->
   <div id="side">
   	<div class="sidebar"><span class="t">1:1</span></div>
   	<div class="sidebar"><span class="t">Top</span></div>
   </div>
   
   <!-- footer 푸터 -->
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