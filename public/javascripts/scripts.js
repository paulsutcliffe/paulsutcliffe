
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


}) // END DOCUMENT READY

