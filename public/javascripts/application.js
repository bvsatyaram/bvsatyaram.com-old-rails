///////////////////
// Navigation Tab
/////////////////
$(document).ready(function(){
  $( "ul#topnav li a.unselected" ).hover(
    function() {
      $(this).stop().animate({
        backgroundColor: "#505050"
      }, {
        queue:false,
        duration:300
      });
    },
    function() {
      $(this).stop().animate({
        backgroundColor: "#2E2E2E"
      }, {
        queue:false,
        duration:300
      });
    });
});


///////////////////
// Welcome Actions
///////////////////
$(document).ready(function(){
  $('#welcome_actions .action').hover(function(){
    $(".caption", this).stop().animate({
      top:'0px'
    },{
      queue:false,
      duration:300
    });
  }, function() {
    $(".caption", this).stop().animate({
      top:'-40px'
    },{
      queue:false,
      duration:300
    });
  });
});


///////////////////
// Tablesorter
///////////////////
$(document).ready(function() {
  $("#users").tablesorter();
});

///////////////////
// Downloads count loader
///////////////////
$(document).ready(function() {
  $('#validate_email_downloads_count').load('projects/downloads_count?title=validate_email');
  $('#quick_scrapper_downloads_count').load('projects/downloads_count?title=quick_scrapper');
  $('#truncateHTML_downloads_count').load('projects/downloads_count?title=truncateHTML');
});

///////////////////
// Code Highlighting
///////////////////
$(document).ready(function() {
  $.beautyOfCode.init();
});

///////////////////
// Lazy Styler
///////////////////
$(document).ready(function() {
  $('.lazyStyle').lazyStyler();
});