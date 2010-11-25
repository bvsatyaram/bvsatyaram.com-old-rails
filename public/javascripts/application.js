/////////////////
// Navigation Tab
/////////////////
$(function() {
  $( "ul#navbar li.unselected" ).hover(
    function() {
      $( this ).animate({
        backgroundColor: "#C3B36D"
      }, {
        queue:false,
        duration:500
      } );
      $(this).children().animate({
        color: "#2D2E2C"
      }, {
        queue:false,
        duration:500
      } );
      return false;
    },
    function() {
      $( this ).animate({
        backgroundColor: "#282000"
      }, {
        queue:false,
        duration:500
      } );
      $(this).children().animate({
        color: "#CED3C9"
      }, {
        queue:false,
        duration:500
      } );
      return false;
    });
})