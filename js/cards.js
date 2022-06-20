var swiper = new Swiper(".mySwiper", {
    loop: true,
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },

    breakpoints: {
        0: {
            slidesPerView: 1,
            spaceBetween: 20,
        },
        680: {
          slidesPerView: 2,
          spaceBetween: 40,
        },
        920: {
          slidesPerView: 3,
          spaceBetween: 40,
        },
        1240: {
          slidesPerView: 3,
          spaceBetween: 0,
        }
    },
  });
