$(document).ready(function(){
  $('.rank').on('change', function(e){
    debugger
    var id = $('#rank option:selected').attr('value')
    var url = '/pitches/' + id + '/setrank'
    $.ajax({
      method: 'post',
      url: url,
      data: {rank: $('#rank option:selected').text()}
    })
      .done(function(respones){
      })
    // $('#select_tag_id option:selected').text()
  })
})
