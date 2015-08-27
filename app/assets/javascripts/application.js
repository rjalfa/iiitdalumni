// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require material
//= require turbolinks
//= require moment
//= require bootstrap-datetimepicker
//= require_tree .

function Main()
{
	$.material.init();
	$(".col-lg-10 > .field_with_errors").parent().parent().toggleClass("has-error");
	$('.datetimepicker').datetimepicker({
		format : 'DD-MM-YYYY HH:MM'
	});
}

$(document).on('page:load',Main);

$(document).ready(Main);