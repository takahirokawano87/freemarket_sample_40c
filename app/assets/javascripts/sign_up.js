$(document).on('turbolinks:load', function() {
  $('.step2').hide();

  var ResourceErrors = $('.errors').val();
  if (ResourceErrors){
    $('.step1').hide();
    $('.step2').show();
  }

  $('.first-form').on('click',function(){
    event.preventDefault();
    $('.step1').hide();
    $('.step2').show();

  });
});
