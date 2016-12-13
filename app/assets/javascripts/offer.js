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
$( ".card-image, .btn-2see-deal" ).on('click', function() {
  // on either selector, reset the starting traversing element to "card-image"
  if ($(this).hasClass("btn-2see-deal")) {
    var card_image = $(this).closest(".card-reveal").siblings(".card-image");
  }
  else {
    var card_image = $(this);
  };
  // start traversal and execute function
  if ($(card_image).next('.feedback.hidden').length){
    $(card_image).next(".feedback" ).removeClass( "hidden" );
      // open URL from a card
      var url = $(card_image).siblings(".card-link").text();
      window.open(url, '_blank');
      // created the effect of muted background for a picture
      $(card_image).addClass( "subdue" );
      // hide card menu for a card which shows Feedback form
      $(card_image).next(".feedback").next(".offer-actions" ).hide();
      // hide the card reverse, if the routing action was from btn-2see-deal
      $(card_image).siblings(".card-reveal").hide();
      // disable card reverse side for a card which shows Feedback form
      $(card_image).siblings(".card-content" ).children().addBack().removeClass('activator');
      return false;
    }
      else
        $(card_image).next(".feedback").addClass( "hidden" );
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
