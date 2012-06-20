
$(document).ready(function() {

/*
=================================================================
INTRODUCTION
=================================================================
*/

$('header, #introduction').bind({
  mouseover : function(){
	$('#introduction').css('display', 'block');
	$('#introduction').stop().animate({top: '24px'}, 'fast');
  },
  mouseout : function() {
	$('#introduction').stop().animate({top: '-350'}, 'fast');
  }
})

$('header .social li#rss a').text('');
$('.social li#rss a').text('');










/*
=================================================================
SLIDER
=================================================================
*/

	//##########################################
	// On load page
	//##########################################

	$(window).load(function(){
		$("#mySlider").royalSlider({
	        captionShowEffects:["moveleft", "move"],
	        directionNavAutoHide: true,
			slideshowEnabled: true,        
			slideshowDelay:5000,
			slideshowAutoStart:true,
			controlNavEnabled: false,
			hideArrowOnLastSlide:true,
	    });
	});


}) // END DOCUMENT READY



