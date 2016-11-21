$(document).ready(function(){
  $('.rank-project').on('change',function(e){
    console.log('1');
    // var id = $('.rank-project option:selected').attr('value')
    // var id = $(e.target).find(':selected').attr('value')
    var id = $(e.target).parent().attr('value');
    var url = '/pitches/' + id + '/setrank'
    $.ajax({
      method: 'post',
      url: url,
      data: {rank: $(e.target).find(':selected').text()}
    })
      .done(function(response){
        // debugger
        if (response) {
          if (response.message){
            alert(response.message)
          }
        }
      })
    // $('#select_tag_id option:selected').text()
  })

})
