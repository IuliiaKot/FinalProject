$(document).ready(function(){
  $('.rank-project').on('change',function(e){
    debugger
    // var id = $('.rank-project option:selected').attr('value')
    var id = $(e.target).find(':selected').attr('value')
    var url = '/pitches/' + id + '/setrank'
    $.ajax({
      method: 'post',
      url: url,
      data: {rank: $(e.target).find(':selected').text()}
    })
      .done(function(respones){
      })
    // $('#select_tag_id option:selected').text()
  })
})
