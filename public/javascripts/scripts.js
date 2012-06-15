
$(document).ready(function() {

/*
=================================================================
INTRODUCTION
=================================================================
*/

$('header, #introduction').bind({
  mouseover : function(){
	$('#introduction').css('display', 'block');
	$('#introduction').stop().animate({top: '24px'}, 'slow');
  },
  mouseout : function() {
	$('#introduction').stop().animate({top: '-100%'}, 'slow');
  }		
})

$('header .social li#rss a').text('');
$('.social li#rss a').text('');


}) // END DOCUMENT READY

