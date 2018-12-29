$(document).on('turbolinks:load', function() {
  $('.step2').hide();

  $('.first-form').on('click',function(){
    event.preventDefault();
    $('.step1').hide();
    $('.step2').show();

  });
});
