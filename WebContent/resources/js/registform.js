		//아이디 중복검사
	/*trim 공백 사용해서 아이디 넣을수도 있으니깐  */
	function idCheck(){
		 var doc = document.getElementsByName("id")[0];
		if(doc.value.trim()=="" || doc.value==null){
			alert("아이디를 입력해주세요!")
		}else{
			open("Registercontroller.do?command=idcheck&id="+doc.value,
					"",
					"width=200, height=200");
		}
 	}
	
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
		)