// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){
  // console.log($('#choose-idea'))
  $('.choose-idea').click('on', function(e){
    e.preventDefault();
    debugger
    var url = $(e.target).parent().find('input').attr('value');
    $.ajax({
      url:url,
      method: 'post'
    })
      .done(function(response){
        debugger
      })
  })
})
