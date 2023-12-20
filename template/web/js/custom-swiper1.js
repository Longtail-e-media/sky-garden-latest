 var swiper = new Swiper('.swiper-container', {
      direction: 'horizontal',
      autoClose: true,
      speed: 2500,
      autoplay: {
        delay:5000,
      },
      zoom: true,
      grabCursor:true,
      loop:true,
      slidesPerView: 'auto',
      // pagination: {
      //   el: '.swiper-pagination',
      //   clickable: true,
      // },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });