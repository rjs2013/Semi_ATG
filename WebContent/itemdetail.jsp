<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<link rel="stylesheet" href="resources/css/itemdetail.css">
<meta charset="UTF-8">
<title>Template</title>
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript" src="resources/js/itemdetail.js"/>    
    
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
  	<div id="blank">
   	</div>
   	<div id="banner_box">
   		<div class="list_view">
   			<img src="resources/img/dumbel.jpg"/>
   		</div>
   		<div class="list_box">
			<img class="banner_list" src="resources/img/dumbel.jpg"/>
			<img class="banner_list" src="resources/img/dumbel2.jpg"/>
			<img class="banner_list" src="resources/img/dumbel3.jpg"/>
		</div>
	</div>
	
   	<div class="item_pay"><br/><br/>
   		<span><h1>쿠스포츠 육각아령 고무덤벨 12.5kg</h1></span><br/>
		<span><h1>30,000원</h1></span><br/>
			<div class="item_box">
				택배
			</div><br/>
			<div class="pay_sum1">
				<div class="minus">-</div>
				<input type="text" name="num" value="1" class="count"/>
				<div class="plus">+</div>
				<div class="pay_text">원</div>
				<input type="text" name="num" value="30000" class="price"/>
			</div><br/>
		<div class="pay_box">
			<div id="question1">문의하기</div>
			<div id="basket1">장바구니</div>
			<div id="pay1">바로구매</div>
		</div>
	</div>
	
	<br/><br/><br/><br/><br/>
	<br/><br/><br/><br/><br/>
	<br/><br/><br/><br/><br/>
	<br/><br/><br/><br/><br/>
	<br/><br/><br/><br/><br/>
	<br/><br/><br/><br/><br/>
	
	<div class="item_detail">
		<h1>제품 상세설명</h1><br/>
		
		<div class="pay_sum2">
			<div class="minus">-</div>
			<div class="count">1</div>
			<div class="plus">+</div>
			<div class="pay_text">원</div>
			<div class="price">30000</div>
			<div id="question2">문의하기</div>
			<div id="basket2">장바구니</div>
			<div id="pay2">바로구매</div>
		</div>
		
		<img src="resources/img/detail1.jpg" class=""/>
		<img src="resources/img/detail2.jpg" class=""/>
		<img src="resources/img/detail3.jpg" class=""/>
		<img src="resources/img/detail4.jpg" class=""/>
		
		
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