$(document).ready(function(){
	$('a[rel*=external]').attr('target', '_blank');


	$('.toggle_comments').on('mousedown', function(){
		$(this).parent().find('.item.hide').removeClass('hide');
		$(this).remove();	
	});

	$('a.toggle_answer').on('mousedown', function(e){
		$(this).parent().parent().find('form').removeClass('hide');
	    return false;
	});

});

