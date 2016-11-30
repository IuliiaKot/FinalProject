$(document).ready(function(){
  $('.rank-project').on('change',function(e){
    var id = $(e.target).parent().attr('value');
    var url = '/pitches/' + id + '/setrank';
    $.ajax({
      method: 'post',
      url: url,
      data: {rank: $(e.target).find(':selected').text() }
    })
      .done(function(response){
        if (response) {
          if (response.message) {
            $('.container').prepend(
            `<div class='alert alert-warning alert-dismissible fade in' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>${response.message}</div>`);
          }
        }
      });
  });
});
