// 販売価格部分のアクション
$(function(){
  $('#selling-price').on('keyup', function(){
  var pri = String($('#selling-price').val());
    if ((pri >= 300) && (pri <= 999999)){
      $('.l-right-commission').text(Math.floor(pri * 0.1))
      var com = String($('.l-right-commission').text())
      $('.l-right-gain').text(parseInt(pri) - parseInt(com))
    } else{
      $('.l-right-commission').text('-')
      $('.l-right-gain').text('-')
    }
  });
});


// ドロップダウンリストのアクション
// 大categoryが選ばれた時のみ小category表示
// カテゴリ
$(function(){
  $('#item_first_category_id').change(function(){
    var drop1listVal = $('#item_first_category_id option:selected').attr("value");
    if (drop1listVal == ""){
      $('.select-wrap[name="drop2"]').hide();
      $('.select-wrap[name="drop3"]').hide();
    } else $('.select-wrap[name="drop2"]').show();
  });
});

$(function(){
  $('#item_second_category_id').change(function(){
    var drop2listVal = $('#item_second_category_id option:selected').attr("value");
    if (drop2listVal == ""){
      $('.select-wrap[name="drop3"]').hide();
    } else $('.select-wrap[name="drop3"]').show();
  });
});

$(function(){
  $('#item_third_category_id').change(function(){
    var drop3listVal = $('#item_third_category_id option:selected').attr("value");
    if (drop3listVal == ""){
      $('.form-group[name="size"], .form-suggest-container[name="brand"]').hide();
    } else $('.form-group[name="size"], .form-suggest-container[name="brand"]').show();
  });
});
// 配送料負担
$(function(){
  $('select[name="d_fee_list"]').change(function(){
    var d_fee_listVal = $('select[name="d_fee_list"] option:selected').attr("value");
    if (d_fee_listVal == ""){
      $('.form-group[name="d_method"]').hide();
    } else $('.form-group[name="d_method"]').show();
  });
});

// 大categoryに紐づく小categoriの表示
// カテゴリ
$(function() {
  $('select[name="drop1list"]').change(function() {
    var drop1listVal = $('select[name="drop1list"] option:selected').attr("value");
    var count = $('select[name="drop2list"]').children().length;
    for (var i=0; i<count; i++) {
      var drop2option = $('select[name="drop2list"] option:eq(' + i + ')');
      if(drop2option.attr("class") === drop1listVal) {
        drop2option.show();
      } else drop2option.hide();
    };
  });
});

$(function() {
  $('select[name="drop2list"]').change(function() {
    var drop2listVal = $('select[name="drop2list"] option:selected').attr("value");
    var count = $('select[name="drop3list"]').children().length;
    for (var i=0; i<count; i++) {
      var drop3option = $('select[name="drop3list"] option:eq(' + i + ')');
      if(drop3option.attr("class") === drop2listVal) {
        drop3option.show();
      } else drop3option.hide();
    };
  });
});

$(function() {
  $('select[name="drop3list"]').change(function() {
    var drop3listVal = $('select[name="drop3list"] option:selected').attr("value");
    var count = $('select[name="drop3list"]').children().length;
    for (var i=0; i<count; i++) {
      var sizeoption = $('select[name="sizelist"] option:eq(' + i + ')');
      if(sizeoption.attr("class") === drop3listVal) {
        sizeoption.show();
      } else sizeoption.hide();
    };
  });
});
// 配送料負担
$(function() {
  $('select[name="d_fee_list"]').change(function() {
    var d_fee_listVal = $('select[name="d_fee_list"] option:selected').attr("value");
    var count = $('select[name="d_method_list"]').children().length;
    for (var i=0; i<count; i++) {
      var d_method_listoption = $('select[name="d_method_list"] option:eq(' + i + ')');
      if(d_method_listoption.attr("class") === d_fee_listVal) {
        d_method_listoption.show();
      } else d_method_listoption.hide();
    };
  });
});

$(function() {
  $('#item_name').change(function() {
    var d_fee_listVal = $('#item_name" option:selected').attr("value");
    var count = $('#item_price]').children().length;
    for (var i=0; i<count; i++) {
      var d_method_listoption = $('#item_price');
      if(d_method_listoption.attr("value") === d_fee_listVal) {
        $('#item_price').show();
      } else $('#item_price').hide();
    };
  });
});
