
//아이디 중복검사
	/*trim 공백 사용해서 아이디 넣을수도 있으니깐  */
	function idCheck(){
		 var doc = document.getElementsByName("id")[0];
		if(doc.value.trim()=="" || doc.value==null){
			alert("아이디를 입력해주세요!")
		}else{
			open("RegisterController.do?command=idcheck&id="+doc.value,
					"",
					"width=200, height=200");
		}
 	}
	
// 이메일 중복검사
	
	function emailCheck(){
		var doc= document.getElementsByName("email")[0];
		console.log(doc);
		if(doc.value.trim()=="" || doc.value == null){
			alert("이메일을 입력해주세요")
		}else{
			open("RegisterController.do?command=emailCheck&email="+doc.value,
					"",
					"width=500, height=300");
		}
	}
	
	
	

	
	// 회원가입 이메일 인증
	function emailconfirm(random){
		var email = document.getElementById("email").value;
		console.log(email);
		console.log(random);
		
		$.ajax({
			url:"RegisterController.do",
			type:"post",
			datatype:"json",
			data:{"command":"sendEmail","receiver":email,"random":random},
			success(data){
				alert("전송성공 \n 인증번호를 확인해주세요");
				
			},
			error(err){
				alert("해당 이메일 전송 실패 ");
			}
		})
		
		
		
	};
	
	
	// 메일 인증번호 확인 값
	function checkNum(checkNum) {
		var inputNum = document.getElementById("confirm").value;
		console.log(inputNum);
		
		if (checkNum == inputNum) {
			alert("인증 성공");
			focus("#daumaddr");
		}else if(inputNum==""){
			alert("인증번호를 입력해주세요")
		}else{
			alert("인증 실패");
		}
	}
	
	// 회원가입 유효성 검사
	
	function sendIt() {
        var email = document.form.email.value;
        var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
        
        // 아이디 입력여부 검사
        if (form.id.value == "") {
            alert("아이디를 입력하지 않았습니다.")
            form.id.focus();
            return false;
        }
        // 아이디 유효성 검사 (영문소문자, 숫자만 허용)
       for (var i = 0; i < document.form.id.value.length; i++) {
            ch = document.form.id.value.charAt(i)
            if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')&&!(ch >= 'A' && ch <= 'Z')) {
                alert("아이디는 영문 대소문자, 숫자만 입력가능합니다.")
                document.form.id.focus();
                document.form.id.select();
                return false;
            }
        }
        // 아이디에 공백 사용하지 않기
        if (document.form.id.value.indexOf(" ") >= 0) {
            alert("아이디에 공백을 사용할 수 없습니다.")
            document.form.id.focus();
            document.form.id.select()
            return false;
        }
        // 아이디 길이 체크 (4~12자)
       if (document.form.id.value.length<4 || document.form.id.value.length>12) {
            alert("아이디를 4~12자까지 입력해주세요.")
            document.form.id.focus();
            document.form.id.select();
            return false;
        }
       
        // 비밀번호 길이 체크(4~12자 까지 허용)
        if (document.form.password.value.length<4 || document.form.password.value.length>12) {
            alert("비밀번호를 4~12자까지 입력해주세요.")
            document.f.password.focus();
            document.f.password.select();
            return false;
        }
     
        if (document.form.email.value == "") {
            alert("이메일을 입력하지 않았습니다.")
            document.form.email.focus();
            return false;
        }
        if (regex.test(email) === false) {
            alert("잘못된 이메일 형식입니다.");
            document.form.email.value=""
            document.form.email.focus();
            return false;
        }
 
        for (var i = 0; i < document.form.email.value.length; i++) {
            chm = document.form.email.value.charAt(i)
            if (!(chm >= '0' && chm <= '9') && !(chm >= 'a' && chm <= 'z')&&!(chm >= 'A' && chm <= 'Z')) {
                alert("이메일은 영문 대소문자, 숫자만 입력가능합니다.")
                document.form.email.focus();
                document.form.email.select();
                return false;
            }
        }
 
        if (document.form.name.value == "") {
            alert("이름을 입력하지 않았습니다.")
            document.f.name.focus();
            return false;
        }
 
        if(document.form.name.value.length<2){
            alert("이름을 2자 이상 입력해주십시오.")
            document.f.name.focus();
            return false;
        }
	
	
	
	
	
	
	

	
			
	
	
	
	

	
	
	
	// 비밀번호 유효성검사
var compare_result= false;		
function fn_compare_pwd(){
	
	var pw1 = $("#password1").val();
	var pw2 = $("#password2").val();
	var s_result=$("#s_result");
	
	
	if(pw1 == pw2){
		compare_result = true;
		$("#s_result").text("비밀번호가 일치합니다.");
		$("#s_result").focus();
	}else {
		compare_result = false;
		$("#s_result").text("비밀번호가 일치하지 않습니다.");
		$("#s_result").focus();
	}

	




	
	
	
		 
	 
	
	
	
		
// -- template

		$(document).on('mouseover', '.top_menu span', function () {
		    $('.bottom_menu').slideDown(200);
		});
		$(document).on('mouseover', 'section', function () {
		    $('.bottom_menu').slideUp(200);
		});
		
		$(window).scroll(  
			    function(){  
			        // 스크롤의 위치가 상단에서 500보다 크면
			        if($(window).scrollTop() > 500){  
			        /* if(window.pageYOffset >= $('원하는위치의엘리먼트').offset().top){ */  
			            $('#side').addClass("sidefix");  
			            // 위의 if문에 대한 조건 만족시 fix라는 class를 부여함
			        }else{  
			            $('#side').removeClass("sidefix");  
			            // 위의 if문에 대한 조건 아닌경우 fix라는 class를 삭제함
			        }  
			    }  
			)
	}
}

			