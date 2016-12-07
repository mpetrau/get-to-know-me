//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require flat-ui/dist/js/vendor/video
//= require flat-ui/dist/js/flat-ui
//= require_tree .



  $(document).ready(function() {
      $("#send-traits").click(function(e) {
        e.preventDefault();
        if (validateLength()) { $("#new_user_trait").submit(); }
    });

  function validateLength()
  {
      var selected = $("#new_user_trait input[type=checkbox]:checked").length;
      if (selected < 2 ) {
        alert("you have to select at least 2");
      } else {
       return true
      }
  }
});
