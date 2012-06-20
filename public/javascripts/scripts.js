
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








	
		                                        
/*
=================================================================
SLIDER
=================================================================
*/
	
	function starScrolling(){
		$("div#makeMeScrollable").smoothDivScroll({ 
			autoScroll: "onstart" , 
			autoScrollDirection: "backandforth", 
			autoScrollStep: 1, 
			autoScrollInterval: 15,	
			startAtElementId: "startAtMe",
			visibleHotSpots: "always"
		});
	};

	// centers the scroll on resize
	
	function centerScroll(){
		var h = $(window).height()/2 - $('#scroll-holder').height()/2;
		$('#scroll-holder').css({
			top: function(index, value){ return h }
		});
	}

	
	//##########################################
	// On load page
	//##########################################

	$(window).load(function(){
		// show scroller
		$('#scroll-holder').fadeIn();
	
		starScrolling();
		
		// Center and resize after all page is loaded
		centerScroll();
	
		
				
	});
	



/*
<%= stylesheet_link_tag  '/javascripts/libs/SmoothDivScroll/css/smoothDivScroll.css' %>  ---- dependiente
<%= javascript_include_tag '/javascripts/libs/fancybox/lib/jquery.mousewheel-3.0.6.pack.js', 
'/javascripts/libs/fancybox/jquery.fancybox.js',    --- dependiente
'/javascripts/libs/fancybox/helpers/jquery.fancybox-buttons.js?v=2.0.4', 
'/javascripts/libs/fancybox/helpers/jquery.fancybox-thumbs.js?v=2.0.4', 
'/javascripts/libs/SmoothDivScroll/js/jquery.smoothDivScroll-1.1.js'  -- dependiente







*/





}) // END DOCUMENT READY



