jQuery(document).ready(function($) {
  $('#slide-left').flexslider({
    animation: "slide",
    controlNav: "thumbnails",
    start: function(slider) {
      $('ol.flex-control-thumbs li img.flex-active').parent('li').addClass('active');
    }
    });
});