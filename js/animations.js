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
        prevArrow: '<span class="previous-arrow"><i class="fa-solid fa-arrow-left fa-xl"></i></span>', 
        nextArrow: '<span class="next-arrow"><i class="fa-solid fa-arrow-right fa-xl"></i></span>',
        autoplaySpeed: 2000,
        autoplay: true,
        
    });

    $('.galeria-home').slick({
        prevArrow: '<span id="galeria-previous-arrows"><i class="fa-solid fa-arrow-left fa-xl"></i></span>',
        nextArrow: '<span id="galeria-next-arrow"><i class="fa-solid fa-arrow-right fa-xl"></i></span>',
        autoplaySpeed: 2500,
        autoplay: true,
    });


});