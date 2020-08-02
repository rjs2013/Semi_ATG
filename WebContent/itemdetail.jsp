<%@page import="com.atg.Register.dto.RegisterDto"%>
<%@page import="com.atg.Basket.dto.BasketDto"%>
<%@page import="com.atg.Register.dto.RegisterDto"%>
<%@page import="com.atg.Item.dto.ItemDto"%>
<%@page import="com.atg.Item.biz.ItemBizImpl"%>
<%@page import="com.atg.Item.biz.ItemBiz"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<link rel="stylesheet" href="resources/css/itemdetail.css">
<link rel="stylesheet" href="resources/css/Template.css">
<meta charset="UTF-8">
<title>Template</title>
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>

<%
	ItemDto dto = (ItemDto)request.getAttribute("dto");
	BasketDto bdto = new BasketDto();
	int item_no = Integer.parseInt(request.getParameter("item_no"));
	RegisterDto LDto = (RegisterDto)session.getAttribute("LDto");
%>
   
   <header id="header">
   	<span><h1 onclick="location.href='main.jsp'">AT-G</h1></span>
        <ul class="nav_icon">
             <li><img src="resources/img/user.png" onclick="location.href=''"></li>
             <li><img src="resources/img/basket.png" onclick="location.href=basket.jsp''"></li>
             <li><img src="resources/img/login.png" onclick="location.href=''"></li>
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
                       <li onclick="location.href='Itemcontroller.do?command=itemlist'">상품판매</li>
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
                       <li onclick="location.href=''">QnA</li>
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

	
	<form action="Basketcontroller.do" method="post">
	<input type="hidden" name="command" value="gobasket">
	<%
		if(LDto == null){ //로그인이 안되어있으면	
	%>
		<input type="hidden" name="mb_no" value="0">
	<%
		}else{  //로그인이 되어있으면,
	%>
		<input type="hidden" name="mb_no" value="<%=LDto.getMb_no()%>">
	<%
		}
			
	%>
	
		<div class="item_pay"><br/><br/>
			<input type="hidden" name="item_url" value="<%=dto.getItem_url()%>">
			<input type="hidden" name="item_no" value="<%=dto.getItem_no() %>">
	   		<span><h1><input type="text" name="item_name" readonly="readonly" value="<%=dto.getItem_name()%>"></h1></span><br/>
			<span><h1><input type="text" name="item_price" value="<%=dto.getItem_price() %>">원</h1></span><br/>
				<div class="item_box">
					택배
				</div><br/>
				<div class="pay_sum1">
					<select name="count" id="countA">
						<option class="cnt" value="1">1</option>
						<option class="cnt" value="2">2</option>
						<option class="cnt" value="3">3</option>
						<option class="cnt" value="4">4</option>
						<option class="cnt" value="5">5</option>
						<option class="cnt" value="6">6</option>
						<option class="cnt" value="7">7</option>
						<option class="cnt" value="8">8</option>
						<option class="cnt" value="9">9</option>
						<option class="cnt" value="10">10</option>
					</select>
					<div class="pay_text">원</div>
					<input type="text" name="price" readonly="readonly" value="<%=dto.getItem_price()%>" class="price"/>
					<div></div>
				</div><br/>
			<div class="pay_box">
				<div id="question1">문의하기</div>
				<div><input id="add" type="submit" value="장바구니 담기"></div>		
				<div id="pay1">바로구매</div>
			</div>
		</div>
	</form>
	
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
			<input type="text" name="bas_count" value="1" class="count"/>
			<div class="plus">+</div>
			<div class="pay_text">원</div>
			<input type="text" name="price" value="<%=dto.getItem_price() %>" readonly="readonly" class="price"/>
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