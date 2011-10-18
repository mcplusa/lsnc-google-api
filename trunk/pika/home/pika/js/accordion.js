jQuery(document).ready(function(){
	$('.accordion').click(function() {
		$(this).next().toggle('slow');
		return false;
	}).next().hide();
});