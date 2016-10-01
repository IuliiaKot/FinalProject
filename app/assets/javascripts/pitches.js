// // # Place all the behaviors and hooks related to the matching controller here.
// // # All this logic will automatically be available in application.js.
// // # You can use CoffeeScript in this file: http://coffeescript.org/
//
$(document).ready(function(){
  // debugger
  $('.choose-idea').click('on',function(e){
    // debugger
    var url = $(e.target).parent().find('input').attr('value');
    var element = $(e.target).parent().find('input');
    debugger
    $.ajax({
      url:url,
      method: 'post'
    })
      .done(function(response){
        if (response.message){
          alert(response.message)
          $(element).prop("checked", false);
        }
        // if (response.count > 3) {
        //   var inputs = $('.choose-idea')
        //   for(var i = 0; i < inputs.length; i++){
        //       $(inputs[i]).attr('disabled', true)
        //   }
        // }
      })
  })
})
