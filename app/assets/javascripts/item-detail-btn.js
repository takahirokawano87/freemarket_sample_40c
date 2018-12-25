$(document).ready(function(){
  var bayer_id = $('.buyer-id').val();
  var btn = ('.item-buy-btn');
  if (bayer_id){
    $(btn).text('売り切れました');
    $(btn).addClass('disabled').removeClass('sell').on('click',function(){
      return false;
    });
  }
});
