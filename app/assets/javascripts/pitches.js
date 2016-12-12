// // # Place all the behaviors and hooks related to the matching controller here.
// // # All this logic will automatically be available in application.js.
// // # You can use CoffeeScript in this file: http://coffeescript.org/
//


// teacher choose projects for second round
$(document).ready(function() {
  $('.choose-idea').click('on', function(e) {
    var url = $(e.target).parent().find('input').attr('value');
    var element = $(e.target).parent().find('input');
    $.ajax({
      url: url,
      method: 'post'
    })
      .done(function(response) {
        if (response.warning) {
          $('.message-warning').prepend(
          `<div class='alert alert-warning alert-dismissible fade' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>${response.warning}</div>`);
          $(element).prop('checked', false);
        }

        if (response.message) {
          $('.current-votes').html(response.votes);
          $('.message-warning').prepend(
          `<div class='alert alert-success alert-dismissible fade' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>${response.message}</div>`);
        }

        $('.alert').delay(200).addClass('in').fadeOut(3500);
        if (response.delete) {
          $('.current-votes').html(response.votes);
          $(element).prop('checked', false);
        }
      });
  });
});
