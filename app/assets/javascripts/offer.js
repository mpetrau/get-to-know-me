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
  $( ".offer" ).on('click', function() {
    if ($(this).find('.edit.hidden').length){
      $(this).find(".edit" ).removeClass( "hidden" );
       var url = $(this).find('.card-link').find("a").attr("href");
        window.open(url, '_blank');
         return false;
    }
    else $(this).find(".edit").addClass( "hidden" );
  }
  );
});
// If .edit is hiden then open link in new tab and remove hidden.
// if .edit is not hidden then add class hiden
