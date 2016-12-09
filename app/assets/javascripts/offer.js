$(document).ready(function(){
  $(".flip").on("click",function(e){
    e.preventDefault();
    var ele = $(this).closest(".card");
    ele.find(".offer").fadeOut(400,function(){
      $(this).closest(".card").find(".reverse").fadeIn();

    });
  });
  $(".flipfront").on("click",function(e){
    e.preventDefault();
    var ment = $(this).closest(".card");
    ment.find(".reverse").fadeOut(400,function(){
      $(this).closest(".card").find(".offer").fadeIn();
    });
  });
  $(".remove").on("click",function(e){
    $.ajax({
      url: "",
      context: document.body,
      success: function(s,x){
        $(this).html(s);
      }
    });
  });
  $( ".card" ).hover(
    function() {
      $(this).find(".offer-actions" ).removeClass( "hidden" );
    }, function() {
      $(this).find(".offer-actions" ).addClass( "hidden" );
    }
    );

  $( ".card-image" ).on('click', function() {
    if ($(this).next('.feedback.hidden').length){
      $(this).next(".feedback" ).removeClass( "hidden" );
       var url = $(this).next('.card-link').find("a").attr("href");
        window.open(url, '_blank');
        $(this).addClass( "subdue" );
         return false;
    }
    else $(this).next(".feedback").addClass( "hidden" );
  }
  );
});
// If .edit is hiden then open link in new tab and remove hidden.
// if .edit is not hidden then add class hiden
