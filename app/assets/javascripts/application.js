// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require_tree .

$(document).ready(function() {
        $("a.fancybox").fancybox({
	        openEffect	: 'elastic',
    	        closeEffect	: 'elastic',
                helpers: {
                        title : {
                                type : 'float'
                        }
                }
	 });
   $("a.external-links").click(function() {
    link_host = this.href.split("/")[2];
    document_host = document.location.href.split("/")[2];

    if (link_host != document_host) {
      window.open(this.href);
      return false;
    }
  });
});
