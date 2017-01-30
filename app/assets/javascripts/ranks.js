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


  $('.check-ranks').on('click', function(e) {
    debugger
    e.preventDefault();
    $.ajax({
      url: $(e.target).parent().attr('action'),
      method: 'post'
    }).done(function(response) {
      $modal = $('.modal');
      $modalBody = $('.modal .modal-body');
      $modalFooter = $('.modal .modal-footer');
      if (response['succesfull']) {
        $modalBody.html(`${response['message']}`);
        $modalFooter.html("<a href='/home' class='btn btn-secondary'>Next</a>");
        $modal.modal();
      } else {
        $modalBody.html(`${response['message']}`);
        $modalFooter.html("<a href='#' class='btn btn-secondary' data-dismiss='modal'>Close</a>");
        $modal.modal();
      }
    });
  });
});
