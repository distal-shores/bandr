// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery.sidr
//= require jquery
//= require jquery_ujs
//= require soundcloud-widget.min.js
//= require turbolinks
//= require_tree .

$(function () {
  $('.sidebar-btn').on('click', function() {
    $(this).closest('#sidebar-bg').toggleClass('sidebar-bg-expand').toggleClass('sidebar-bg-collapse');

  });
  $('#sign-in-btn').on('click', function(e) {
    e.preventDefault();
    $('#sign-in').addClass('is-active');
  });

  $('.modal-close').on('click', function(e) {
    e.preventDefault();
    $(this).closest('.modal').removeClass('is-active');
  })

  $('#sign-up-btn').on('click', function(e) {
    e.preventDefault();
    $('#sign-up').addClass('is-active');
  });
});




// Click on the sidebar button and have it make a query to the database looking for pending invites to the user. If it finds one, it should send back the result. The result should show up inside of the sidebar, listing the persons name and showing an accept/decline button.

//