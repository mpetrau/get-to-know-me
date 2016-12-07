$( ".offer" ).hover(
  function() {
    $(this).find(".offer-actions" ).removeClass( "hidden" );
  }, function() {
    $(this).find(".offer-actions" ).addClass( "hidden" );
  }
);

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
});
