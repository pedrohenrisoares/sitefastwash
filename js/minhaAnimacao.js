$(document).ready(function(){
  $('.item-menu').click(function()
    {
      $('.item-menu').removeClass('ativo');
      $(this).addClass('ativo');
    });
});

/* MENU MOBILE */
document.querySelector(".abrirMenu").onclick = function(){
  document.documentElement.classList.add("menuAtivo");
}
document.querySelector(".fecharMenu").onclick = function(){
  document.documentElement.classList.remove("menuAtivo");
}