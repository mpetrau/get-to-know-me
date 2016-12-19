document.addEventListener("turbolinks:load", function() {
// 1. Added splicenners for actions
  $('.parallax').parallax();
// 2. Adding card-menu on a card hover
  $( ".card" ).hover(
    function() {
      $(this).find(".offer-actions" ).first().removeClass( "hidden" );
    }, function() {
      $(this).find(".offer-actions" ).first().addClass( "hidden" );
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
  $(".card .offer-actions #save").on("ajax:success", function(e, data, status, xhr){
    $(this).closest('.card').find('#save').children().toggleClass('selected')
    if (data["saved?"] == true){
      Materialize.toast("Scout added it to favs", 4000, "my-toast");
    } else {
      Materialize.toast("Removed from favorites", 4000, "my-toast");
    }
  });

  $(".card .feedback #liked").on("ajax:success", function(e, data, status, xhr){
    $(this).children().toggleClass('selected')
    if (data["liked?"] == true){
      Materialize.toast("Thanks for feedback - glad you liked!", 4000, "my-toast");
      $(this).closest('.card').find('#bought').children().removeClass('selected');
      $(this).closest('.card').find('#disliked').children().removeClass('selected');
    } else {
      Materialize.toast("Removed from favorites", 4000, "my-toast");
    }
  });

  $(".card .feedback #disliked").on("ajax:success", function(e, data, status, xhr){
    $(this).children().toggleClass('selected')
    if (data["disliked?"] == true){
      Materialize.toast("The deal will be removed. We'll do better next time!", 4000, "my-toast");
      $(this).closest('.card').find('#bought').children().removeClass('selected');
      $(this).closest('.card').find('#liked').children().removeClass('selected');
    } else {
      Materialize.toast("Changed your mind? Good to hear it.", 4000, "my-toast");
    }
  });

  $(".card .feedback #bought").on("ajax:success", function(e, data, status, xhr){
    $(this).children().toggleClass('selected')
    if (data["bought?"] == true){
      Materialize.toast("Congrats on your new purchase!", 4000, "my-toast");
      $(this).closest('.card').find('#liked').children().removeClass('selected');
      $(this).closest('.card').find('#disliked').children().removeClass('selected');
    } else {
      Materialize.toast("Didn't buy it? Let me know what you thought", 4000, "my-toast");
    }
  });

        //reload all cars but only on favourites view

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

    // 6.1 on loading a page, inspect the Liked of all cards, and add related class
  var likes = $(".card .offer-actions #save");
  likes.each(function(){
      //$(this).closest(".btn").append("I'm active")
    if ($(this).attr('href').slice(-4) == "true"){
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


  // 9 On remove function, eliminate the card and load the next card
  $(".card .offer-actions #remove").on("ajax:success", function(e, data, status, xhr){
      // still missing fallback scenarios and errors
    Materialize.toast("It's gone. Next time Scout will know better", 4000, "my-toast");
    $(this).closest('.col-xs-12.col-sm-6.col-md-4').remove();
    if ($('.card').length == 5) {
      $('#offers').append(next_card);
      prepareNextCard(available_card_count);
      if ($('.card').length < 6 && $('#last_card').length == 0) {
        loadLimitedCard();
      };
    };
  });


  limitOffersOnShow();

});

var next_card;
var loaded_body;

//next_card.appendTo('div');

function limitOffersOnShow() {
  // var eligible_cards = $('.card').where(data != 'removed')
  var eligible_cards = $('.card');
  loaded_body = $('#offers').clone();
  if (eligible_cards.length > 6) {
    for (var i = 9; i > 5; i -= 1) {
      next_card = $($('.card')[(i)]).parent().detach();
    }
  } else {
  loadLimitedCard();
  }
}

function loadLimitedCard() {
  if ($("#for_signup").length == 0) {
  var limited_card_template = '<div class="col-xs-12 col-sm-6 col-md-4"><div class="card small notification" id="last_card"><div class="card-content dark-card"><span class="card-title"> No more matched deals for now. Check-in a bit later for new deals! </span></div></div></div>';
  $('#offers').append(limited_card_template);
  };
}

var available_card_count = 7;
function prepareNextCard(i) {
  // var available_card_count = loaded_body.find('.card').length;
  console.log(i);
  next_card = loaded_body.children().eq(i);
  console.log(next_card.find('.card-title'));
  available_card_count +=1;
}




