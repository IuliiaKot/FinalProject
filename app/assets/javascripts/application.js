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

  // $('.nav li a').click(function(e) {
  //
  //   $('.nav li').removeClass('active');
  //
  //   var $parent = $(this).parent();
  //   if (!$parent.hasClass('active')) {
  //       $parent.addClass('active');
  //   }
  //   e.preventDefault();
  // });

})

// var selector = ".nav li";
//
//   $(selector).click(function(){
//       $(selector).removeClass('active');
//       $(this).addClass('active');
//   });
