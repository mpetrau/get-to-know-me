document.addEventListener("turbolinks:load", function() {
// 1. Added splicenners for actions
$('.parallax').parallax();
// 2. Adding card-menu on a card hover
$( ".card" ).hover(
  function() {
    $(this).find(".offer-actions" ).removeClass( "hidden" );
  }, function() {
    $(this).find(".offer-actions" ).addClass( "hidden" );
  });

// 3. On a card deal button, go to the deal website and flip Feedback view
$( ".btn-2see-deal" ).on('click', function() {
  // on either selector, reset the starting traversing element to "card-image"
  var card_side = $(this).closest(".card-reveal");
  // start traversal and execute function
  if ($(card_side).siblings('.feedback.hidden').length){
    $(card_side).siblings(".feedback" ).removeClass( "hidden" );
      // open URL from a card
      var url = $(card_side).siblings(".card-link").text();
      window.open(url, '_blank');
      // created the effect of muted background for a picture
      $(card_side).siblings(".card-image").addClass( "subdue" );
      // hide card menu for a card which shows Feedback form
      $(card_side).siblings(".offer-actions" ).hide();
      // hide the card reverse, if the routing action was from btn-2see-deal
      $(card_side).hide();
      // disable card reverse side for a card which shows Feedback form
      $(card_side).siblings(".card-content" ).children().addBack().removeClass('activator');
      return false;
    }
    else
      $(card_side).siblings(".feedback").addClass( "hidden" );
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

    // 5. auto-removing the alert flashes
    $(".alert").alert();
    window.setTimeout(function() {
      $(".alert").fadeTo(500, 0).slideUp(500, function(){
        $(this).remove();
      });
    }, 5000);

    // // 6. on card menu functions, execute the steps without reloading the page.
    // $(".offer-actions [title='like'].ajax-like").on('click', function(e) {
        $(".card .offer-actions #like").on("ajax:success", function(e, data, status, xhr){
            console.log(data);
            console.log("--------------");
            console.log(xhr);
            $(this).children().toggleClass('selected');
            Materialize.toast("Got it", 4000, "my-toast");


    //     // on clicking the Like button, run Ajax to update the Offer
    //     $.ajax({
    //       url: $(this).attr('data'),
    //       type: "PUT",
    //       context: this,
    //       // set proper headers for JSON request and response
    //       beforeSend: function(xhr){
    //         xhr.setRequestHeader('Content-Type', 'application/json');
    //         xhr.setRequestHeader('Accept', 'application/json');
    //       },
    //       // on success function, toggle the class and run a toast
    //       success: function() {


    //       },
    //       // on a failure, raise an issue
    //       error: function(jqXHR) {
    //         console.log(jqXHR.responseText);
    //         Materialize.toast("Sign up to use", 4000, "my-toast");
    //       }
    //     });
    });

    // 6.1 on loading a page, inspect the Liked of all cards, and add related class
    var likes = $(".card .offer-actions #like");
    likes.each(function(){
        //$(this).closest(".btn").append("I'm active")
        if ($(this).attr('href').slice(-4) == "false"){
          $(this).children().addClass('selected');
        };
      });

    // 7. The behaviors on a traits page
    // 7.1 for all boxes that are selected upon page load, apply CSS

    var selected = $("#new_user_trait input[type=checkbox]:checked");
    selected.each(function(){
      $(this).closest(".btn").addClass('btn-active');
    });

// 7.2 upon clicking next, validate number of selections, and of less than 2, show alert message
$("#send-traits").click(function(e) {
  e.preventDefault();
  if (validateLength()) { $("#new_user_trait").submit(); }
});

function validateLength()
{
  var selected = $("#new_user_trait input[type=checkbox]:checked");
  if (selected.length < 2 ) {
    $('.alert-warning').removeClass('hidden');
  } else {
    return true
  }
}

// 7.3 on a Button click, toggle the class for active, and mark the form inputs correspondingly
$("#new_user_trait .btn").click(function(e){
  e.preventDefault();
  $(this).toggleClass("btn-active");
  var checkbox = $(this).find(':checkbox');
  checkbox.attr('checked', !checkbox.attr('checked'));
});


// 8 Adding Turbolinks to seemlessly refresh Cards pages on menu actions:
// Set request headers to JSON (call it with 'setRequestHeader')
$('.card .offer-actions').on('ajax:beforeSend', function(event, xhr, settings) {
    xhr.setRequestHeader('Content-Type', 'application/json');
    xhr.setRequestHeader('Accept', 'application/json');
});


    $(".card .offer-actions #remove").on("ajax:success", function(e, data, status, xhr){
      console.log(data);
      console.log("--------------");
      console.log(xhr);
      Materialize.toast("removed", 4000, "my-toast");
      Turbolinks.visit("/offers", { change: ['offers'] });
    });


    // .on "ajax:error", (e, xhr, status, error) ->
    // $("#new_article").append "<p>ERROR</p>"

  });
// document.on("click", "#link", function() {
//     event.preventDefault();
//     var xhr = event.data.xhr;
//     xhr.setRequestHeader('Content-Type', 'application/json');
//     xhr.setAcceptHeader('Accept', 'application/json');
//     Turbolinks.visit("/offers", { change: ['offers'] });

// });
//     $(this).parent('form').submit()

//     Turbolinks.visit("/offers", { change: ['offers'] });

//     //To go back to previous (for testing -> for changed mind button)
//     //window.history.back();

//     turbolinks:before-visit event.data.url
// If .edit is hiden then open link in new tab and remove hidden.
// if .edit is not hidden then add class hiden

