/**
 *
 * Dependencies: jQuery
 *
 */

jQuery.noConflict(); 
 
(function($) {
	$(function() {
		$("#scroller").simplyScroll();
	});
})(jQuery);

jQuery(document).ready(function($) {

		/*
		* Fix dropdown menu bootstrap error 
		* ------------------------------------------------- */

		$('.nav').find('li:has(ul)').addClass('dropdown');
		
		$('li.dropdown').children('ul.sub-menu').addClass('dropdown-menu');
		
		/*
		* Fix dropdown menu bootstrap error ends
		* --------------------------------------------------------- */	

    $('.dropdown .sub-menu').addClass('dropdown-menu');	
});

jQuery(document).ready(function($) {
    $('.dropdown > a').append('<b class="caret"></b>').dropdown();
    $('.dropdown .sub-menu').addClass('dropdown-menu');
});


jQuery(document).ready(function($) {
  
	$("#tabnav").idTabs(); 	
 
});


jQuery(document).ready(function($){

    /* initiate the plugin *//*		
    $("div.holder").jPages({
      containerID  : "itemContainer",
      perPage      : 3,
      startPage    : 1,
      startRange   : 1,
	  links		   : "blank"
    });	*/	

  });
  
jQuery(document).ready(function($){

    /* initiate the plugin */
    $("div.holder2").jPages({
      containerID  : "itemContainer2",
      perPage      : 3,
      startPage    : 1,
      startRange   : 1,
	  links		   : "blank"
    });

  });
