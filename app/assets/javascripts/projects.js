$(document).ready(function() {
        
        var slider = $('#content-slider').bxSlider({
                controls: false
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