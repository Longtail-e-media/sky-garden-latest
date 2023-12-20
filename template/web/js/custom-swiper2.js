var swiper = new Swiper('.swiper-container', {
    direction: 'horizontal',
    autoClose: true,
    speed: 1500,
    spaceBetween: 4,
    autoPlay:false,
    effect: 'fade', 
    fadeEffect: {           
        crossFade: false     // resolve the overlapping of the slides
    },
    autoplay: {
        delay:2000,
        disableOnInteraction: false,
    },
    grabCursor:true,
    loop:true,
    allowTouchMove: true,
    slidesPerView: 'auto',
    pagination: {
        el: '.swiper-pagination',
        clickable: true,
    },
     navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
});