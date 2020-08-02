<%@page import="com.atg.Register.dto.RegisterDto"%>
<%@page import="com.atg.Item.dto.ItemDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<link rel="stylesheet" href="resources/css/item.css">
<meta charset="UTF-8">
<title>Template</title>
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">

	$(document).ready(function() {
		var $banner = $("#banner_box").find("ul");
	
		var $bannerWidth = $banner.children().outerWidth();//이미지의 폭
		var $bannerHeight = $banner.children().outerHeight(); // 높이
		var $length = $banner.children().length;//이미지의 갯수
		var rollingId;
	
		//정해진 초마다 함수 실행
		rollingId = setInterval(function() { rollingStart(); }, 2000);//다음 이미지로 롤링 애니메이션 할 시간차
	
		function rollingStart() {
			$banner.css("width", $bannerWidth * $length + "px");
			$banner.css("height", $bannerHeight + "px");
			//alert(bannerHeight);
			//배너의 좌측 위치를 옮겨 준다.
			$banner.animate({left: - $bannerWidth + "px"}, 2000, function() { //숫자는 롤링 진행되는 시간이다.
				//첫번째 이미지를 마지막 끝에 복사(이동이 아니라 복사)해서 추가한다.
				$(this).append("<li>" + $(this).find("li:first").html() + "</li>");
				//뒤로 복사된 첫번재 이미지는 필요 없으니 삭제한다.
				$(this).find("li:first").remove();
				//다음 움직임을 위해서 배너 좌측의 위치값을 초기화 한다.
				$(this).css("left", 0);
				//이 과정을 반복하면서 계속 롤링하는 배너를 만들 수 있다.
			});
		}
	});
	
	$(document).on('mouseover', '.top_menu span', function () {
	    $('.bottom_menu').slideDown(200);
	});
	$(document).on('mouseover', 'section', function () {
	    $('.bottom_menu').slideUp(200);
	});
	
	$(window).scroll(  
		    function(){  
		        //스크롤의 위치가 상단에서 500보다 크면  
		        if($(window).scrollTop() > 500){  
		        /* if(window.pageYOffset >= $('원하는위치의엘리먼트').offset().top){ */  
		            $('#side').addClass("sidefix");  
		            //위의 if문에 대한 조건 만족시 fix라는 class를 부여함  
		        }else{  
		            $('#side').removeClass("sidefix");  
		            //위의 if문에 대한 조건 아닌경우 fix라는 class를 삭제함  
		        }  
		    }  
		);
	
	$(function(){
		$(".item_list").slice(0, 4).show(); // 최초 4개 선택
		$("#plus_list").click(function(e){ // Load More를 위한 클릭 이벤트e
			e.preventDefault();
		$(".item_list:hidden").slice(0, 4).show(); // 숨김 설정된 다음 4개를 선택하여 표시
			if($(".item_list:hidden").length == 0){ // 숨겨진 DIV가 있는지 체크
				$("#plus_list").hide(); // 더 이상 로드할 항목이 없는 경우 경고
			}
		});
	});
	
	$(function(){
		$(".item_list2").slice(0, 4).show(); // 최초 4개 선택
		$("#plus_list2").click(function(e){ // Load More를 위한 클릭 이벤트e
			e.preventDefault();
		$(".item_list2:hidden").slice(0, 4).show(); // 숨김 설정된 다음 4개를 선택하여 표시
			if($(".item_list2:hidden").length == 0){ // 숨겨진 DIV가 있는지 체크
			 // 더 이상 로드할 항목이 없는 경우 경고
				$("#plus_list2").hide();
			}
		});
	});
	
	
</script>    
    
</head>

<% 
	List<ItemDto> list = (List<ItemDto>)request.getAttribute("list");
%>
<body>
   
   <header id="header">
   	<span><h1 onclick="location.href='main.jsp'">AT-G</h1></span>
        <ul class="nav_icon">
             <li><img src="resources/img/user.png" onclick="location.href=''"></li>
             <li><img src="resources/img/basket.png" onclick="location.href=''"></li>
             <li><img src="resources/img/login.png" onclick="location.href='Registercontroller.do?command=login'"></li>
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
		<ul>
			<li><img src="resources/img/banner1.png" onclick="location.href=''"/></li>
			<li><img src="resources/img/banner2.png" onclick="location.href=''"/></li>
			<li><img src="resources/img/banner3.png" onclick="location.href=''"/></li>
			<li><img src="resources/img/banner4.png" onclick="location.href=''"/></li>
			<li><img src="resources/img/banner5.png" onclick="location.href=''"/></li>
		</ul>
	</div>
	
	<br/><br/><br/><br/><br/>
	
	<div class="list_one">
		<div class="text_list">
			<span class="text_title">덤벨&바벨</span>
			<div class="text_box"><h1>웨이트</h1></div>
		</div>
		
		<div class="item_box">
<%
		for(ItemDto dto : list) {
%>		
			<div class="item_list" onclick="location.href='Itemcontroller.do?command=itemdetail&item_no=<%=dto.getItem_no()%>'">
				<%=dto.getItem_name()%><img src="<%=dto.getItem_url()%>">
			</div>
			
<%
		}
%>			
		</div>
		
		<div>
			<div id="plus_list">+ 더 보기</div>
		</div>
	</div>
	
	<div class="list_two">
		<div class="text_list">
			<span class="text_title">매트</span>
			<div class="text_box2"><h1>스트레칭</h1></div>
		</div>
		
		<div class="item_box">
			<div class="item_list2">1</div>
			<div class="item_list2">2</div>
			<div class="item_list2">3</div>
			<div class="item_list2">4</div>
			
			<div class="item_list2">1</div>
			<div class="item_list2">2</div>
			<div class="item_list2">3</div>
			<div class="item_list2">4</div>
			
			<div class="item_list2">1</div>
			<div class="item_list2">2</div>
			<div class="item_list2">3</div>
			<div class="item_list2">4</div>
			
			<div class="item_list2">1</div>
			<div class="item_list2">2</div>
			<div class="item_list2">3</div>
			<div class="item_list2">4</div>
		</div>
		
		
		<div>
			<div id="plus_list2">+ 더 보기</div>
		</div>
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