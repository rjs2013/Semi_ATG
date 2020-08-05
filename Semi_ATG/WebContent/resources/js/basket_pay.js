//결제하기 버튼 누르면
	$("#pay").click(function(){
		
	var url="Basketcontroller.do?command=pay";
	var mb_no = $("#mb_no").val();
	var bas_no = $("#bas_no").val();
	$.ajax({
		type:"GET",
		url: url+"&mb_no="+mb_no+"&bas_no="+bas_no,
		success:function(date){
			var IMP = window.IMP;
			IMP.init("imp35514559");

			// IMP.request_pay(param, callback) 호출
			IMP.request_pay({ // param
				
			  pg: "html5_inicis",
			  pay_method: "card",
			  merchant_uid: "merchant-"+new Date().getTime(),
			  name: "노트",
			  amount: 1000,
			  buyer_email: "gildong@gmail.com",
			  buyer_name: "홍길동",
			  //buyer_tel: "010-4242-4242",
			  buyer_addr: "서울특별시 강남구 신사동",
			  buyer_postcode: "01181"
			}, function (rsp) { // callback
			  if (rsp.success) {
				// jQuery로 HTTP 요청
				  console.log("Dd");
			      jQuery.ajax({
			          url: "https://www.myservice.com/payments/complete", // 가맹점 서버
			          method: "POST",
			          headers: { "Content-Type": "application/json" },
			          data: {
			              imp_uid: rsp.imp_uid,
			              merchant_uid: rsp.merchant_uid
			          }
			      }).done(function (data) {
			        // 가맹점 서버 결제 API 성공시 로직
			      })
			    } else {
			      alert("결제에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
			    }
			});
		}
	});
		
	
})	
