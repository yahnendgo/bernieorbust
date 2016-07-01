$(document).ready(function(){
	(console).log('ready');

	$('.q-state').hide();
	$('.q-email').hide();
	$('.q-quest-1').hide();
	$('.q-quest-2').hide();
	$('.q-actions').hide();

	function nextField(x, y){
		x.hide('slide', {direction: 'left'}, 1000);
		y.show();
	}

	$('.q-name-next').on('click', function(){
		$('.q-name').hide();
		$('.q-state').show();
	});

	$('.q-state-next').on('click', function(){
		$('.q-state').hide();
		$('.q-email').show();
	});

	$('.q-email-next').on('click', function(){
		$('.q-email').hide();
		$('.q-quest-1').show();

		// set variable answer to gets.chomp; if answer is option 2, show question 2 and submit, else show submit button
	});

});