const btnMobile = document.getElementById('btn-mobile');

function toggleMenu(event) {
    if (event.type === 'touchstart'){event.preventDefault()};
    const nav = document.getElementById('nav');
    nav.classList.toggle('active')
    const active = nav.classList.contains('active');
    event.currentTarget.setAttribute('aria-expanded', active);
    if (active) {
        event.currentTarget.setAttribute('aria-label', 'Fechar Menu')
    } else {
        event.currentTarget.setAttribute('aria-label', 'Abrir Menu')
    }
    if (active) {
        document.getElementById('html').style.overflow="hidden";
    } else {
        document.getElementById('html').style.overflow="auto";
    }

}

btnMobile.addEventListener('click', toggleMenu);
btnMobile.addEventListener('touchstart', toggleMenu);


$(document).ready(function(){
    $('.banner').slick({
        draggable: true,
        autoplay: true,
        autoplaySpeed: 7000,
        arrows: false,
        dots: true,
        fade: true,
        speed: 500,
        infinite: true,
        cssEase: 'ease-in-out',
        touchThreshold: 100,
      });


});