// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {
        $("a#fancybox").fancybox({
	       openEffect	: 'elastic',
    	       closeEffect	: 'elastic'
	 });

        var slider = $('#content-slider').bxSlider({
                controls: false,
        });

        $('.go-why').click(function(){
                slider.goToSlide(1);
                return false;
        });

        $('.go-how').click(function(){
                slider.goToSlide(2);
                return false;
        });

        $('.go-what').click(function(){
                slider.goToSlide(3);
                return false;
        });
});

$(window).load(function() {
    $('#slideshow').nivoSlider({
        effect: 'fade', // Specify sets like: 'fold,fade,sliceDown'
        slices: 15, // For slice animations
        boxCols: 8, // For box animations
        boxRows: 4, // For box animations
        animSpeed: 500, // Slide transition speed
        pauseTime: 6000, // How long each slide will show
        startSlide: 16, // Set starting Slide (0 index)
        directionNav: false, // Next & Prev navigation
        directionNavHide: true, // Only show on hover
        controlNav: false, // 1,2,3... navigation
        controlNavThumbs: false, // Use thumbnails for Control Nav
        controlNavThumbsFromRel: false, // Use image rel for thumbs
        controlNavThumbsSearch: '.jpg', // Replace this with...
        controlNavThumbsReplace: '_thumb.jpg', // ...this in thumb Image src
        keyboardNav: true, // Use left & right arrows
        pauseOnHover: false, // Stop animation while hovering
        manualAdvance: false, // Force manual transitions
        captionOpacity: 0.8, // Universal caption opacity
        prevText: 'Prev', // Prev directionNav text
        nextText: 'Next', // Next directionNav text
        beforeChange: function(){}, // Triggers before a slide transition
        afterChange: function(){}, // Triggers after a slide transition
        slideshowEnd: function(){}, // Triggers after all slides have been shown
        lastSlide: function(){}, // Triggers when last slide is shown
        afterLoad: function(){} // Triggers when slider has loaded
    });	
});
