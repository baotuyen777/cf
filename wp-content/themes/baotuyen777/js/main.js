jQuery('.maps').click(function () {
    jQuery('.maps iframe').css("pointer-events", "auto");
});

jQuery( ".maps" ).mouseleave(function() {
  jQuery('.maps iframe').css("pointer-events", "none"); 
});