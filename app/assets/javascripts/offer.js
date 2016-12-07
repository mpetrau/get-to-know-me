$( ".offer" ).hover(
  function() {
    $(this).find(".offer-actions" ).removeClass( "hidden" );
  }, function() {
    $(this).find(".offer-actions" ).addClass( "hidden" );
  }
);
