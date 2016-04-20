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
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

$(window).scroll(function() {
    var y_scroll_pos = window.pageYOffset;
    var scroll_pos_test = 750;

    if(y_scroll_pos > scroll_pos_test) {
	   $(".home-top-btn").css("visibility","visible");
    }
	else
	{
		$(".home-top-btn").css("visibility","hidden");
	}
});


// $('#flag').is(':checked')
// 
//
// if ($('.form-group').is(':visible')) {
//   var box
// }
