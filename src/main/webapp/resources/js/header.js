


$(".sign").mouseover(function() {
	$(this).addClass("active");
});

$(".sign").mouseout(function() {
	$(this).removeClass("active");
});

$(".login").mouseover(function() {
	$(this).addClass("active");
});

$(".login").mouseout(function() {
	$(this).removeClass("active");
});




$(".bar").click(function() {
	bar=$(this);
	$(".bar").removeClass("underbar");
	$(this).addClass("underbar");
});

$(".bar").mouseover(function() {
	
	$(this).addClass("underbar");
	
});

$(".bar").mouseout(function() {
	$(".bar").removeClass("underbar");
	bar.addClass("underbar");
	
});




		
	
