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
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .



$(document).ready(function(){
  $('.rank').click('on', function(e){
    var url = $(e.target).parent().find('input').attr('value');
    $.ajax({
      url:url,
      method: 'post'
    })
      .done(function(response){

      });
  });
  $('.popover-dismiss').popover({
    trigger: 'focus'
  });

  let box1 = document.getElementById('team1');
  let box2 = document.getElementById('team2');
  let box3 = document.getElementById('team3');
  let box4 = document.getElementById('team4');
  let box5 = document.getElementById('team5');
  let box6 = document.getElementById('team6');
  let allstudents = document.getElementsByClassName('student');
  dragula([box1, box2, box3, box4, box5, box6],  {
    revertOnSpill: true
  }).on('drop', function(el){
      console.log(el);
      debugger;
  });
});
