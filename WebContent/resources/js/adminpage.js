	$(document).ready(function() {
		// 클릭 시 해당 탭 보이게
		$('.box > form').hide();
		$('#user_admin').show();
		
		$('#tab1').click(function() {
			$('#user_admin').show();
			$('#notice').hide();
			$('#QnA').hide();
		});
		
		$('#tab2').click(function() {
			$('#user_admin').hide();
			$('#notice').show();
			$('#QnA').hide();
		});
		
		$('#tab3').click(function() {
			$('#user_admin').hide();
			$('#notice').hide();
			$('#QnA').show();
		});
	});

	






