// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

$.fn.exist = function(){ return $(this).length > 0; }
function get_width() {
	return $(window).width();
}
$(function(){
	$('ul.nav li.nav-dropdown').hover(function() {
		if (get_width() >= 768) {
			$(this).addClass('open');
		}
	}, function() {
		if (get_width() >= 768) {
			$(this).removeClass('open');
		}
	});
	$('.have-sub .panel-title').append('<i class="fa fa-caret-right"></i>');
	$('.have-sub a').on('click',function(){
		$('.have-sub .panel-title a').not(this).next('i').removeClass('fa-caret-down');
		$('.have-sub .panel-title a').not(this).next('i').addClass('fa-caret-right');
		$(this).next('i').toggleClass('fa-caret-right fa-caret-down');
	});
	$('.product-loader').hide();
	$('.product-thumb-image a').on('click',function(){
		var thumb = $(this).attr('href');
		$('.product-loader').show();
		$('.product-main-image img').attr('src',thumb);
		$('.product-main-image img').load(function(){
			$('.product-loader').hide();
		})
		return false
	})
	if ($('.product-main-image').exist()) {
		$('.product-main-image').zoom();
	}

	if ($('.bxslider').exist()) {
	    $('.bxslider').bxSlider({
	        auto: true,
	        pause: 3000,
	        pager: false
	    });
	}
	if ($('.input-qty').exist()) {
		$('.input-qty').TouchSpin();
	}
    if ($(window).width() > 750) {
    	$('.link-p img').centerImage();
    }
    $(window).resize(function(){
    	var width = $(this).width();
    	if (width > 750) {
    		$('.link-p img').centerImage();
    		$('.link-p img').removeClass('def-img');
    	} else {
    		$('.link-p img').addClass('def-img');
    	}
    })
    $(window).scroll(function(){
		if ($(this).scrollTop()>70) {
			$('.back-top').fadeIn();
		} else {
			$('.back-top').fadeOut();
		}
	});
})