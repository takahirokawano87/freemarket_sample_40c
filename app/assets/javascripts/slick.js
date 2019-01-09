$(document).on('turbolinks:load', function(){
  $('.slick').slick({
    autoplay: true,
    autoplaySpeed: 6000,
    dots: true,
    arrows:true,
    prevArrow:'<div class="prev"><img class="glyphicon-chevron-left" src="https://www.mercari.com/jp/assets/img/common/jp/top/carousel-prev.png"></div>',
    nextArrow:'<div class="next"><img class="glyphicon-chevron-right" src="https://www.mercari.com/jp/assets/img/common/jp/top/carousel-next.png"></div>'
  });
  $('.slick-dots').children().on( 'mouseover',function() {
    $(this).click();
  });
});

