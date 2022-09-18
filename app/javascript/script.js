/* global $*/

let title = "javascriptが使えました";
alert(title);

$(document).ready(function(){
  $('h1').on('click', function(){
    $(this).css('color', 'red');
  })
})