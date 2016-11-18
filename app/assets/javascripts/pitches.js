// // # Place all the behaviors and hooks related to the matching controller here.
// // # All this logic will automatically be available in application.js.
// // # You can use CoffeeScript in this file: http://coffeescript.org/
//


// studetn voting in firts round
$(document).ready(function(){
  //
  $('.choose-idea').click('on',function(e){
    //
    console.log('I am here')
    var url = $(e.target).parent().find('input').attr('value');
    var element = $(e.target).parent().find('input');
    //
    $.ajax({
      url:url,
      method: 'post'
    })
      .done(function(response){

        if (response.message){
          alert(response.message)
          $(element).prop("checked", false);
        }
        if (response.delete) {
          $(element).prop("checked", false);
        }
        // if (response.count > 3) {
        //   var inputs = $('.choose-idea')
        //   for(var i = 0; i < inputs.length; i++){
        //       $(inputs[i]).attr('disabled', true)
        //   }
        // }
        console.log("hello")
      })
  })
})
