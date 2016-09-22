// // # Place all the behaviors and hooks related to the matching controller here.
// // # All this logic will automatically be available in application.js.
// // # You can use CoffeeScript in this file: http://coffeescript.org/
//
$(document).ready(function(){
  // debugger
  $('.choose-idea').click('on',function(e){
    var url = $(e.target).parent().find('input').attr('value');
    debugger
    $.ajax({
      url:url,
      method: 'post'
    })
      .done(function(response){
        debugger
        if (response.count > 3) {
          var inputs = $('.choose-idea')
          for(var i = 0; i < inputs.length; i++){
              $(inputs[i]).attr('disabled', true)
          }
        }
      })
  })
})
