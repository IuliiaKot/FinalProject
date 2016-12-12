$(document).ready(function() {
  $('.rank-project').on('change',function(e) {
    var id = $(e.target).parent().attr('value');
    var url = '/pitches/' + id + '/setrank';
    var element = $(e.target);
    $.ajax({
      method: 'post',
      url: url,
      data: { rank: $(e.target).find(':selected').text() }
    })
      .done(function(response) {
        if (response) {
          if (response.warning) {
            $('.message-warning').prepend(
            `<div class='alert alert-warning alert-dismissible fade in' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>${response.warning}</div>`);
            $(element).val('');
          }

          if (response.message) {
            $('.message-warning').prepend(
            `<div class='alert alert-success alert-dismissible fade' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>${response.message}</div>`);
          }

          $('.alert').delay(200).addClass('in').fadeOut(3500);
        };

      });
  });
});
