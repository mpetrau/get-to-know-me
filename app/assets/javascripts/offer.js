$(document).ready(function(){
// 1. Functionality to remove cards upon clicking dislike
  $(".remove").on("click",function(e){
    $.ajax({
      url: "",
      context: document.body,
      success: function(s,x){
        $(this).html(s);
      }
    });
  });
// 2. Adding card-menu on a card hover
  $( ".card" ).hover(
    function() {
      $(this).find(".offer-actions" ).removeClass( "hidden" );
    }, function() {
      $(this).find(".offer-actions" ).addClass( "hidden" );
    });

// 3. On a card image, go to the deal website and flip Feedback view
  $( ".card-image" ).on('click', function() {
    if ($(this).next('.feedback.hidden').length){
      $(this).next(".feedback" ).removeClass( "hidden" );
       var url = $(this).next('.card-link').find("a").attr("href");
        window.open(url, '_blank');
        // created the effect of muted background for a picture
        $(this).addClass( "subdue" );
        // hide card menu for a card which shows Feedback form
        $(this).next(".feedback").next(".offer-actions" ).hide();
         return false;
    }
    else
      $(this).next(".feedback").addClass( "hidden" );
  });

// 4. To enable card 'flip' from multiple areas
    $(document).on('click.card', '.card', function (e) {
      if ($(this).find('> .card-reveal').length) {
        if ($(e.target).is($('.card-reveal .deactivator'))|| $(e.target).is($('.card-reveal.deactivator'))) {
          // Make Reveal animate down and display front side again
          $(this).find('.card-reveal').velocity(
            {translateY: 0}, {
              duration: 225,
              queue: false,
              easing: 'easeInOutQuad',
              complete: function() { $(this).css({ display: 'none'}); }
            }
          );
        }
      }
    });
});
// If .edit is hiden then open link in new tab and remove hidden.
// if .edit is not hidden then add class hiden

// 5. auto-removing the alert flashes
$(".alert").alert();
window.setTimeout(function() {
    $(".alert").fadeTo(500, 0).slideUp(500, function(){
        $(this).remove(); 
    });
}, 5000);