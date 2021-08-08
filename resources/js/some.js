$(document).ready(function($) {
  $(".row-page").click(function() {
      window.location = $(this).data("href");
  });
});