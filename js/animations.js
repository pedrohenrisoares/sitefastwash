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
        autoplaySpeed: 100000,
        autoplay: true,
    });


// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn1 = document.getElementById("btnServico01");
var btn2 = document.getElementById("btnServico02");
var btn3 = document.getElementById("btnServico03");
var btn4 = document.getElementById("btnServico04");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn1.onclick = function() {
  modal.style.display = "block";
}
btn2.onclick = function() {
  modal.style.display = "block";
}
btn3.onclick = function() {
  modal.style.display = "block";
}
btn4.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
});