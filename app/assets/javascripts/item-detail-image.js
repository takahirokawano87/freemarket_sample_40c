$(document).ready(function(){
  $('.item-image2').on('mouseover',function(){
    $('.active-image').children().animate({
      marginLeft: "-300px"
    },400);
  });
  $('.item-image3').on('mouseover',function(){
    $('.active-image').children().animate({
      marginLeft: "-600px"
    })
  });
  $('.item-image4').on('mouseover',function(){
    $('.active-image').children().animate({
      marginLeft: "-900px"
    })
  });
  $('.item-image1').on('mouseover',function(){
    $('.active-image').children().animate({
      marginLeft: "0px"
    })
  });
});
