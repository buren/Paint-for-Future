//
//= require jquery
//= require active_admin

$(document).ready(function() {

    
    $('.fancybox').fancybox({
        openEffect  : 'elastic',
        closeEffect : 'elastic',
        helpers: {
          title : {
            type : 'inside'
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

  $(parent).trigger('initialize:frame');

  $('#post_publish_checkbox').click(function(){
      if ($('#post_publish').text() == "true")
          $('#post_publish').text('false');
      else
        $('#post_publish').text('true');
      
  });

});
