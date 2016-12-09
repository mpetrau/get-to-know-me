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
  $( ".offer" ).hover(
    function() {
      $(this).find(".offer-actions" ).removeClass( "hidden" );
    }, function() {
      $(this).find(".offer-actions" ).addClass( "hidden" );
    }
    );
  $( ".card-content" ).on('click', function() {
    console.log(this)
    $(this).find(".edit" ).toggleClass( "hidden" );
  }
  );
});

