$(document).ready(function(){
  var seller_id = $('.seller-id').val();
  var btn = ('.item-buy-btn');
  if ($(seller_id)){
    $(btn).addClass('sell');
  }else{
    $(btn).text('売り切れました');
    $(btn).addClass('disabled').removeClass('sell').on('click',function(){
      return false;
    });
  };
});
