$(document).ready(function(){
  $('.item-image2').on('mouseover',function(){
    $('.active-image').children().animate({
      marginLeft: "-300px"
    });
  });
  $('.item-image2').on('mouseover mouseout',function(){
    $(this).toggleClass('add-opacity');
  });
  $('.item-image3').on('mouseover',function(){
    $('.active-image').children().animate({
      marginLeft: "-600px"
    });
  });
  $('.item-image3').on('mouseover mouseout',function(){
    $(this).toggleClass('add-opacity');
  });
  $('.item-image4').on('mouseover',function(){
    $('.active-image').children().animate({
      marginLeft: "-900px"
    });
  });
  $('.item-image4').on('mouseover mouseout',function(){
    $(this).toggleClass('add-opacity');
  });
  $('.item-image1').on('mouseover',function(){
    $('.active-image').children().animate({
      marginLeft: "0px"
    })
  });
  $('.item-image1').on('mouseover mouseout',function(){
    $(this).toggleClass('add-opacity');
  });
});
