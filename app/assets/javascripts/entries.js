$(document).ready(function(){
	console.log('ready');

	// disables form submission with enter key
	$('#new_entry').on('keyup keypress', function(e){
		var keycode = e.keyCode || e.which;
		if(keycode === 13){
			e.preventDefault();
			return false;
		}
	});

	$('.q-state').hide();
	$('.q-email').hide();
	$('.q-quest-1').hide();
	$('.q-quest-2').hide();
	$('.q-submit').hide();
	$('.q-thanks').hide();

	$('.q-name-next').on('click', function(){
		$('.q-name').hide();
		$('.q-state').show();
	});

	$('.q-state-next').on('click', function(){
		$('.q-state').hide();
		$('.q-email').show();
	});

	$('.q-state-prev').on('click', function(){
		$('.q-state').hide();
		$('.q-name').show();
	});

	$('.q-email-next').on('click', function(){
		$('.q-email').hide();
		$('.q-quest-1').show();
	});

	$('.q-email-prev').on('click', function(){
		$('.q-email').hide();
		$('.q-state').show();
	});

	$('.q1-next').on('click', function(){
			if($('.q-quest-1 input[type="radio"]:checked').val() == "Vote Green only if it's Bernie"){
				$('.q-quest-1').hide();
				$('.q-quest-2').show();
				$('.q-submit').show();
			}else{
				$('.q-quest-1').hide();
				$('.q-thanks').show();
				$('.q-submit').show();
			}
	});

});