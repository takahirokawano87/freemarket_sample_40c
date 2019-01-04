$(document).ready(function(){
  var buyerIdGain = $('.buyer-id').val();
  var buyBtn = ('.item-buy-btn');
  if (buyerIdGain){
    $(buyBtn).text('売り切れました');
    $(buyBtn).addClass('disabled').removeClass('sell').on('click',function(){
      return false;
    });
  }
});

// 商品削除モーダルの挙動
$(function(){
  $(".btn-default.btn-gray").on("click", function(){
    $(".item_delete_modal").css('display', 'block');
    $("html").addClass('modal-open');
    $("body").addClass('modal-open');
  });
});

$(function(){
  $("#delete_modal_cancel").on("click", function(){
    $(".item_delete_modal").css('display', 'none');
    $("html").removeClass('modal-open');
    $("body").removeClass('modal-open');
  });
});
