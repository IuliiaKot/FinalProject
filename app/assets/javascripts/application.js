// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs

//= require_tree .

// require interact/interact

$(document).ready(function(){
  $('.rank').click('on', function(e){
    debugger
    var url = $(e.target).parent().find('input').attr('value');
    $.ajax({
      url:url,
      method: 'post'
    })
      .done(function(response){
        debugger
      })
  })


  let left1 = document.getElementById('left1');
  let left2 = document.getElementById('left2');
  let left3 = document.getElementById('left3');
  let left4 = document.getElementById('left4');
  let allstudents = document.getElementById('allstudents');
  // let test2 = document.getElementById('test2');

  let pitch1 = document.getElementById('pitch1');
  let pitch2 = document.getElementById('pitch2');
  let pitch3 = document.getElementById('pitch3');
  let pitch4 = document.getElementById('pitch4');

   dragula([pitch1, pitch2, pitch3, pitch4, allstudents]);
})
